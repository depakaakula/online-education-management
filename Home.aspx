<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Facial Expression</title>
    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom fonts for this template -->
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'>
    <script type="text/javascript" src="//code.jquery.com/jquery-1.10.2.js"></script>
    <!-- Custom styles for this template -->
    <link href="css/agency.min.css" rel="stylesheet">
      <script type="text/javascript">
          $(function () {
              $("#btnShow").click(function () {
                  $('#demoModal').modal('show');
              });
          });
          $(function () {
              $("#Btngetin").click(function () {
                  alert("your camera will be on now");
                  document.getElementById("Login").click();
                 // $('#<%=Login.ClientID%>').click();
                  //alert("hiii2");
              })
          })

     </script>

  </head>

  <body id="page-top">
   <form id="form1" runat="server">
             <!-- Navigation -->
             <nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
                 <div class="container">
                     <a class="navbar-brand js-scroll-trigger" href="#page-top">Face Emotions</a>
                     <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                         Menu         
                         <i class="fa fa-bars"></i>
                     </button>
                     <div class="collapse navbar-collapse" id="navbarResponsive">
                         <ul class="navbar-nav text-uppercase ml-auto">
                             <li class="nav-item">
                                 <a class="nav-link js-scroll-trigger" href="#Register">Register</a>
                             </li>
                             <li class="nav-item">
                                 <a class="nav-link js-scroll-trigger" href="#about">About</a>
                             </li>
                             <li class="nav-item">
                                 <a class="nav-link js-scroll-trigger" href="#contact">Contact</a>
                             </li>
                         </ul>
                     </div>
                 </div>
             </nav>
             <!-- Header -->
             <header class="masthead">
                 <div class="container">
                     <div class="intro-text">
                         <div class="intro-lead-in">Welcome To Our World!</div>
                         <div class="intro-heading">Your Feelings Our Emotion's</div>
                         <a id="btnShow" class="btn btn-primary btn-sm text-uppercase js-scroll-trigger">Get Into world</a>
                          <asp:Button ID="Login" Text="login" runat="server" OnClick="Login_Click" style="display:none"/>
                     </div>
                 </div>
             </header>
             <!--Register-->
             <section id="Register">
                 <div class="container">
                     <div class="row">
                         <div class="col-lg-12 text-center">
                             <h2 class="section-heading text-uppercase">Registration</h2>
                             <h3 class="section-subheading text-muted">Please Register youer self to get in</h3>
                         </div>
                     </div>
                     <div class="row" style="padding-bottom: 3%">
                         <div class="col-md-6">
                             <div class="input-group">
                                 <span class="input-group-addon">Full Name</span>
                                 <asp:TextBox ID="TextBox1" runat="server" placeholder="First Name" CssClass="form-control" ClientIDMode="Static"></asp:TextBox>
                                 <asp:TextBox ID="TextBox2" runat="server" placeholder="Last Name" CssClass="form-control" ClientIDMode="Static"></asp:TextBox>
                             </div>
                         </div>
                     </div>
                     <div class="row">
                         <div class="col-md-6" style="padding-bottom: 3%">
                             <div class="input-group">
                                 <span class="input-group-addon">Email ID</span>
                                 <asp:TextBox ID="TextBox3" runat="server" placeholder="Email ID" CssClass="form-control" ClientIDMode="Static"></asp:TextBox>
                             </div>
                         </div>
                     </div>
                     <div class="row">
                         <div class="col-md-6" style="padding-bottom: 3%">
                             <div class="input-group">
                                 <span class="input-group-addon">Password</span>
                                 <asp:TextBox ID="TextBox4" runat="server" placeholder="Password" CssClass="form-control" ClientIDMode="Static"></asp:TextBox>
                             </div>
                         </div>
                     </div>
                     <div class="row">
                         <div class="col-md-6" style="padding-bottom: 3%">
                             <div class="input-group">
                                 <span class="input-group-addon">Confirm Password</span>
                                 <asp:TextBox ID="TextBox5" runat="server" placeholder="Confirm Password" CssClass="form-control" ClientIDMode="Static"></asp:TextBox>
                             </div>
                         </div>
                     </div>
                     <div class="row">
                         <div class="col-lg-6">
                             <div class="pull-right">
                                 <asp:Button ID="Btnsqlconnect" runat="server" Text="connect" CssClass="form-control" />                                 
                             </div>
                         </div>
                     </div>
                 </div>
             </section>
             <!-- About -->
             <section id="about">
                 <div class="container">
                     <div class="row">
                         <div class="col-lg-12 text-center">
                             <h2 class="section-heading text-uppercase">About</h2>
                             <h3 class="section-subheading text-muted">For your Feeling we will catapure your Emotion</h3>
                         </div>
                     </div>
                     <div class="row">
                         <div class="col-lg-12">
                             <ul class="timeline">
                                 <li>
                                     <div class="timeline-image">
                                         <img class="rounded-circle img-fluid" src="img/about/1.jpg" alt="">
                                     </div>
                                     <div class="timeline-panel">
                                         <div class="timeline-heading">
                                             <h4>2017</h4>
                                             <h4 class="subheading">Our Humble Beginnings</h4>
                                         </div>
                                         <div class="timeline-body">
                                             <p class="text-muted">In the above year we decided to capture you Feelings When you read our Documents in our world.</p>
                                         </div>
                                     </div>
                                 </li>
                                 <li class="timeline-inverted">
                                     <div class="timeline-image">
                                         <h4>Be Part
                   
                                             <br>
                                             Of Our
                   
                                             <br>
                                             Story!</h4>
                                     </div>
                                 </li>
                             </ul>
                         </div>
                     </div>
                 </div>
             </section>
             <!-- Contact -->
             <!-- Footer -->
             <footer>
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
             <div class="modal fade" id="demoModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                 <div class="modal-dialog">
                     <div class="modal-content">
                         <div class="modal-header">
                             <h4 class="modal-title" id="myModalLabel">Please Provide Details</h4>
                             <button type="button" class="close pull-left" data-dismiss="modal" aria-hidden="true">&times;</button>
                         </div>
                         <div class="modal-body">
                             <div class="row">
                                 <div class="col-md-12" style="padding-bottom: 5%">
                                     <div class="input-group">
                                         <div class="input-group">
                                             <span class="input-group-addon"><i class="fa fa-user"></i></span>
                                             <asp:TextBox ID="TxtUserID" runat="server" placeholder="User Name" CssClass="form-control" ClientIDMode="Static"></asp:TextBox>
                                         </div>
                                     </div>
                                 </div>
                                 <div class="col-md-12">
                                     <div class="input-group">
                                         <span class="input-group-addon"><i class="fa fa-lock"></i></span>
                                         <asp:TextBox ID="TxtPassword" runat="server" placeholder="Password" CssClass="form-control" ClientIDMode="Static"></asp:TextBox>
                                     </div>
                                 </div>
                             </div>
                         </div>
                         <div class="modal-footer">
                             <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                             <button id="Btngetin" type="button" class="btn btn-primary">GET IN</button>
                                                                                 
                         </div>
                     </div>
                 </div>
             </div>
             
             <!-- Bootstrap core JavaScript -->
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

