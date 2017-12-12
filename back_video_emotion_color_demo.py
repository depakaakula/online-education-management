from statistics import mode

import cv2
from keras.models import load_model
import numpy as np
import xlwt
import imutils
import datetime
now = datetime.datetime.now()
from utils.datasets import get_labels
from utils.inference import detect_faces
from utils.inference import draw_text
from utils.inference import draw_bounding_box
from utils.inference import apply_offsets
from utils.inference import load_detection_model
from utils.preprocessor import preprocess_input

# parameters for loading data and images
# parameters for loading data and images

detection_model_path = 'C:/Users/dza131/Desktop/face_classification-master/face_classification-master/src/trained_models/detection_models/haarcascade_frontalface_default.xml'
emotion_model_path = 'C:/Users/dza131/Desktop/face_classification-master/face_classification-master/src/trained_models/emotion_models/fer2013_mini_XCEPTION.110-0.65.hdf5'
gender_model_path = 'C:/Users/dza131/Desktop/face_classification-master/face_classification-master/src/trained_models/gender_models/simple_CNN.81-0.96.hdf5'


emotion_labels = get_labels('fer2013')
gender_labels = get_labels('imdb')

# hyper-parameters for bounding boxes shape
frame_window = 10
gender_offsets = (30, 60)
emotion_offsets = (20, 40)

# loading models
face_detection = load_detection_model(detection_model_path)
emotion_classifier = load_model(emotion_model_path, compile=False)
gender_classifier = load_model(gender_model_path, compile=False)

# getting input model shapes for inference
emotion_target_size = emotion_classifier.input_shape[1:3]
gender_target_size = gender_classifier.input_shape[1:3]

# starting lists for calculating modes
gender_window = []
emotion_window = []

# starting video streaming
#cv2.namedWindow('window_frame')
video_capture = cv2.VideoCapture(0)
file = None
fName = 'emotions.csv'
with open(fName, "w"):
    pass
while True:
    bgr_image = video_capture.read()[1]
    bgr_image = imutils.resize(bgr_image, width=450)
    gray_image = cv2.cvtColor(bgr_image, cv2.COLOR_BGR2GRAY)
    #clahe = cv2.createCLAHE(clipLimit=2.0, tileGridSize=(8, 8))
    #gray_image = clahe.apply(gray_image)
    rgb_image = cv2.cvtColor(bgr_image, cv2.COLOR_BGR2RGB)
    faces = detect_faces(face_detection, gray_image)

    for idx,face_coordinates in enumerate(faces):

        x1, x2, y1, y2 = apply_offsets(face_coordinates, gender_offsets)
        rgb_face = rgb_image[y1:y2, x1:x2]
        
        x1, x2, y1, y2 = apply_offsets(face_coordinates, emotion_offsets)
        gray_face = gray_image[y1:y2, x1:x2]
        try:
            rgb_face = cv2.resize(rgb_face, (gender_target_size))
            gray_face = cv2.resize(gray_face, (emotion_target_size))
        except:
            continue

        gray_face = preprocess_input(gray_face, True)
        gray_face = np.expand_dims(gray_face, 0)
        gray_face = np.expand_dims(gray_face, -1)
        emotion_prediction = emotion_classifier.predict(gray_face)
        emotion_probability = np.max(emotion_prediction)
        emotion_label_arg = np.argmax(emotion_prediction)
        emotion_text = emotion_labels[emotion_label_arg]
        emotion_window.append(emotion_text)

        rgb_face = np.expand_dims(rgb_face, 0)
        rgb_face = preprocess_input(rgb_face, False)
        gender_prediction = gender_classifier.predict(rgb_face)
        gender_label_arg = np.argmax(gender_prediction)
        gender_text = gender_labels[gender_label_arg]
        print ('face #id: '+datetime.datetime.now().strftime("%Y-%m-%d %H:%M:%S")+' gender: '+gender_text+' emotion: '+emotion_text)
        file = open(fName,'a')
        file.write('face #id: '+datetime.datetime.now().strftime("%Y-%m-%d %H:%M:%S")+', gender: '+gender_text+', emotion: '+emotion_text+'\n')
        workbook = xlwt.Workbook()
		
        
        '''
           
           rgb_face = np.expand_dims(rgb_face, 0)
           rgb_face = preprocess_input(rgb_face, False)
           gender_prediction = gender_classifier.predict(rgb_face)
           gender_label_arg = np.argmax(gender_prediction)
           gender_text = gender_labels[gender_label_arg]
           print 'face #id: '+str(idx)+' gender: '+gender_text+' emotion: '+emotion_text
           file = open(fName,'a')
           file.write('face #id: '+str(idx)+' gender: '+gender_text+' emotion: '+emotion_text+'\n')
        '''

        gender_window.append(gender_text)

        if len(emotion_window) > frame_window:
            emotion_window.pop(0)
            gender_window.pop(0)
        try:
            emotion_mode = mode(emotion_window)
            gender_mode = mode(gender_window)
        except:
            continue

        if emotion_text == 'angry':
            color = emotion_probability * np.asarray((255, 0, 0))
        elif emotion_text == 'sad':
            color = emotion_probability * np.asarray((0, 0, 255))
        elif emotion_text == 'happy':
            color = emotion_probability * np.asarray((255, 255, 0))
        elif emotion_text == 'surprise':
            color = emotion_probability * np.asarray((0, 255, 255))
        else:
            color = emotion_probability * np.asarray((0, 255, 0))


        if gender_text == gender_labels[0]:
            gcolor = (0, 0, 255)
        else:
            gcolor = (255, 0, 0)

        color = color.astype(int)
        color = color.tolist()

        draw_bounding_box(face_coordinates, rgb_image, color)
        draw_text(face_coordinates, rgb_image, gender_mode,
                gcolor, 0, -20, 1, 1)
        draw_text(face_coordinates, rgb_image, emotion_mode,
                 color, 0, -45, 1, 1)
    if file is not None:
        file.close() 
    bgr_image = cv2.cvtColor(rgb_image, cv2.COLOR_RGB2BGR)
    cv2.imshow('window_frame', bgr_image)
    if cv2.waitKey(1) & 0xFF == ord('q'):
       break
