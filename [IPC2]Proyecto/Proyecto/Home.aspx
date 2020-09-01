<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Proyecto.Home" %>

<!DOCTYPE html>

<html lang="en">
<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>IPC2 Daniel Rodriguez</title>
  <meta content="" name="descriptison">
  <meta content="" name="keywords">


  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Montserrat:300,400,500,700" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <link href="assets/vendor/ionicons/css/ionicons.min.css" rel="stylesheet">
  <link href="assets/vendor/animate.css/animate.min.css" rel="stylesheet">
  <link href="assets/vendor/venobox/venobox.css" rel="stylesheet">
  <link href="assets/vendor/owl.carousel/assets/owl.carousel.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">
</head>
<body id="page-top" data-spy="scroll" data-target=".navbar-custom">
      <!-- ======= Header ======= -->
  <header id="header">
    <div class="container-fluid">

      <div id="logo" class="pull-left">
        <h1><a href="#intro" class="scrollto">Hello World</a></h1>
        <!-- Uncomment below if you prefer to use an image logo -->
        <!-- <a href="#intro"><img src="assets/img/logo.png" alt=""></a>-->
      </div>

      <nav id="nav-menu-container">
        <ul class="nav-menu">
          <li class="menu-active"><a href="#intro">Inicio</a></li>
          <li><a href="#about">Nosotros</a></li>
          <li><a href="#services">Servicios</a></li>
          <li><a href="#contact">Inicio de Sesion</a></li>
        </ul>
      </nav><!-- #nav-menu-container -->
    </div>
  </header><!-- End Header -->

  <!-- ======= Intro Section ======= -->
  <section id="intro">
    <div class="intro-container">
      <div id="introCarousel" class="carousel  slide carousel-fade" data-ride="carousel">

        <ol class="carousel-indicators"></ol>

        <div class="carousel-inner" role="listbox">

          <div class="carousel-item active">
            <div class="carousel-background"><img src="assets/img/intro-carousel/1.jpg" alt=""></div>
            <div class="carousel-container">
              <div class="carousel-content">
                <h2>Actualidad</h2>
                <p>En la actualidad, el crecimiento de las empresas se ve directamente afectado por el uso de nuevastecnologías y el mejor uso de éstas, aquellas que carecen de herramientas de software para susgestiones, suelen presentar dificultades en la realización de sus tareas tomando más tiempo delque deberían y en algunos casos la pérdida del control total de forma que no se tiene la capacidadde crear ningún tipo de reporte que refleje pérdidas o ganancias para la empresa.</p>
                
              </div>
            </div>
          </div>

          <div class="carousel-item">
            <div class="carousel-background"><img src="assets/img/intro-carousel/4.jpg" alt=""></div>
            <div class="carousel-container">
              <div class="carousel-content">
                <h2>Planificación de recursos empresariales</h2>
                <p>Los sistemas ERP – Enterprise Resource Planning – se presentan como una solución para todas aquellas PYMES que no cuentan con la capacidad económica de costear un software hecho a la medida y que muchas veces no requieren de sistemas tan grandes para los productos o servicios que ellos ofrecen, cubriendo sus necesidades básicas, estos sistemas se presentan como una solución eficiente y de bajo costo, que permite agilizar y automatizar muchas de las tareas que se deben realizar.
                  </p>
               
              </div>
            </div>
          </div>

        <a class="carousel-control-prev" href="#introCarousel" role="button" data-slide="prev">
          <span class="carousel-control-prev-icon ion-chevron-left" aria-hidden="true"></span>
          <span class="sr-only">Previous</span>
        </a>

        <a class="carousel-control-next" href="#introCarousel" role="button" data-slide="next">
          <span class="carousel-control-next-icon ion-chevron-right" aria-hidden="true"></span>
          <span class="sr-only">Next</span>
        </a>

      </div>
    </div>
  </section><!-- End Intro Section -->

  <main id="main">

    <!-- ======= About Us Section ======= -->
    <section id="about">
      <div class="container">

        <header class="section-header">
          <h3>Sobre Nosotros</h3>
          <p>Desarrollar un sistema de software a través de los conceptos de análisis y diseño de sistemas.</p>
        </header>

        <div class="row about-cols">

          <div class="col-md-4 wow fadeInUp">
            <div class="about-col">
              <div class="img">
                <img src="assets/img/about-mission.jpg" alt="" class="img-fluid">
                <div class="icon"><i class="ion-ios-speedometer-outline"></i></div>
              </div>
              <h2 class="title"><a href="#">Nuestra Mision</a></h2>
              <p>
                Se solicita el desarrollo de una aplicación basada en los fundamentos de los sistemas ERP de la cual podrán ser contratados los servicios y agregados los módulos que mejor se acomoden al contratante, 
              </p>
            </div>
          </div>

          <div class="col-md-4 wow fadeInUp" data-wow-delay="0.1s">
            <div class="about-col">
              <div class="img">
                <img src="assets/img/about-plan.jpg" alt="" class="img-fluid">
                <div class="icon"><i class="ion-ios-list-outline"></i></div>
              </div>
              <h2 class="title"><a href="#">Nuestro Plan</a></h2>
              <p>
               Al adquirir el servicio se tendrá la posibilidad de crear cuentas para los empleados de la empresa que contrató el servicio, para que estos puedan hacer uso de la plataforma. 
              </p>
            </div>
          </div>

          <div class="col-md-4 wow fadeInUp" data-wow-delay="0.2s">
            <div class="about-col">
              <div class="img">
                <img src="assets/img/about-vision.jpg" alt="" class="img-fluid">
                <div class="icon"><i class="ion-ios-eye-outline"></i></div>
              </div>
              <h2 class="title"><a href="#">Nuestra Vision</a></h2>
              <p>
                 Realizar el primer ciclo de construcción de la metodología iterativa-incremental para desarrollar un prototipo funcional que pueda completarse y extenderse hasta completar los requerimientos del cliente. 
              </p>
            </div>
          </div>

        </div>

      </div>
    </section><!-- End About Us Section -->

    <!-- ======= Services Section ======= -->
    <section id="services">
      <div class="container">

        <header class="section-header wow fadeInUp">
          <h3>Servicios</h3>
          <p>Para poder adquirir cada módulo, la aplicación cuenta con una tienda virtual, desde la cual podrán agregar nuevos módulos a su sistema ERP los cuales adicionarán un costo al pago mensual del servicio,</p>
        </header>

        <div class="row">

          <div class="col-lg-4 col-md-6 box wow bounceInUp" data-wow-duration="1.4s">
            <div class="icon"><i class="ion-ios-paper-outline"></i></div>
            <h4 class="title"><a href="">Blog </a></h4>
            <p class="description">El apartado de blog cumple con las funciones de publicación de anuncios por parte de los usuarios, en donde podrán ser comentados por otros</p>
          </div>
          <div class="col-lg-4 col-md-6 box wow bounceInUp" data-wow-duration="1.4s">
            <div class="icon"><i class="ion-ios-people-outline"></i></div>
            <h4 class="title"><a href="">Modulo Reclutamiento</a></h4>
            <p class="description">El módulo de reclutamiento estará predispuesto para el área de recursos humanos, con él podrán hacer un recopilatorio del personal con el que cuenta la empresa, sus puestos e información básica que podrá ser gestionada,</p>
          </div>
          <div class="col-lg-4 col-md-6 box wow bounceInUp" data-wow-duration="1.4s">
            <div class="icon"><i class="ion-ios-analytics-outline"></i></div>
            <h4 class="title"><a href="">Modulo Inventario</a></h4>
            <p class="description">Este permitirá a la empresa llevar el registro de sus productos, como su materia prima, para la elaboración de sus productos, desde acá se ingresarán los productos con los que se cuenta. </p>
          </div>
          <div class="col-lg-4 col-md-6 box wow bounceInUp" data-wow-delay="0.1s" data-wow-duration="1.4s">
            <div class="icon"><i class="ion-ios-speedometer-outline"></i></div>
            <h4 class="title"><a href="">Modulo Ventas</a></h4>
            <p class="description">Con este módulo se puede registrar cada una de las ventas que se han realizado</p>
          </div>
          <div class="col-lg-4 col-md-6 box wow bounceInUp" data-wow-delay="0.1s" data-wow-duration="1.4s">
            <div class="icon"><i class="ion-ios-barcode-outline"></i></div>
            <h4 class="title"><a href="">Modulo Compra</a></h4>
            <p class="description">Este módulo permitirá, a la empresa que lo contrate, revisar las compras que ha realizado, llevando un control estricto de los gastos realizados, </p>
          </div>
          <div class="col-lg-4 col-md-6 box wow bounceInUp" data-wow-delay="0.1s" data-wow-duration="1.4s">
            <div class="icon"><i class="ion-ios-bookmarks-outline"></i></div>
            <h4 class="title"><a href="">Modulo Facturacion</a></h4>
            <p class="description">Este módulo permitirá recibir las facturas emitidas por los proveedores a los que se realizó una gestión de compras. </p>
          </div>

        </div>

      </div>
    </section><!-- End Services Section -->

   

    <!-- ======= Contact Section ======= -->
    <section id="contact" class="section-bg wow fadeInUp">
      <div class="container">

        <div class="section-header">
          <h3>Iniciar Sesion</h3>
          <p>Inicie Sesion para poder utilizar los servicios, si se desea registrar contacte con nuestro administrador  </p>
        </div>

        <div class="row contact-info">

          <div class="col-md-4">
            <div class="contact-address">
              <i class="ion-ios-location-outline"></i>
              <h3>Direccion</h3>
              <address>Universidad de San Carlos de Guatemala, Facultad de Ingenieria, Guatemala</address>
            </div>
          </div>

          <div class="col-md-4">
            <div class="contact-phone">
              <i class="ion-ios-telephone-outline"></i>
              <h3>Numero de Telefono</h3>
              <p><a href="tel:+155895548855">+502 58446376</a></p>
            </div>
          </div>

          <div class="col-md-4">
            <div class="contact-email">
              <i class="ion-ios-email-outline"></i>
              <h3>Email</h3>
              <p><a href="mailto:info@example.com">mdanielcool98@gmail.com</a></p>
            </div>
          </div>

        </div>

        <div class="form">
            <form id="form1" runat="server">
            <div class="form-row">
              <div class="form-group col-md-6">
                  <%--<asp:TextBox ID="txtUsu" runat="server" class="form-control" placeholder="Ingrese Usuario"></asp:TextBox>--%>
                <asp:TextBox ID="name" runat="server" class="form-control" placeholder="Usuario"></asp:TextBox>
              
              </div>
              <div class="form-group col-md-6">
                  <%--<asp:TextBox runat="server" class="form-control" TextMode="Password" placeholder="Ingrese Contraseña" required="required" ID="txtPass"></asp:TextBox>--%>
                <asp:Textbox ID="pass" runat="server" class="form-control" placeholder="Contraseña" TextMode="Password" required="required" OnTextChanged="pass_TextChanged1"></asp:Textbox>
               
              </div>
            </div>
           
            
            <div class="text-center">
                <%--<asp:Button ID="btnIngresar" CssClass="btn btn bg-skin pull-right" Text="INGRESAR" runat="server" OnClick="BtnIngresar_Click" />--%>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Ingresar" CssClass="alert-link" Height="54px" Width="141px" />

            </div>
            </form>
        </div>

      </div>
    </section><!-- End Contact Section -->

  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  <footer id="footer">
    <div class="footer-top">
      <div class="container">
        <div class="row">

          <div class="col-lg-3 col-md-6 footer-info">
            <h3>Hello World</h3>
            <p> El acuerdo delimita el primer prototipo funcional de forma que el módulo para gestionar las PYMES que serán clientes de “Hello World”, los accesos de estos clientes a los módulos comercializados y los módulos default que la solución incluye, deberán tener una primera versión funcional.</p>
          </div>



          <div class="col-lg-3 col-md-6 footer-contact">
            <h4>Contacto</h4>
            <p>
              Marvin Daniel Rodriguez Felix<br>
              201709450<br>
              Facultad de Ingenieria <br>
              <strong>Phone:</strong> +502 58446376<br>
              <strong>Email:</strong> mdanielcool98@gmail.com<br>
            </p>

            <div class="social-links">
              <a href="#" class="twitter"><i class="fa fa-twitter"></i></a>
              <a href="#" class="facebook"><i class="fa fa-facebook"></i></a>
              <a href="#" class="instagram"><i class="fa fa-instagram"></i></a>
              <a href="#" class="google-plus"><i class="fa fa-google-plus"></i></a>
              <a href="#" class="linkedin"><i class="fa fa-linkedin"></i></a>
            </div>

          </div>

          

        </div>
      </div>
    </div>

   
  </footer><!-- End Footer -->

  <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>
  <!-- Uncomment below i you want to use a preloader -->
  <!-- <div id="preloader"></div> -->

  <!-- Vendor JS Files -->
  <script src="assets/vendor/jquery/jquery.min.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/jquery.easing/jquery.easing.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>
  <script src="assets/vendor/wow/wow.min.js"></script>
  <script src="assets/vendor/waypoints/jquery.waypoints.min.js"></script>
  <script src="assets/vendor/counterup/counterup.min.js"></script>
  <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="assets/vendor/venobox/venobox.min.js"></script>
  <script src="assets/vendor/owl.carousel/owl.carousel.min.js"></script>
  <script src="assets/vendor/superfish/superfish.min.js"></script>
  <script src="assets/vendor/hoverIntent/hoverIntent.js"></script>
  <script src="assets/vendor/jquery-touchswipe/jquery.touchSwipe.min.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>
</body>
</html>
