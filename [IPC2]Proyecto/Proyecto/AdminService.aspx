<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminService.aspx.cs" Inherits="Proyecto.AdminService" %>

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
        <h1 class="text-light"><a href="index.html"><span>Admin de </span><asp:Literal ID="Lit1" runat="server"></asp:Literal></a></h1>
        <!-- Uncomment below if you prefer to use an image logo -->
        <!-- <a href="index.html"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->
      </div>

      <nav class="nav-menu d-none d-lg-block">
        <ul>
          <li class="active"><a href="#header">Inicio</a></li>
          <li><a href="#about">Suscripcion</a></li>
          <li><a href="#services">Cambio de Suscripcion</a></li>
          <li><a href="#team">Modulos</a></li>
          <li><a href="#portfolio">Usuarios Operativos</a></li>
          <li><a href="#blog">Cambio de Tarjeta de Credito</a></li>

        </ul>
      </nav><!-- .nav-menu -->

    </div>
  </header><!-- End Header -->

  <!-- ======= Slider Section ======= -->
  <div id="home" class="slider-area">
    <div class="bend niceties preview-2">
      <div id="ensign-nivoslider" class="slides">
        <img src="1assets/img/slider/slider2.jpg" alt="" title="#slider-direction-2" />
        <img src="1assets/img/slider/slider3.jpg" alt="" title="#slider-direction-3" />
      </div>

    

      <!-- direction 2 -->
      <div id="slider-direction-2" class="slider-direction slider-two">
        <div class="container">
          <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
              <div class="slider-content text-center">
                <!-- layer 1 -->
                <!-- layer 2 -->
                <div class="layer-1-2 wow slideInUp" data-wow-duration="2s" data-wow-delay=".1s">
                  <h1 class="title2"> <asp:Literal ID="Literal2" runat="server"></asp:Literal> a otro nivel</h1>
                </div>
                <!-- layer 3 -->
                
              </div>
            </div>
          </div>
        </div>
      </div>

      <!-- direction 3 -->
      <div id="slider-direction-3" class="slider-direction slider-two">
        <div class="container">
          <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
              <div class="slider-content">
                <!-- layer 1 -->
    
                <!-- layer 2 -->
                <div class="layer-1-2 wow slideInUp" data-wow-duration="2s" data-wow-delay=".1s">
                  <h1 class="title2">Operaciones y administraciones que solo HELLO WORLD te puede dar </h1>
                </div>
                
                
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div><!-- End Slider -->

  <main id="main">

    <!-- ======= About Section ======= -->
    <div id="about" class="about-area area-padding">
      <div class="container">
        <div class="row">
          <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="section-headline text-center">
              <h2>Ver datos de suscripcion</h2>
            </div>
          </div>
        </div>
           <div style="height: 10px">
                  </div>
    <div class="text-center">
                <asp:Button ID="Button1" runat="server" Text="Actualizar" OnClick="Button1_Click"   BorderStyle ="Groove" CssClass="alert-light" Height="47px" Width="178px" />
            </div>
           <div style="height: 40px">

                  </div>
               <div>
              <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="1167px" HorizontalAlign="Center" Height="83px">
                  <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                  <EditRowStyle BackColor="#999999" />
                  <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                  <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                  <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                  <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                  <SelectedRowStyle BackColor="#E2DED6" ForeColor="#333333" Font-Bold="True" />
                  <SortedAscendingCellStyle BackColor="#E9E7E2" />
                  <SortedAscendingHeaderStyle BackColor="#506C8C" />
                  <SortedDescendingCellStyle BackColor="#FFFDF8" />
                  <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
              </asp:GridView>

          </div>
          <div style="height: 45px"></div>
            
          <!-- single-well start-->
        
                <a href="#">
                </a>
          <h4>
                  Usuarios de suscripcion en uso:
                </h4>
                
                  <div>

                  </div>
                  
               <div style="height: 10px"></div>
                  <div>
              <asp:GridView ID="GridView2" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="1073px" Height="83px">
                  <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                  <EditRowStyle BackColor="#999999" />
                  <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                  <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                  <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                  <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                  <SelectedRowStyle BackColor="#E2DED6" ForeColor="#333333" Font-Bold="True" />
                  <SortedAscendingCellStyle BackColor="#E9E7E2" />
                  <SortedAscendingHeaderStyle BackColor="#506C8C" />
                  <SortedDescendingCellStyle BackColor="#FFFDF8" />
                  <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
              </asp:GridView>
          </div>
              <div style="height: 45px">

              </div>
          <!-- single-well end-->
          
           <h4><asp:Literal ID="Literal1" runat="server"></asp:Literal></h4> 
                
              </div>
         
       
           
      
    </div><!-- End About Section -->

    <!-- ======= Services Section ======= -->
    <div id="services" class="services-area area-padding">
      <div class="container">
        <div class="row">
          <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="section-headline services-head text-center">
              <h2 style="font-style: italic; color: #99E0ED;">Cambios en Suscripcion</h2>
            </div>
          </div>
        </div>
          <div style="height: 65px">

              </div>
                <div class="form-row">
              <div class="form-group col-md-6"> 
                  <div>
                      <h4>Cambiar Suscripcion</h4>
                  </div>
                  <asp:DropDownList ID="DropDownList7" runat="server" class="form-control" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
                </asp:DropDownList>  
                  <div style="height: 45px">

              </div>
                  <div class="text-center">
                 <asp:Button ID="Button11" runat="server" Text="Solicitar Cambio de Suscripcion" OnClick="Button11_Click" BorderStyle="Dotted" CssClass="alert-light" Height="72px" Width="220px" OnClientClick="return confirm(&quot;Seguro de  cambiar el tipo de suscripcion&quot;);" />
              </div>  
              </div>
              <div class="form-group col-md-6">
                  <div>
                      <h4>Cambiar Numero de Usuarios</h4>
                  </div>
                   <asp:DropDownList ID="DropDownList8" runat="server" class="form-control" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
                        <asp:ListItem value ="0">--Usuarios</asp:ListItem>
                    <asp:ListItem>de 1 a 10 empleados</asp:ListItem>
                    <asp:ListItem>de 11 a 15 empleados</asp:ListItem>
                     <asp:ListItem>de 16 a 25 empleados</asp:ListItem>
                    <asp:ListItem>de 26 a 40 empleados</asp:ListItem>
                     <asp:ListItem>de 41 a 50 empleados</asp:ListItem>
                    <asp:ListItem>de más de 50 empleados</asp:ListItem>
                </asp:DropDownList>  
                  <div style="height: 45px">

              </div>
                  <div class="text-center">
                 <asp:Button ID="Button9" runat="server" Text="Solicitar cambio de usuarios" OnClick="Button9_Click" BorderStyle="Dotted" CssClass="alert-light" Height="68px" Width="232px" OnClientClick="return confirm(&quot;Seguro de eliminar el modulo?, no habra ningun tipo devolucion de pago &quot;);" />
              </div>  
                  </div>
            </div>



      </div>
    </div><!-- End Services Section -->

    

    <!-- ======= Team Section ======= -->
    <div id="team" class="our-team-area area-padding">
      <div class="container">
        <div class="row">
          <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="section-headline text-center">
              <h2>Modulos en su suscripcion</h2>
            </div>
          </div>
        </div>
           <div style="height: 10px">

              </div>
          <div class="text-center">
                <asp:Button ID="Button2" runat="server" Text="VER" OnClick="Button2_Click" BorderStyle="Groove" CssClass="alert-light" Height="47px" Width="182px" />
               
            </div>
           <div style="height: 45px">

              </div>
        <div >
             
            <div>
                <h5>Suscripciones Disponibles</h5>
            </div>
          <div>
              <asp:GridView ID="GridView3" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="813px" Height="157px" HorizontalAlign="Center">
                  <AlternatingRowStyle BackColor="White" />
                  <EditRowStyle BackColor="#7C6F57" />
                  <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                  <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                  <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                  <RowStyle BackColor="#E3EAEB" />
                  <SelectedRowStyle BackColor="#C5BBAF" ForeColor="#333333" Font-Bold="True" />
                  <SortedAscendingCellStyle BackColor="#F8FAFA" />
                  <SortedAscendingHeaderStyle BackColor="#246B61" />
                  <SortedDescendingCellStyle BackColor="#D4DFE1" />
                  <SortedDescendingHeaderStyle BackColor="#15524A" />
              </asp:GridView>
          </div>
             <div style="height: 45px">

              </div>
            <div>
                <h5>Suscripciones No Disponibles</h5>
            </div>
            <div>
              <asp:GridView ID="GridView4" runat="server" CellPadding="4" ForeColor="#333333" Width="785px" Height="171px" HorizontalAlign="Center" GridLines="None">
                  <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                  <EditRowStyle BackColor="#999999" />
                  <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                  <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                  <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                  <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                  <SelectedRowStyle BackColor="#E2DED6" ForeColor="#333333" Font-Bold="True" />
                  <SortedAscendingCellStyle BackColor="#E9E7E2" />
                  <SortedAscendingHeaderStyle BackColor="#506C8C" />
                  <SortedDescendingCellStyle BackColor="#FFFDF8" />
                  <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
              </asp:GridView>
          </div>
        </div>
          <div style="height: 65px">

              </div>
          
         
            <div class="section-headline text-center">
              <h4>Contratar Nuevos Modulos</h4> 
        </div>
          <div style="height: 45px">

              </div>
          <div class="form-row">
              <div class="form-group col-md-6">            
                  <asp:DropDownList ID="DropDownList1" runat="server" class="form-control" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
                </asp:DropDownList>  
              </div>
              <div class="form-group col-md-6">
                  <div class="text-center">
                 <asp:Button ID="Button3" runat="server" Text="Contratar nuevo modulo" OnClick="Button3_Click" BorderStyle="Dotted" CssClass="alert-dark" Height="72px" Width="232px" OnClientClick="return confirm(&quot;Seguro de contrar el nuevo modulo? &quot;);" />
              </div>
                  </div>
            </div>
          <div style="height: 65px">

              </div>
          <h5>Mis Modulos Contratados:</h5> 
          <div>
              <asp:GridView ID="GridView5" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="789px" Height="98px" HorizontalAlign="Center">
                  <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                  <EditRowStyle BackColor="#999999" />
                  <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                  <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                  <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                  <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                  <SelectedRowStyle BackColor="#E2DED6" ForeColor="#333333" Font-Bold="True" />
                  <SortedAscendingCellStyle BackColor="#E9E7E2" />
                  <SortedAscendingHeaderStyle BackColor="#506C8C" />
                  <SortedDescendingCellStyle BackColor="#FFFDF8" />
                  <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
              </asp:GridView>
          </div>
          <div style="height: 65px">
              </div>
       
            <div class="section-headline text-center">
              <h4>Eliminar Modulos en mi suscripcion</h4>
            </div>
         

           <div style="height: 20px">
              </div>

          <div class="form-row">

              <div class="form-group col-md-6">            
                  <asp:DropDownList ID="DropDownList2" runat="server" class="form-control" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
                </asp:DropDownList>  
              </div>
              <div class="form-group col-md-6">
                  <div class="text-center">
                 <asp:Button ID="Button4" runat="server" Text="Eliminar modulo" OnClick="Button4_Click" BorderStyle="Dotted" CssClass="alert-dark" Height="72px" Width="232px" OnClientClick="return confirm(&quot;Seguro de eliminar el modulo?, no habra ningun tipo devolucion de pago &quot;);" />
              </div>
                  </div>
            </div>


      </div>

    </div><!-- End Team Section -->

   


    <!-- ======= Testimonials Section ======= -->
    <div class="testimonials-area">
      <div class="testi-inner area-padding">
        <div class="testi-overly"></div>
        <div class="container ">
          <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
              <!-- Start testimonials Start -->
              <div class="testimonial-content text-center">
                <%--<a class="quate" href="#"><i class="fa fa-quote-right"></i></a>--%>
                <!-- start testimonial carousel -->
               <div class="section-headline text-center">
              <h2 style="color: #3EC1D5;">Creacion de Usuarios Operativos</h2>
            </div>
                 <div class="form-group">
              <asp:TextBox ID = "TextBox1" runat="server" class="form-control" placeholder="CUI"></asp:TextBox>  
          </div>

          <div class="form-row">
              <div class="form-group col-md-6">            
                 <asp:TextBox ID = "TextBox2" runat="server" class="form-control" placeholder="Nombre"></asp:TextBox>  
              </div>
              <div class="form-group col-md-6">
                  <asp:TextBox ID = "TextBox3" runat="server" class="form-control" placeholder="Correo"></asp:TextBox>  
                  </div>
            </div>
          <div class="form-row">
              <div class="form-group col-md-6">            
                 <asp:TextBox ID = "TextBox4" runat="server" class="form-control" placeholder="Puesto"></asp:TextBox>  
              </div>
              <div class="form-group col-md-6">
                  <asp:TextBox ID = "TextBox5" runat="server" class="form-control" placeholder="Numero Celular"></asp:TextBox>  
                  </div>
            </div>
          <div class="text-center">
                <asp:Button ID="Button5" runat="server" Text="Crear Usuario" OnClick="Button5_Click" BorderStyle="Solid" CssClass="alert-dark" Height="61px" Width="206px" />
            </div>
                   
                  <!-- End single item -->
              
              </div>
              <!-- End testimonials end -->
            </div>
            <!-- End Right Feature -->
          </div>
        </div>
      </div>
    </div><!-- End Testimonials Section -->

         <!-- ======= Portfolio Section ======= -->
    <div id="portfolio" class="portfolio-area area-padding fix">
      <div class="container">
        <div class="row">
          <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
            <div class="section-headline text-center">
              <h2>Usuarios Operativos</h2>
            </div>
          </div>
        </div>

          <div>
              <asp:GridView ID="GridView6" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="957px" Height="98px" HorizontalAlign="Center">
                  <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                  <EditRowStyle BackColor="#999999" />
                  <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                  <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                  <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                  <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                  <SelectedRowStyle BackColor="#E2DED6" ForeColor="#333333" Font-Bold="True" />
                  <SortedAscendingCellStyle BackColor="#E9E7E2" />
                  <SortedAscendingHeaderStyle BackColor="#506C8C" />
                  <SortedDescendingCellStyle BackColor="#FFFDF8" />
                  <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
              </asp:GridView>
          </div>
          <div style="height: 65px">
              </div>
          
            <div class="section-headline text-center">
              <h4>Acesso a los Usuarios</h4>
            </div>
          
          <div class="form-row">
              <div class="form-group col-md-6">            
                 <asp:DropDownList ID="DropDownList3" runat="server" class="form-control" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
                </asp:DropDownList>  
              </div>
              <div class="form-group col-md-6">
                  <asp:DropDownList ID="DropDownList4" runat="server" class="form-control" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
                </asp:DropDownList>  
                  </div>
            </div>

           <div class="text-center">
                <asp:Button ID="Button6" runat="server" Text="Darle Acceso al trabjador" OnClick="Button6_Click" BorderStyle="Solid" CssClass="alert-dark" Height="61px" Width="206px" />
            </div>
          <div style="height: 65px">
              </div>

           <div>
              <asp:GridView ID="GridView7" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="957px" Height="98px" HorizontalAlign="Center">
                  <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                  <EditRowStyle BackColor="#999999" />
                  <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                  <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                  <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                  <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                  <SelectedRowStyle BackColor="#E2DED6" ForeColor="#333333" Font-Bold="True" />
                  <SortedAscendingCellStyle BackColor="#E9E7E2" />
                  <SortedAscendingHeaderStyle BackColor="#506C8C" />
                  <SortedDescendingCellStyle BackColor="#FFFDF8" />
                  <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
              </asp:GridView>
          </div>
          <div style="height: 65px">
              </div>
        
            <div class="section-headline text-center">
              <h4>Eliminar al trabajador</h4>
            </div>
        
          <div class="form-group">
                  <asp:DropDownList ID="DropDownList5" runat="server" class="form-control" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
                </asp:DropDownList>  
                  </div>

          <div class="text-center">
                <asp:Button ID="Button7" runat="server" Text="Eliminar Trabajador" OnClick="Button7_Click" BorderStyle="Solid" CssClass="alert-dark" Height="52px" Width="206px" OnClientClick="return confirm(&quot;Seguro de elminar al trabajador&quot;);" />
            </div>

      </div>
    </div><!-- End Portfolio Section -->

    <!-- ======= Blog Section ======= -->
    <div id="blog" class="blog-area">
      <div class="blog-inner area-padding">
        <div class="blog-overly"></div>
        <div class="container ">
          <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
              <div class="section-headline text-center">
                <h2>Tarjeta de Credito Para Pago</h2>
              </div>
            </div>
          </div>
          
             <div class="form-row">
              <div class="form-group col-md-6">            
                  <asp:DropDownList ID="DropDownList6" runat="server" class="form-control" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
                </asp:DropDownList>  
              </div>
              <div class="form-group col-md-6">
                  <div class="text-center">
                 <asp:Button ID="Button8" runat="server" Text="Hacer de Pago" OnClick="Button8_Click" BorderStyle="Dotted" CssClass="alert-link" Height="59px" Width="207px" OnClientClick="return confirm(&quot;Seguro que desea hacer la tarjeta de pago&quot;);" />
              </div>
                  </div>
            </div>

               <div style="height: 65px">
              </div>
              <h4>Tarjeta Activa de Pago</h4>
               <div>

              <asp:GridView ID="GridView8" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="957px" Height="98px" HorizontalAlign="Center">
                  <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                  <EditRowStyle BackColor="#999999" />
                  <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                  <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                  <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                  <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                  <SelectedRowStyle BackColor="#E2DED6" ForeColor="#333333" Font-Bold="True" />
                  <SortedAscendingCellStyle BackColor="#E9E7E2" />
                  <SortedAscendingHeaderStyle BackColor="#506C8C" />
                  <SortedDescendingCellStyle BackColor="#FFFDF8" />
                  <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
              </asp:GridView>
          </div>
            <div style="height: 65px">
              </div>
       
              <header class="section-header wow fadeInUp">
          <h3>Registrar Nueva Tarjeta </h3>
        </header>          
          <p>Para registrar una tarjeta al ciente porfavor llene los siguientes datos:</p>
          <div></div>
      
            <div class="form-row">
           <div class="form-group col-md-6">
                 <asp:TextBox ID="TextBox6" runat="server" class="form-control" placeholder="Numero de la tarjeta"></asp:TextBox>
              <%--<textarea class="form-control" name="message" rows="5" data-rule="required" data-msg="Please write something for us" placeholder="Message"></textarea>--%>
              <div class="validate"></div>
            </div>
                    <div class="form-group col-md-6">
                 <asp:TextBox ID="TextBox7" runat="server" class="form-control" placeholder="Nombre de la tarjeta"></asp:TextBox>
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
      </div>
    </div><!-- End Blog Section -->




  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  <footer>
    <div class="footer-area">
      <div class="container">
        <div class="row">
          <div class="col-md-4 col-sm-4 col-xs-12">
            <div class="footer-content">
              <div class="footer-head">
                <div class="footer-logo">
                  <h2><span>A</span>dministrador de Servicio  <asp:Literal ID="Literal4" runat="server"></asp:Literal></h2>
                </div>

                
                <div class="footer-icons">
                  <ul>
                    <li>
                      <a href="#"><i class="fa fa-facebook"></i></a>
                    </li>
                    <li>
                      <a href="#"><i class="fa fa-twitter"></i></a>
                    </li>
                    <li>
                      <a href="#"><i class="fa fa-google"></i></a>
                    </li>
                    <li>
                      <a href="#"><i class="fa fa-pinterest"></i></a>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
          <!-- end single footer -->
          <div class="col-md-4 col-sm-4 col-xs-12">
            <div class="footer-content">
              <div class="footer-head">
                <h4>Informacion <asp:Literal ID="Literal3" runat="server"></asp:Literal></h4>
                <p>
                  EMPRESA A OTRO NIVEL 
                </p>
                <div class="footer-contacts">
                  <p><span>Tel:</span> +123 456 789</p>
                  <p><span>Email:</span> contact@example.com</p>
                  <p><span>Trabajando:</span> 9am-5pm</p>
                </div>
              </div>
            </div>
          </div>
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
