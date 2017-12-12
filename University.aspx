<%@ Page Language="C#" AutoEventWireup="true" CodeFile="University.aspx.cs" Inherits="University" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>
    <title>Facial Expression</title>
    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
    <!-- Custom fonts for this template -->
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css"/>
    <link href='https://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'/>
    <link href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'/>
    <link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'/>
    <script type="text/javascript" src="//code.jquery.com/jquery-1.10.2.js"></script>
    //<script type ="text/javascript" src="js/PDFPop.js"></script>"
    <!-- Custom styles for this template -->
    <link href="css/agency.min.css" rel="stylesheet"/>
      <script type="text/javascript">
          $(function () {
              $('.collapse').on('shown.bs.collapse', function () {
                  $(this).parent().find(".fa-plus").removeClass("fa-plus").addClass("fa-minus");
              }).on('hidden.bs.collapse', function () {
                  $(this).parent().find(".fa-minus").removeClass("fa-minus").addClass("fa-plus");
              });
          })
</script>
      <script>
          $(function () {
              $('.view-pdf').on('click', function () {
                  alert("Hi");
                  var pdf_link = $(this).attr('href');
                  var iframe = '<div class="iframe-container"><iframe src="' + pdf_link + '"></iframe></div>'
                  //alert("Hi1");
                  $.createModal({
                      title: 'My Title',
                      message: iframe,
                      closeButton: true,
                      scrollable: false
                  });
                  return false;
              });
          })
      </script>
      <style type="text/css">
          .iframe-container {
              padding-bottom: 60%;
              padding-top: 30px;
              height: 0;
              overflow: hidden;
          }

              .iframe-container iframe,
              .iframe-container object,
              .iframe-container embed {
                  position: absolute;
                  top: 0;
                  left: 0;
                  width: 100%;
                  height: 100%;
              }
      </style>
  </head>
<body style="background-color:black">
    <form id="form1" runat="server">
        <nav class="navbar navbar-expand-lg navbar-dark" id="mainNav">
            <div class="container">
                <a class="navbar-brand js-scroll-trigger" href="#page-top">Face Emotions</a>
                <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    Menu         
                         <i class="fa fa-bars"></i>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav text-uppercase ml-auto">
                        <li class="nav-item">
                            <a class="nav-link js-scroll-trigger" href="Home.aspx">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link js-scroll-trigger" href="#about">Welcome !</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link js-scroll-trigger" href="#contact">Deepak</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <div class="row">
            <div class="col-lg-1"></div>
            <div class="col-lg-10" style="background-color: #f7f8f9; min-height: 600px; padding-left:5%;padding-top:3%">
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <h5 class="section-heading text-uppercase">University's List</h5>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <div class="row">
                    <div class="col-sd-12">
                        <div class="panel-group" id="accordion">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h6 class="panel-title">
                                        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#menuOne">
                                            <span class="fa fa-plus"></span>
                                            University One
                                        </a>
                                    </h6>
                                </div>
                                <div id="menuOne" class="">
                                    <div class="panel-body">
                                        <div style="padding-top: 2%;padding-left:5%">
                                             <asp:Button runat="server" ID="first" class="btn btn-primary view-pdf" Text="UNI-1/ASN Data Flow.pdf" OnClick="first_Click"/>  
                                             <a class="btn btn-primary view-pdf" href="UNI-1/ASN%20Data%20Flow.pdf">UNI-1/ASN Data Flow.pdf</a>
                                            <a class="btn btn-primary view-pdf" href="UNI-1/ASN%20Data%20Flow.pdf">UNI-1/ASN Data Flow.pdf</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h6 class="panel-title">
                                        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#menuTwo">
                                            <span class="fa fa-plus"></span>
                                            University Two
                                        </a>
                                    </h6>
                                </div>
                                <div id="menuTwo" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <div style="padding-top: 2%;padding-left:5%">
                                            <a class="btn btn-primary view-pdf" href="UNI-1/ASN%20Data%20Flow.pdf">UNI-1/ASN Data Flow.pdf</a>  
                                             <a class="btn btn-primary view-pdf" href="UNI-1/ASN%20Data%20Flow.pdf">UNI-1/ASN Data Flow.pdf</a>
                                            <a class="btn btn-primary view-pdf" href="UNI-1/ASN%20Data%20Flow.pdf">UNI-1/ASN Data Flow.pdf</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h6 class="panel-title">
                                        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#menuThree">
                                            <span class="fa fa-plus"></span>
                                            University Three
                                        </a>
                                    </h6>
                                </div>
                                <div id="menuThree" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <div style="padding-top: 2%;padding-left:5%">
                                            <a class="btn btn-primary view-pdf" href="UNI-1/ASN%20Data%20Flow.pdf">UNI-1/ASN Data Flow.pdf</a>  
                                             <a class="btn btn-primary view-pdf" href="UNI-1/ASN%20Data%20Flow.pdf">UNI-1/ASN Data Flow.pdf</a>
                                            <a class="btn btn-primary view-pdf" href="UNI-1/ASN%20Data%20Flow.pdf">UNI-1/ASN Data Flow.pdf</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-1"></div>
        </div>
        <footer style="background-color: white">
            <div class="container">
                <div class="row">
                    <div class="col-md-4">
                        <span class="copyright">Copyright &copy; Your Website 2017</span>
                    </div>
                    <div class="col-md-4">
                        <ul class="list-inline social-buttons">
                            <li class="list-inline-item">
                                <a href="#">
                                    <i class="fa fa-twitter"></i>
                                </a>
                            </li>
                            <li class="list-inline-item">
                                <a href="#">
                                    <i class="fa fa-facebook"></i>
                                </a>
                            </li>
                            <li class="list-inline-item">
                                <a href="#">
                                    <i class="fa fa-linkedin"></i>
                                </a>
                            </li>
                        </ul>
                    </div>
                    <div class="col-md-4">
                        <ul class="list-inline quicklinks">
                            <li class="list-inline-item">
                                <a href="#">Privacy Policy</a>
                            </li>
                            <li class="list-inline-item">
                                <a href="#">Terms of Use</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </footer>
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

        <!-- Plugin JavaScript -->
        <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

        <!-- Contact form JavaScript -->
        <script src="js/jqBootstrapValidation.js"></script>
        <script src="js/contact_me.js"></script>

        <!-- Custom scripts for this template -->
        <script src="js/agency.min.js"></script>
    </form>
</body>
</html>
