<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Usuario.aspx.cs" Inherits="Proyecto.Usuario" %>

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
    <!-- start top -->
    <div id="topnav" class="navbar navbar-fixed-top default">
      <div class="navbar-inner">
        <div class="container">
           <h1 style="color: #FFFFFF"><asp:Literal ID="Literal1" runat="server"></asp:Literal> </h1>
          <div class="navigation">
            <nav>
              <ul class="nav pull-right">
                <li class="current"><a href="#intro">Inicio</a></li>
                <li><a href="#about">Clientes</a></li>
                <li><a href="#services">Proveedores</a></li>
                <li><a href="#works">Productos</a></li>
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
      <h1>Bienvenido <span>al ERP de </span> <asp:Literal ID="Lit1" runat="server"></asp:Literal></h1>
      <h2>Modulo Default</h2>
        <div class ="text-center">
                 <asp:Button ID="Button7" runat="server" Text="ACTUALIZAR" OnClick="Button7_Click" BorderStyle="Dotted" CssClass="alert-dark" Height="30px" Width="232px" />
                 </div>
    </div>
  </section>
  <!-- end intro -->


  <!-- Section about -->
  <section id="about" class="section">
    <div class="container">
      <div class="row">
        <div class="span12">
          <div class="heading">
            <h3><span>Clientes</span></h3>
          </div>
          <div class="sub-heading">
            <p>
              Deben poder ser dados de alta o de baja. 
            </p>
          </div>
        </div>
      </div>
      <div class="row">
           <div class="text-center">
          <asp:FileUpload ID="FileUpload1" runat = "server" BorderStyle="None" CssClass="active right" Height="46px" Width="388px" />
          <br /><br />
           <asp:Button ID="Button1" runat="server" Text="Subir Archivo" OnClick="Button1_Click" BorderStyle="Dotted" CssClass="active right" Height="54px" Width="202px" />
           <br /><br />
         </div>  
          <div style="height: 37px">

          </div>
          <div class ="text-center"> 
               <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Width="974px" HorizontalAlign="Center">
              <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
              <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
              <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
              <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
              <SortedAscendingCellStyle BackColor="#F7F7F7" />
              <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
              <SortedDescendingCellStyle BackColor="#E5E5E5" />
              <SortedDescendingHeaderStyle BackColor="#242121" />
           </asp:GridView>
          </div>
           <div style="height: 37px">

          </div>
          <div class="span6">
              <div class="form-group">            
                  <asp:DropDownList ID="DropDownList1" runat="server" class="form-control" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged" Width="701px">
                </asp:DropDownList>  
              </div>
          </div>
          <div class="span6">
              <div class="form-group">
                  <div class ="text-center">
                 <asp:Button ID="Button2" runat="server" Text="Dar de baja al cliente" OnClick="Button2_Click" BorderStyle="Dotted" CssClass="alert-dark" Height="30px" Width="232px" OnClientClick="return confirm(&quot;Seguro de dar de darlo de baja &quot;);" />
                 </div>
                  </div>
          </div>
           
         
      </div>
    </div>
  </section>
  <!-- end section about -->


  <!-- section services -->
  <section id="services" class="section parallax dark">
    <div class="container">
      <div class="row">
        <div class="span12">
          <div class="heading">
            <h3><span>Proveedores</span></h3>
          </div>
          <div class="sub-heading">
            <p>
            Deben poder ser dados de alta o de baja.  
            </p>
          </div>
        </div>
      </div>
         <div class="row">
        <div class="text-center">
          <asp:FileUpload ID="FileUpload2" runat = "server" BorderStyle="None" CssClass="active right" Height="46px" Width="388px" />
          <br /><br />
           <asp:Button ID="Button3" runat="server" Text="Subir Archivo" OnClick="Button3_Click" BorderStyle="Dotted" CssClass="active right" Height="54px" Width="202px" />
           <br /><br />
         </div>  
          <div style="height: 37px">

          </div>
          <div class ="text-center"> 
               <asp:GridView ID="GridView2" runat="server" Width="962px" HorizontalAlign="Center">
           </asp:GridView>
          </div>
           <div style="height: 37px">

          </div>
          <div class="span6">
              <div class="form-group">            
                  <asp:DropDownList ID="DropDownList2" runat="server" class="form-control" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged" Width="701px">
                </asp:DropDownList>  
              </div>
          </div>
          <div class="span6">
              <div class="form-group">
                  <div class ="text-center">
                 <asp:Button ID="Button4" runat="server" Text="Dar de baja al proveedor" OnClick="Button4_Click" BorderStyle="Dotted" CssClass="alert-dark" Height="30px" Width="232px" OnClientClick="return confirm(&quot;Seguro de dar de darlo de baja &quot;);" />
                 </div>
                  </div>
          </div>
            
              
      </div>
    </div>
  </section>
  <!-- end section services -->
  <!-- section works -->
  <section id="works" class="section gray-bg">
    <div class="container">
      <div class="row">
        <div class="span12">
          <div class="heading">
            <h3><span>Cargar Producto</span></h3>
          </div>
          <div class="sub-heading">
            <p>
              Un producto debe poder activarse o inactivarse.
            </p>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="text-center">
          <asp:FileUpload ID="FileUpload3" runat = "server" BorderStyle="None" CssClass="active right" Height="46px" Width="388px" />
          <br /><br />
           <asp:Button ID="Button5" runat="server" Text="Subir Archivo" OnClick="Button5_Click" BorderStyle="Dotted" CssClass="active right" Height="54px" Width="202px" />
           <br /><br />
         </div>  
          <div style="height: 37px">

          </div>
          <div class ="text-center"> 
               <asp:GridView ID="GridView3" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Width="974px" HorizontalAlign="Center">
              <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
              <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
              <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
              <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
              <SortedAscendingCellStyle BackColor="#F7F7F7" />
              <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
              <SortedDescendingCellStyle BackColor="#E5E5E5" />
              <SortedDescendingHeaderStyle BackColor="#242121" />
           </asp:GridView>
          </div>
           <div style="height: 37px">

          </div>
          <div class="span6">
              <div class="form-group">            
                  <asp:DropDownList ID="DropDownList3" runat="server" class="form-control" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged" Width="701px">
                </asp:DropDownList>  
              </div>
          </div>
          <div class="span6">
              <div class="form-group">
                  <div class ="text-center">
                 <asp:Button ID="Button6" runat="server" Text="Dar de baja al Producto" OnClick="Button6_Click" BorderStyle="Dotted" CssClass="alert-dark" Height="30px" Width="232px" OnClientClick="return confirm(&quot;Seguro de dar de darlo de baja &quot;);" />
                 </div>
                  </div>
          </div>
      </div>
    </div>
  </section>
  <!-- section works -->
  

  <footer>
    <div class="verybottom">
      <div class="container">
        <div class="row">
          <div class="span12">
            <div class="aligncenter">
              <div class="logo">
                <h1 style="color: #FFFFFF"><asp:Literal ID="Literal2" runat="server"></asp:Literal></h1>
              </div>
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
