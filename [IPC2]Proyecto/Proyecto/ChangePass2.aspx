<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChangePass2.aspx.cs" Inherits="Proyecto.ChangePass2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <meta charset="utf-8">
  <title>Vesperr one page site template with bootstrap</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <meta name="description" content="" />
  <meta name="author" content="" />
  <!-- styles -->
  <link href="2assets/css/bootstrap.css" rel="stylesheet" />
  <link href="2assets/css/bootstrap-responsive.css" rel="stylesheet" />
  <link href="2assets/css/prettyPhoto.css" rel="stylesheet" />
  <link href="2assets/css/animate.css" rel="stylesheet" />
  <link href="https://fonts.googleapis.com/css?family=Noto+Serif:400,700,400italic|Roboto+Condensed:400,300,700" rel="stylesheet" />

  <link href="2assets/css/style.css" rel="stylesheet" />
  <link href="2assets/color/default.css" rel="stylesheet" />

  <link rel="apple-touch-icon-precomposed" sizes="144x144" href="ico/apple-touch-icon-144-precomposed.png" />
  <link rel="apple-touch-icon-precomposed" sizes="114x114" href="ico/apple-touch-icon-114-precomposed.png" />
  <link rel="apple-touch-icon-precomposed" sizes="72x72" href="ico/apple-touch-icon-72-precomposed.png" />
  <link rel="apple-touch-icon-precomposed" href="ico/apple-touch-icon-57-precomposed.png" />
  <link rel="shortcut icon" href="ico/favicon.ico" />

  <!-- =======================================================
    Theme Name: Vesperr
    Theme URL: https://bootstrapmade.com/vesperr-free-bootstrap-template/
    Author: BootstrapMade.com
    Author URL: https://bootstrapmade.com
	======================================================= -->
</head>
<body>
    <form id="form1" runat="server">
        <header>
       <div id="topnav" class="navbar navbar-fixed-top default">
      <div class="navbar-inner">
        <div class="container">
         <h1 style="color: #FFFFFF"><asp:Literal ID="Lit1" runat="server"></asp:Literal> </h1>
          <div class="navigation">
            <nav>
              <ul class="nav pull-right">
                <li class="current"><a href="#intro">Cambio de Contraseña</a></li>
                                
              </ul>
            </nav>
          </div>
          <!--/.nav-collapse -->
        </div>
      </div>
    </div>
    <!-- end top -->
  </header>
  <!-- section intro -->
  <section id="intro">
    <div class="slogan">
      <h4> </h4>
            <div class="suscribe-text text-center">
              <h3>Porfavor, cambie su contraseña en su primer inicio</h3>
              <div class="form-group">
                     <asp:TextBox ID="TextBox1" runat="server" class="form-control" TextMode="Password"  placeholder="Ingrese Nueva Contraseña" Width="625px" Height="16px"></asp:TextBox>
                  </div>
                 <div>

                </div>
                    <div class="form-group">
                     <asp:TextBox ID="TextBox2" runat="server" class="form-control" TextMode="Password"  placeholder="Confirmar Nueva Contraseña" Width="627px" Height="16px"></asp:TextBox>
                  </div>
                <div>

                </div>
                   <div class="text-center">
                <asp:Button ID="Button2" runat="server" Text="Cambiar" OnClick="Button2_Click" BorderStyle="Dotted" CssClass="alert-link" Height="47px" Width="182px" />
            </div>
            </div>
          </div>

  </section>
  <!-- end intro -->

  <footer>
    <div class="verybottom">
      <div class="container">
        <div class="row">
          <div class="span12">
            <div class="aligncenter">
              <h1 style="color: #FFFFFF"><asp:Literal ID="Literal1" runat="server"></asp:Literal></h1>
              <p>
                &copy; HELLO WORLD - All right reserved
              </p>
              <div class="credits">
                <!--
                  All the links in the footer should remain intact.
                  You can delete the links only if you purchased the pro version.
                  Licensing information: https://bootstrapmade.com/license/
                  Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/buy/?theme=Vesperr
                -->
                Created by <a href="https://bootstrapmade.com/">BootstrapMade.com</a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </footer>
  <a href="#" class="scrollup"><i class="icon-chevron-up icon-square icon-48 active"></i></a>

  <!-- Javascript Library Files -->
  <script src="2assets/js/jquery.min.js"></script>
  <script src="2assets/js/jquery.easing.js"></script>
  <script src="2assets/js/bootstrap.js"></script>
  <script src="2assets/js/parallax/jquery.parallax-1.1.3.js"></script>
  <script src="2assets/js/nagging-menu.js"></script>
  <script src="2assets/js/jquery.nav.js"></script>
  <script src="2assets/js/prettyPhoto/jquery.prettyPhoto.js"></script>
  <script src="2assets/js/portfolio/jquery.quicksand.js"></script>
  <script src="2assets/js/portfolio/setting.js"></script>
  <script src="2assets/js/hover/jquery-hover-effect.js"></script>
  <script src="2assets/js/jquery.scrollTo.min.js"></script>
  <script src="2assets/js/animate.js"></script>

  <!-- Contact Form JavaScript File -->
  <script src="contactform/contactform.js"></script>

  <!-- Template Custom Javascript File -->
  <script src="2assets/js/custom.js"></script>
    </form>
</body>
</html>
