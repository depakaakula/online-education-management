using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FaceReaderAPI.Data;
using FaceReaderAPI.Messages;
using System.Diagnostics;

public partial class Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsend_Click(object sender, EventArgs e)
    {
        Response.Redirect("University.aspx");
        
    }
    protected void Login_Click(object sender, EventArgs e)
    {

        string username = TxtUserID.Text;
        var proc1 = new ProcessStartInfo();
        string anyCommand;
        proc1.UseShellExecute = true;
        proc1.WorkingDirectory = @"C:\Windows\System32";
        proc1.FileName = @"C:\Windows\System32\cmd.exe";
        proc1.Verb = "runas";
        proc1.Arguments = "/c " + "python C:/Users/dza131/Desktop/face_classification-master/face_classification-master/src/back_video_emotion_color_demo.py";
        //proc1.WindowStyle = ProcessWindowStyle.Hidden;
        Process.Start(proc1);
        Response.Redirect("University.aspx");
    }
}