<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminSistem.aspx.cs" Inherits="Proyecto.AdminSistem" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Administrador Sistema</title>
  <meta content="" name="descriptison">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <!--<link href="assets/img/favicon.png" rel="icon">-->
  <%--<link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">--%>

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

  <!-- =======================================================
  * Template Name: BizPage - v2.0.0
  * Template URL: https://bootstrapmade.com/bizpage-bootstrap-business-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
    <style type="text/css">
        .validate {
            width: 772px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
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
       
          <li><a href="#about">Registrar Cliente</a></li>
           <li><a href="#contact">Administrar Modulos</a></li>
          
          
          
        </ul>
      </nav><!-- #nav-menu-container -->
    </div>
      <%--<asp:Button ID="Button4" runat="server" Text="Button" />--%>
  </header><!-- End Header -->

  

  <main id="main">
          <section id="featured-services">
      <div class="container">
        <div class="row">

          <div class="col-lg-4 box">
           
            
          </div>

          <div class="col-lg-4 box box-bg">
           
           
          </div>

          <div class="col-lg-4 box">
            
            
          </div>

        </div>
      </div>
    </section><!-- End Featured Services Section -->
  
    <!-- ======= About Us Section ======= -->
    <section id="about">
      <div class="container">

        <header class="section-header">
          <h3>Registrar Cliente</h3>
          <p>Para registrar a un nuevo cliente es necesario ingresar la siguiente información:</p>
        </header>
            <div class="form">
                
            <div class="form-row">
              <div class="form-group col-md-6">            
<%--                <input type="text" name="name" class="form-control" id="name" placeholder="Your Name" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />--%>
                <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="NIT"></asp:TextBox>
                <div class="validate"></div>
              </div>
              <div class="form-group col-md-6">
                <asp:TextBox ID="TextBox2" runat="server" class="form-control" placeholder="Tipo de empresa"></asp:TextBox>
                <%--<input type="email" class="form-control" name="email" id="email" placeholder="Your Email" data-rule="email" data-msg="Please enter a valid email" />--%>
                <div class="validate"></div>
              </div>
            </div>
            <div class="form-group">
                 <asp:TextBox ID="TextBox3" runat="server" class="form-control" placeholder="Nombre de la Empresa"></asp:TextBox>
              <%--<input type="text" class="form-control" name="subject" id="subject" placeholder="Subject" data-rule="minlen:4" data-msg="Please enter at least 8 chars of subject" />--%>
              <div class="validate"></div>
            </div>
            <div class="form-group">
                    <asp:DropDownList ID="DropDownList9" runat="server" class="form-control" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
             <asp:ListItem value ="0">--Intervalo de Usuarios</asp:ListItem>
                    <asp:ListItem>de 1 a 10 empleados</asp:ListItem>
                    <asp:ListItem>de 11 a 15 empleados</asp:ListItem>
                     <asp:ListItem>de 16 a 25 empleados</asp:ListItem>
                    <asp:ListItem>de 26 a 40 empleados</asp:ListItem>
                     <asp:ListItem>de 41 a 50 empleados</asp:ListItem>
                    <asp:ListItem>de más de 50 empleados</asp:ListItem>
                </asp:DropDownList>  
            </div>

            <div class="text-center">
                <asp:Button ID="Button1" runat="server" Text="Registrar" OnClick="Button1_Click" BorderStyle="Dotted" CssClass="alert-link" Height="47px" Width="182px" />
               
            </div>
        </div>

      </div>
    </section><!-- End About Us Section -->
          <!-- ======= Featured Services Section Section ======= -->
    

       <section id="portfolio" class="section-bg">
      <div class="container" style="border-style: hidden; border-width: thick; background-color: #FFFFFF">

         <header class="section-header wow fadeInUp">
          <h3>Registrar Tarjeta al Cliente</h3>
        </header>

          <div class="form-group">
                 <asp:DropDownList ID="DropDownList12" runat="server" class="form-control" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
                </asp:DropDownList>  
            </div>
          
          <p>Para registrar una tarjeta al ciente porfavor llene los siguientes datos:</p>
          <div></div>
      
            <div class="form-row">
           <div class="form-group col-md-6">
                 <asp:TextBox ID="TextBox5" runat="server" class="form-control" placeholder="Numero de la tarjeta"></asp:TextBox>
              <%--<textarea class="form-control" name="message" rows="5" data-rule="required" data-msg="Please write something for us" placeholder="Message"></textarea>--%>
              <div class="validate"></div>
            </div>
                    <div class="form-group col-md-6">
                 <asp:TextBox ID="TextBox6" runat="server" class="form-control" placeholder="Nombre de la tarjeta"></asp:TextBox>
              <%--<textarea class="form-control" name="message" rows="5" data-rule="required" data-msg="Please write something for us" placeholder="Message"></textarea>--%>
              <div class="validate"></div>
            </div>
                </div>
             <div class="form-row">
             <div class="form-group col-md-6">
                  <asp:DropDownList ID="DropDownList10" runat="server" class="form-control" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
             <asp:ListItem value ="0">--Tipo de la Tarjeta</asp:ListItem>
                    <asp:ListItem>Visa</asp:ListItem>
                    <asp:ListItem>Master Card</asp:ListItem>               
                </asp:DropDownList>  
              <div class="validate"></div>
            </div>
                 <div class="form-group col-md-6">
                  <asp:DropDownList ID="DropDownList11" runat="server" class="form-control" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
             <asp:ListItem value ="0">--Tarjeta en la cual se hace el cobro</asp:ListItem>
                    <asp:ListItem>SI</asp:ListItem>
                    <asp:ListItem>NO</asp:ListItem>               
                </asp:DropDownList>  
              <div class="validate"></div>
            </div>
                  </div>
               <div class="form-row">
              <div class="form-group col-md-6">            
<%--                <input type="text" name="name" class="form-control" id="name" placeholder="Your Name" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />--%>
                <asp:TextBox ID="TextBox8" runat="server" class="form-control" placeholder="Fecha de Vencimiento"></asp:TextBox>
                <div class="validate"></div>
              </div>
              <div class="form-group col-md-6">
                <asp:TextBox ID="TextBox9" runat="server" class="form-control" placeholder="Codigo"></asp:TextBox>
                <%--<input type="email" class="form-control" name="email" id="email" placeholder="Your Email" data-rule="email" data-msg="Please enter a valid email" />--%>
                <div class="validate"></div>
              </div>
            </div>
     

          <div class="text-center">
                <asp:Button ID="Button10" runat="server" Text="Registrar Tarjeta" OnClick="Button10_Click" BorderStyle="Dotted" CssClass="alert-light" Height="72px" Width="182px" />
            </div>

      </div>
    </section><!-- End Portfolio Section -->


    <!-- ======= Team Section ======= -->
    <section id="team" runat="server">
      <div class="container">

        <header class="section-header">
          <h3>Contactos de la empresa</h3>
          <p>Cada nuevo cliente (PYME) registrado, debe proporcionar los siguientes contactos</p>
            <div class="form-group">
                 <asp:DropDownList ID="DropDownList3" runat="server" class="form-control" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
                </asp:DropDownList>  
            </div>
        </header>

        <div class="row about-cols">

          <div class="col-md-4 wow fadeInUp">
            <div class="about-col">
              <div class="img">
                <img src="assets/img/mision.jpg" alt="" class="img-fluid">
               
              </div>
              <h2 class="title"><a href="#">Contacto Comercial</a></h2>
              <p>
                   Es el encargado de realizar los pagos y atender cualquier situación relacionada con el pago del servicio.
              </p>
               
            </div>
             <div class="form-group">
                 <asp:TextBox ID="TextBox11" runat="server" class="form-control" placeholder="Nombre"></asp:TextBox>
            </div>
              <div class="form-group">

                 <asp:TextBox ID="TextBox12" runat="server" class="form-control" placeholder="DPI"></asp:TextBox>
            </div>
              <div class="form-group">

                 <asp:TextBox ID="TextBox13" runat="server" class="form-control" placeholder="Numero Celular"></asp:TextBox>
            </div>
               <div class="form-group">

                 <asp:TextBox ID="TextBox29" runat="server" class="form-control" placeholder="Numero Oficina"></asp:TextBox>
            </div>
              <div class="form-group">

                 <asp:TextBox ID="TextBox14" runat="server" class="form-control" placeholder="Extension"></asp:TextBox>
            </div>
              <div class="form-group">
                 <asp:TextBox ID="TextBox15" runat="server" class="form-control" placeholder="Correo Contacto"></asp:TextBox>
                  
            </div>
              <div class="form-group">

                 <asp:TextBox ID="TextBox16" runat="server" class="form-control" placeholder="Direccion de Oficina"></asp:TextBox>
            </div>
          </div>

          <div class="col-md-4 wow fadeInUp" data-wow-delay="0.1s">
            <div class="about-col">
              <div class="img">
                <img src="assets/img/plan.jpg" alt="" class="img-fluid">
                
              </div>
              <h2 class="title"><a href="#">Contacto Gerencial</a></h2>
              <p>
               Es la persona que tiene la autoridad para tomar decisiones importantes, como por ejemplo ampliar el servicio contratado, suspender el servicio contratado, etc.

              </p>

            </div>
              <div class="form-group">

                 <asp:TextBox ID="TextBox17" runat="server" class="form-control" placeholder="Nombre"></asp:TextBox>
            </div>
              <div class="form-group">

                 <asp:TextBox ID="TextBox18" runat="server" class="form-control" placeholder="DPI"></asp:TextBox>
            </div>
              <div class="form-group">

                 <asp:TextBox ID="TextBox19" runat="server" class="form-control" placeholder="Numero Celular"></asp:TextBox>
            </div>
               <div class="form-group">

                 <asp:TextBox ID="TextBox30" runat="server" class="form-control" placeholder="Numero Oficina"></asp:TextBox>
            </div>
              <div class="form-group">

                 <asp:TextBox ID="TextBox20" runat="server" class="form-control" placeholder="Extension"></asp:TextBox>
            </div>
              <div class="form-group">

                 <asp:TextBox ID="TextBox21" runat="server" class="form-control" placeholder="Correo Contacto"></asp:TextBox>
            </div>
              <div class="form-group">
                 <asp:TextBox ID="TextBox22" runat="server" class="form-control" placeholder="Direccion de Oficina"></asp:TextBox>
            </div>
          </div>

          <div class="col-md-4 wow fadeInUp" data-wow-delay="0.2s">
            <div class="about-col">
              <div class="img">
                <img src="assets/img/vision.jpg" alt="" class="img-fluid">
              </div>
              <h2 class="title"><a href="#">Contacto Administrador</a></h2>
              <p>
                Es la persona que tendrá el rol de administrador del ERP SaaS brindado por “Hello World”.  Será el responsable de crear usuarios para los empleados del cliente (PYME) y asignar los módulos y permisos que cada uno de estos usuarios dispondrá.

              </p>
            </div>
               <div class="form-group">

                 <asp:TextBox ID="TextBox23" runat="server" class="form-control" placeholder="Nombre"></asp:TextBox>
            </div>
              <div class="form-group">

                 <asp:TextBox ID="TextBox24" runat="server" class="form-control" placeholder="DPI"></asp:TextBox>
            </div>
              <div class="form-group">

                 <asp:TextBox ID="TextBox25" runat="server" class="form-control" placeholder="Numero Celular"></asp:TextBox>
            </div>
               <div class="form-group">

                 <asp:TextBox ID="TextBox31" runat="server" class="form-control" placeholder="Numero Oficina"></asp:TextBox>
            </div>
              <div class="form-group">

                 <asp:TextBox ID="TextBox26" runat="server" class="form-control" placeholder="Extension"></asp:TextBox>
            </div>
              <div class="form-group">

                 <asp:TextBox ID="TextBox27" runat="server" class="form-control" placeholder="Correo Contacto"></asp:TextBox>      
                 
            </div>
              <div class="form-group">

                 <asp:TextBox ID="TextBox28" runat="server" class="form-control" placeholder="Direccion de Oficina"></asp:TextBox>
            </div>
          </div>
           
        </div>
           <div class="text-center">
                <asp:Button ID="Button2" runat="server" Text="Registrar Contactos" OnClick="Button2_Click" BorderStyle="Dotted" CssClass="alert-dark" Height="60px" />
            </div>
        </div>
     
    </section><!-- End Team Section -->
      
    <!-- ======= Call To Action Section ======= -->
    <section id="call-to-action" class="wow fadeIn">
      <div class="container text-center">
        <h3>Usuario para el administrador</h3>
        <p> Creación de usuario administrador de servicio para nuevo cliente (PYME).</p>
        <div class="form-group">
                 <asp:DropDownList ID="DropDownList4" runat="server" class="form-control" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
                </asp:DropDownList>  
            </div>
          <div class="form-group">
                 <asp:TextBox ID="TextBox33" runat="server" class="form-control" placeholder="Usuario"></asp:TextBox>
            </div>
          <div class="form-group">
                 <asp:TextBox ID="TextBox34" runat="server" class="form-control" TextMode="Password" placeholder="Contraseña"></asp:TextBox>
            </div>
        <div class="text-center">
                <asp:Button ID="Button3" runat="server" Text="Crear Usuario" OnClick="Button3_Click" BorderStyle="Dashed" CssClass="alert-link" Height="63px" Width="242px" />
            </div>
      </div>
    </section><!-- End Call To Action Section -->
    

         <!-- ======= Contact Section ======= -->
    <section id="contact" class="section-bg wow fadeInUp">
      <div class="container">

        <div class="section-header">
          <h3>Creacion De Modulo</h3>
        
        </div>

        <div class="form">
          
            <div class="form-row">
              <div class="form-group col-md-6">
                <asp:TextBox ID="TextBox35" runat="server" class="form-control" placeholder="Codigo"></asp:TextBox>  
              </div>
              <div class="form-group col-md-6">
                <asp:TextBox ID="TextBox36" runat="server" class="form-control" placeholder="Nombre"></asp:TextBox>  
              </div>
            </div>
             <div class="form-row">
              <div class="form-group col-md-6">
                <asp:TextBox ID="TextBox37" runat="server" class="form-control" placeholder="Abreviatura"></asp:TextBox>  
              </div>
              <div class="form-group col-md-6">
                <asp:DropDownList ID="DropDownList5" runat="server" class="form-control" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
                    <asp:ListItem value ="0">--Modulo Default</asp:ListItem>
                  <asp:ListItem>Si</asp:ListItem>
                    <asp:ListItem>No</asp:ListItem>
                </asp:DropDownList>  
              </div>
            </div>
            <div class="form-group">
              <asp:TextBox ID="TextBox39" runat="server" class="form-control" placeholder="Descripcion" Height="86px"></asp:TextBox> 
              
            </div>
           
            <div class="text-center">
                <asp:Button ID="Button4" runat="server" Text="Crear Modulo" OnClick="Button4_Click" BorderStyle="Solid" CssClass="alert-dark" Height="61px" Width="206px" />
            </div>
        
        </div>

      </div>
    </section><!-- End Contact Section -->


    <!-- ======= Services Section ======= -->
    <section id="services">
      <div class="container">

        <header class="section-header wow fadeInUp">
          <h3>Servicios Precios</h3>
          
        </header>
           <div class="text-center">
                <asp:Button ID="Button5" runat="server" Text="Mostrar Datos" OnClick="Button5_Click" BorderStyle="Dotted" CssClass="alert-link" Height="64px" Width="231px" />
            </div>

          <h3> Lista de modulos </h3>
           <div>
              <asp:GridView ID="GridView2" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Width="542px">
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
         
           <h3> Lista de Suscripciones Vigente</h3>

        <div >           
            <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="755px" BorderStyle="Outset" HorizontalAlign="Center">
                <AlternatingRowStyle BackColor="White" />
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
        </div>

        <div style="height: 80px"></div>  
    <div class="container" style="padding: 8px">
         
        <header class="section-header wow fadeInUp">
          <h3>Suscripcion Nueva</h3>
        </header>

        <div class="form-group">
              <asp:TextBox ID="TextBox10" runat="server" class="form-control" placeholder="Codigo"></asp:TextBox> 
            </div>
              <div class="form-row">
              <div class="form-group col-md-6">
                <asp:TextBox ID="TextBox4" runat="server" class="form-control" placeholder="Fecha de Inicio"></asp:TextBox>  
              </div>
              <div class="form-group col-md-6">
                <asp:TextBox ID="TextBox7" runat="server" class="form-control" placeholder="Fecha Final"></asp:TextBox>  
              </div>
            </div>

        <div class="form-group">
                <asp:DropDownList ID="DropDownList13" runat="server" class="form-control" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
                    <asp:ListItem value ="0">--Tipo de suscripcion</asp:ListItem>
                  <asp:ListItem>MENSUAL</asp:ListItem>
                    <asp:ListItem>ANUAL</asp:ListItem>
                </asp:DropDownList>  
              </div>

          <div class="text-center">
                <asp:Button ID="Button11" runat="server" Text="Registrar Suscripcion" OnClick="Button11_Click" BorderStyle="Solid" CssClass="alert-dark" Height="61px" Width="206px" OnClientClick="return confirm(&quot;Desea Generar la Nueva Suscripcion&quot;);" />
            </div>

    </div>  

           <div style="height: 80px"></div>  

          <div>
               <div class="form-group">
               <asp:DropDownList ID="DropDownList14" runat="server" class="form-control" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
                     <asp:ListItem value ="0">--Buscar por tipo</asp:ListItem>
                  
                </asp:DropDownList>  
              </div>
              <div class="text-center">
               <asp:Button ID="Button12" runat="server" Text="Buscar los Precios de la suscripcion" OnClick="Button12_Click" BorderStyle="Inset" CssClass="alert-light" Height="61px" Width="307px" />
              </div>           
            </div>
           <div style="height: 80px"></div>  
          <h3>
              <asp:Literal ID="Lit1" runat="server"></asp:Literal>
          </h3>

        <div >           
            <asp:GridView ID="GridView3" runat="server" CellPadding="4" ForeColor="Black" GridLines="Vertical" Width="712px" BorderStyle="None" HorizontalAlign="Center" BackColor="White" BorderColor="#DEDFDE" BorderWidth="1px">
                <AlternatingRowStyle BackColor="White" />
                <FooterStyle BackColor="#CCCC99" />
                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#F7F7DE" />
                <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FBFBF2" />
                <SortedAscendingHeaderStyle BackColor="#848384" />
                <SortedDescendingCellStyle BackColor="#EAEAD3" />
                <SortedDescendingHeaderStyle BackColor="#575357" />
            </asp:GridView>
        </div>

           <h3>
              <asp:Literal ID="Lit2" runat="server"></asp:Literal>
          </h3>

          <div >           
            <asp:GridView ID="GridView4" runat="server" CellPadding="4" ForeColor="Black" GridLines="Vertical" Width="704px" BorderStyle="None" HorizontalAlign="Center" BackColor="White" BorderColor="#DEDFDE" BorderWidth="1px">
                <AlternatingRowStyle BackColor="White" />
                <FooterStyle BackColor="#CCCC99" />
                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#F7F7DE" />
                <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FBFBF2" />
                <SortedAscendingHeaderStyle BackColor="#848384" />
                <SortedDescendingCellStyle BackColor="#EAEAD3" />
                <SortedDescendingHeaderStyle BackColor="#575357" />
            </asp:GridView>
        </div>

           <h3>
              <asp:Literal ID="Literal1" runat="server"></asp:Literal>
          </h3>

          <div >           
            <asp:GridView ID="GridView5" runat="server" CellPadding="4" ForeColor="Black" GridLines="Vertical" Width="716px" BorderStyle="None" HorizontalAlign="Center" BackColor="White" BorderColor="#DEDFDE" BorderWidth="1px">
                <AlternatingRowStyle BackColor="White" />
                <FooterStyle BackColor="#CCCC99" />
                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#F7F7DE" />
                <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FBFBF2" />
                <SortedAscendingHeaderStyle BackColor="#848384" />
                <SortedDescendingCellStyle BackColor="#EAEAD3" />
                <SortedDescendingHeaderStyle BackColor="#575357" />
            </asp:GridView>
        </div>

           <h3>
              <asp:Literal ID="Literal2" runat="server"></asp:Literal>
          </h3>

          <div >           
            <asp:GridView ID="GridView6" runat="server" CellPadding="4" ForeColor="Black" GridLines="Vertical" Width="716px" BorderStyle="None" HorizontalAlign="Center" BackColor="White" BorderColor="#DEDFDE" BorderWidth="1px">
                <AlternatingRowStyle BackColor="White" />
                <FooterStyle BackColor="#CCCC99" />
                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#F7F7DE" />
                <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FBFBF2" />
                <SortedAscendingHeaderStyle BackColor="#848384" />
                <SortedDescendingCellStyle BackColor="#EAEAD3" />
                <SortedDescendingHeaderStyle BackColor="#575357" />
            </asp:GridView>
        </div>

           <h3>
              <asp:Literal ID="Literal3" runat="server"></asp:Literal>
          </h3>

          <div >           
            <asp:GridView ID="GridView7" runat="server" CellPadding="4" ForeColor="Black" GridLines="Vertical" Width="693px" BorderStyle="None" HorizontalAlign="Center" BackColor="White" BorderColor="#DEDFDE" BorderWidth="1px">
                <AlternatingRowStyle BackColor="White" />
                <FooterStyle BackColor="#CCCC99" />
                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#F7F7DE" />
                <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FBFBF2" />
                <SortedAscendingHeaderStyle BackColor="#848384" />
                <SortedDescendingCellStyle BackColor="#EAEAD3" />
                <SortedDescendingHeaderStyle BackColor="#575357" />
            </asp:GridView>
        </div>

           <h3>
              <asp:Literal ID="Literal4" runat="server"></asp:Literal>
          </h3>

          <div >           
            <asp:GridView ID="GridView8" runat="server" CellPadding="4" ForeColor="Black" GridLines="Vertical" Width="734px" BorderStyle="None" HorizontalAlign="Center" BackColor="White" BorderColor="#DEDFDE" BorderWidth="1px">
                <AlternatingRowStyle BackColor="White" />
                <FooterStyle BackColor="#CCCC99" />
                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#F7F7DE" />
                <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FBFBF2" />
                <SortedAscendingHeaderStyle BackColor="#848384" />
                <SortedDescendingCellStyle BackColor="#EAEAD3" />
                <SortedDescendingHeaderStyle BackColor="#575357" />
            </asp:GridView>
        </div>



            <div style="height: 80px"></div>  

         <header class="section-header wow fadeInUp">
          <h3>Registrar precio</h3>
        </header>

          <div class="form-group">
              <asp:TextBox ID="TextBox40" runat="server" class="form-control" placeholder="Codigo Del Precio" ></asp:TextBox> 
              
            </div>
          <div class="form-group">
              <asp:DropDownList ID="DropDownList6" runat="server" class="form-control" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
                   <asp:ListItem value ="0">--Tipo de Suscripcion</asp:ListItem>
                
                </asp:DropDownList>  
            </div>
          <div class="form-group">
         <asp:DropDownList ID="DropDownList8" runat="server" class="form-control" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
             <asp:ListItem value ="0">--Intervalo de Usuarios</asp:ListItem>
                     <asp:ListItem>de 1 a 10 empleados</asp:ListItem>
                    <asp:ListItem>de 11 a 15 empleados</asp:ListItem>
                     <asp:ListItem>de 16 a 25 empleados</asp:ListItem>
                    <asp:ListItem>de 26 a 40 empleados</asp:ListItem>
                     <asp:ListItem>de 41 a 50 empleados</asp:ListItem>
                    <asp:ListItem>de más de 51 empleados</asp:ListItem>
                </asp:DropDownList>  
           </div>
          <div class="form-group">
              <asp:TextBox ID="TextBox43" runat="server" class="form-control" placeholder="Precio" ></asp:TextBox> 
            </div>
           <div class="form-group">
             <asp:DropDownList ID="DropDownList7" runat="server" class="form-control" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
                </asp:DropDownList>  
            </div>

          <div class="text-center">
                <asp:Button ID="Button6" runat="server" Text="Actualizar Precio" OnClick="Button6_Click" BorderStyle="Dotted" CssClass="alert-dark" Height="59px" Width="221px" />
              <div style="height: 49px"></div>
                <asp:Button ID="Button7" runat="server" Text="Registrar Precio" OnClick="Button7_Click" BorderStyle="Dashed" CssClass="alert-dark" Height="59px" Width="221px" />
            </div>

          
      </div>
    </section><!-- End Services Section -->

 

    <!-- ======= Skills Section ======= -->
    <section id="skills">
      <div class="container">

        <header class="section-header">
          <h3>Tasa de cambio</h3>
          <p> Es necesario definir la tasa de cambio entre el Dólar y el Quetzal para cada fecha.</p>
        </header>

        <div class="skills-content">

          <div class="progress">
            <div class="progress-bar bg-success" role="progressbar" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100">
              <span class="skill">Dolar <i class="val">Q7.70</i></span>
            </div>
          </div>

          <div class="progress">
            <div class="progress-bar bg-info" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
              <span class="skill">Quetzal <i class="val">Q1</i></span>
            </div>
          </div>
        </div>
          <div class="form-row">
              <div class="form-group col-md-6">
                <asp:TextBox ID="TextBox45" runat="server" class="form-control" placeholder="Quetzal"></asp:TextBox>  
              </div>
              <div class="form-group col-md-6">
                <asp:TextBox ID="TextBox46" runat="server" class="form-control" placeholder="Dolar"></asp:TextBox>  
              </div>
            </div>
          <div class="text-center">
                <asp:Button ID="Button8" runat="server" Text="Registrar Taza de Cambio" OnClick="Button8_Click" BorderStyle="Solid" CssClass="alert-dark" Height="61px" Width="206px" />
            </div>
      </div>
    </section><!-- End Skills Section -->

    <!-- ======= Facts Section ======= -->
    <section id="facts" class="wow fadeIn">
      <div class="container">

        <header class="section-header">
          <h3>Gestión de la renta de módulos</h3>
          <p>Esta función consiste en permitir habilitar/deshabilitar módulos a los que tendrá acceso un cliente (PYME) registrado. </p>
        </header>
            <div class="form-row">
              <div class="form-group col-md-6">
                <asp:DropDownList ID="DropDownList1" runat="server" class="form-control" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                    
                </asp:DropDownList>  
              </div>
              <div class="form-group col-md-6">
                <asp:DropDownList ID="DropDownList2" runat="server" class="form-control" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                    <asp:ListItem value ="0">--Gestionar</asp:ListItem>
                    <asp:ListItem>Habilitado</asp:ListItem>
                    <asp:ListItem>Deshabilitado</asp:ListItem>
                </asp:DropDownList>   
              </div>
            </div>
        <div class="text-center">
                <asp:Button ID="Button9" runat="server" Text="Modificar Modulo" OnClick="Button9_Click" BorderStyle="Solid" CssClass="alert-dark" Height="61px" Width="206px" />
            </div>

        <div class="facts-img">
          <img src="assets/img/HELLO WOrLD.png" alt="" class="img-fluid">
        </div>

      </div>
    </section><!-- End Facts Section -->

 

  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  <footer id="footer">
    <div class="footer-top">
      <div class="container">
        <div class="row">

          <div class="col-lg-3 col-md-6 footer-info">
            <h3>Modulo Administrativo</h3>
        
          </div>

        



        </div>
      </div>
    </div>

    <div class="container">
      <div class="copyright">
        &copy; Copyright <strong>Hello World</strong>. All Rights Reserved
      </div>
      <div class="credits">
        <!--
        All the links in the footer should remain intact.
        You can delete the links only if you purchased the pro version.
        Licensing information: https://bootstrapmade.com/license/
        Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/buy/?theme=BizPage
      -->
       
      </div>
    </div>
  </footer><!-- End Footer -->
 </form>
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
