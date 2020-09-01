<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChangePass.aspx.cs" Inherits="Proyecto.ChangePass" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Administrador de Servicio</title>
  <meta content="" name="descriptison">
  <meta content="" name="keywords">

  <!-- Favicons -->


  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,400i,600,700|Raleway:300,400,400i,500,500i,700,800,900" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="1assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="1assets/vendor/icofont/icofont.min.css" rel="stylesheet">
  <link href="1assets/vendor/animate.css/animate.min.css" rel="stylesheet">
  <link href="1assets/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <link href="1assets/vendor/nivo-slider/css/nivo-slider.css" rel="stylesheet">
  <link href="1assets/vendor/owl.carousel/assets/owl.carousel.min.css" rel="stylesheet">
  <link href="1assets/vendor/venobox/venobox.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="1assets/css/style.css" rel="stylesheet">
</head>
<body>
    <form id="form1" runat="server">
       
        <header id="header" class="fixed-top">
    <div class="container d-flex">

      <div class="logo mr-auto">
        <h1 class="text-light"><a href="index.html"><asp:Literal ID="Lit1" runat="server"></asp:Literal></a></h1>
        <!-- Uncomment below if you prefer to use an image logo -->
        <!-- <a href="index.html"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->
      </div>

      <nav class="nav-menu d-none d-lg-block">
        <ul>
          <li class="active"><a href="#header">CAMBIO DE CONTRASEÑA</a></li>
      

        </ul>
      </nav><!-- .nav-menu -->

    </div>
  </header><!-- End Header -->

    <div id="home" class="slider-area">
    <div class="bend niceties preview-2">
      <div id="ensign-nivoslider" class="slides">
        <img src="1assets/img/slider/slider1.jpg" alt="" title="#slider-direction-1" />
       
      </div>

      <!-- direction 1 -->
      <div id="slider-direction-1" class="slider-direction slider-one">
        <div class="container">
          <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
              <div class="slider-content">
                
                <!-- layer 2 -->
                <div class="layer-1-2 wow slideInUp" data-wow-duration="2s" data-wow-delay=".1s">
                  <h1 class="title2">BIENVENIDO A HELLO WORLD</h1>
                </div>
                <!-- layer 3 -->
                
              </div>
            </div>
          </div>
        </div>
      </div>

      

     
    </div>
  </div><!-- End Slider -->

 <!-- ======= Suscribe Section ======= -->
    <div class="suscribe-area">
      <div class="container">
        <div class="row">
          <div class="col-lg-12 col-md-12 col-sm-12 col-xs=12">
            <div class="suscribe-text text-center">
              <h3>Porfavor, cambie su contraseña en su primer inicio</h3>
              <div class="form-group">
                     <asp:TextBox ID="TextBox1" runat="server" class="form-control" TextMode="Password"  placeholder="Ingrese Nueva Contraseña"></asp:TextBox>
                  </div>
                    <div class="form-group">
                     <asp:TextBox ID="TextBox2" runat="server" class="form-control" TextMode="Password"  placeholder="Confirmar Nueva Contraseña"></asp:TextBox>
                  </div>
                
               
                   <div class="text-center">
                <asp:Button ID="Button2" runat="server" Text="Cambiar" OnClick="Button2_Click" BorderStyle="Dotted" CssClass="alert-link" Height="47px" Width="182px" />
            </div>
            </div>
          </div>
        </div>
      </div>
    </div><!-- End Suscribe Section -->

  
  

  <!-- ======= Footer ======= -->
  <footer>
    <div class="footer-area">
      <div class="container">
        <div class="row">
          <div class="col-md-4 col-sm-4 col-xs-12">
            <div class="footer-content">
              <div class="footer-head">
                <div class="footer-logo">
                  <h2>Administrador de Servicio</h2>
                </div>

                
              </div>
            </div>
          </div>
          <!-- end single footer -->
          
          <!-- end single footer -->
          
        </div>
      </div>
    </div>
    <div class="footer-area-bottom">
      <div class="container">
        <div class="row">
          <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="copyright text-center">
              <p>
                &copy; Copyright <strong>HELLO WORLD</strong>. All Rights Reserved
              </p>
            </div>
            <div class="credits">
              <!--
              All the links in the footer should remain intact.
              You can delete the links only if you purchased the pro version.
              Licensing information: https://bootstrapmade.com/license/
              Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/buy/?theme=eBusiness
            -->
             
            </div>
          </div>
        </div>
      </div>
    </div>
  </footer><!-- End  Footer -->

  <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>
  <div id="preloader"></div>

  <!-- Vendor JS Files -->
  <script src="1assets/vendor/jquery/jquery.min.js"></script>
  <script src="1assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="1assets/vendor/jquery.easing/jquery.easing.min.js"></script>
  <script src="1assets/vendor/php-email-form/validate.js"></script>
  <script src="1assets/vendor/appear/jquery.appear.js"></script>
  <script src="1assets/vendor/knob/jquery.knob.js"></script>
  <script src="1assets/vendor/parallax/parallax.js"></script>
  <script src="1assets/vendor/wow/wow.min.js"></script>
  <script src="1assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="1assets/vendor/nivo-slider/js/jquery.nivo.slider.js"></script>
  <script src="1assets/vendor/owl.carousel/owl.carousel.min.js"></script>
  <script src="1assets/vendor/venobox/venobox.min.js"></script>

  <!-- Template Main JS File -->
  <script src="1assets/js/main.js"></script>
    </form>
</body>
</html>
