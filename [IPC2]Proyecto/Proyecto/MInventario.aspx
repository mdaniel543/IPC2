<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MInventario.aspx.cs" Inherits="Proyecto.MInventario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Modulo Inventario</title>


  <!-- Favicons -->

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Lato:400,300,700,900" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="4assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="4assets/vendor/animate.css/animate.min.css" rel="stylesheet">
  <link href="4assets/vendor/icofont/icofont.min.css" rel="stylesheet">
  <link href="4assets/vendor/venobox/venobox.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="4assets/css/style.css" rel="stylesheet">
</head>
<body>
    <form id="form1" runat="server">
          <header id="header" class="fixed-top">
    <div class="container">

      <div class="logo float-left">
        <h1 class="text-light"><a href="index.html"><span>Inventario de</span> <asp:Literal ID="Literal1" runat="server"></asp:Literal></a></h1>
        <!-- Uncomment below if you prefer to use an image logo -->
        <!-- <a href="index.html"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->
      </div>

      <%--<nav class="nav-menu float-right d-none d-lg-block">
        <ul>
          <li class="active"><a href="#header">Home</a></li>
          <li><a href="#about">Gestion de Bodegas</a></li>
          <li><a href="#services">Gestion de Costos</a></li>
          <li><a href="#portfolio">Transacciones por bodega</a></li>
          <li><a href="#team">Transacciones entre bodegas</a></li>
          <li><a href="#contact">Informes a presentar</a></li>
        </ul>
      </nav><!-- .nav-menu -->--%>

    </div>
  </header><!-- End #header -->

  <!-- ======= Hero Section ======= -->
  <section id="hero">
    <div class="hero-container">
      <h1>Bienvenido al Modulo de Inventario</h1>
      <a href="#about" class="btn-get-started scrollto">Empezemos</a>
    </div>
  </section><!-- #hero -->

  <main id="main">

    <!-- ======= About Us Section ======= -->
    <section id="about" class="about">
      <div class="container">

        <div class="section-title">
          <h2>Gestion de Bodegas</h2>
        </div>

        <div class="row">
          <div class="col-lg-6 order-1 order-lg-2">
              <div style="height: 350px"></div>
            <img src="4assets/img/control-inventario-clami.png" class="img-fluid" alt="">
          </div>
          <div class="col-lg-6 pt-4 pt-lg-0 order-2 order-lg-1">
            <h3>Crear bodega</h3>
               <div class="form-group">            
                 <asp:TextBox ID = "TextBox1" runat="server" class="form-control" placeholder="Codigo"></asp:TextBox>  
              </div>
              <div class="form-group">            
                 <asp:TextBox ID = "TextBox2" runat="server" class="form-control" placeholder="Nombre"></asp:TextBox>  
              </div>
              <div class="form-group">            
                 <asp:TextBox ID = "TextBox3" runat="server" class="form-control" placeholder="Descripcion"></asp:TextBox>  
              </div>
              <div class="form-group">            
                 <asp:TextBox ID = "TextBox4" runat="server" class="form-control" placeholder="Direccion"></asp:TextBox>  
              </div>
               <div class="text-center">
                <asp:Button ID="Button1" runat="server" Text="Crear Bodega" OnClick="Button1_Click" BorderStyle="Solid" CssClass="alert-light" Height="35px" Width="189px" />
            </div>
              <h3>Crear Pasillo</h3>
              <div class="form-group">
                  <asp:DropDownList ID="DropDownList1" runat="server" class="form-control" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                </asp:DropDownList>  
             </div>
              <div class="form-group">            
                 <asp:TextBox ID = "TextBox5" runat="server" class="form-control" placeholder="Numero de Pasillo"></asp:TextBox>  
              </div>
               <div class="form-group">            
                 <asp:TextBox ID = "TextBox6" runat="server" class="form-control" placeholder="Largo"></asp:TextBox>  
              </div>
               <div class="form-group">            
                 <asp:TextBox ID = "TextBox7" runat="server" class="form-control" placeholder="Ancho"></asp:TextBox>  
              </div>
              <div class="text-center">
                <asp:Button ID="Button2" runat="server" Text="Crear Pasillo" OnClick="Button2_Click" BorderStyle="Dotted" CssClass="alert-light" Height="35px" Width="189px" />
            </div>
              <h3>Crear Estante</h3>
               <div class="form-row">
              <div class="form-group col-md-6">            
                  <asp:DropDownList ID="DropDownList2" runat="server" class="form-control" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
                </asp:DropDownList>  
              </div>
              <div class="form-group col-md-6">
                  <div class="text-center">
                 <asp:Button ID="Button5" runat="server" Text="Escoger Bodega" OnClick="Button5_Click" BorderStyle="Dotted" CssClass="alert-link" Height="35px" Width="232px"/>
              </div>
                  </div>
            </div>
              <div class="form-group">
                  <asp:DropDownList ID="DropDownList3" runat="server" class="form-control" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
                </asp:DropDownList>  
             </div>
              
               <div class="form-group">            
                 <asp:TextBox ID = "TextBox8" runat="server" class="form-control" placeholder="Letra del Estante"></asp:TextBox>  
              </div>
              <div class="form-group">            
                 <asp:TextBox ID = "TextBox9" runat="server" class="form-control" placeholder="Largo"></asp:TextBox>  
              </div>
               <div class="form-group">            
                 <asp:TextBox ID = "TextBox10" runat="server" class="form-control" placeholder="Ancho"></asp:TextBox>  
              </div>
               <div class="form-group">            
                 <asp:TextBox ID = "TextBox11" runat="server" class="form-control" placeholder="Altura"></asp:TextBox>  
              </div>
                <div class="text-center">
                <asp:Button ID="Button3" runat="server" Text="Crear Estanteria" OnClick="Button3_Click" BorderStyle="Solid" CssClass="alert-light" Height="35px" Width="189px" />
            </div>
              <h3>Crear Nivel</h3>
                <div class="form-row">
              <div class="form-group col-md-6">            
                  <asp:DropDownList ID="DropDownList4" runat="server" class="form-control" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
                </asp:DropDownList>  
              </div>
              <div class="form-group col-md-6">
                  <div class="text-center">
                 <asp:Button ID="Button8" runat="server" Text="Escoger Bodega" OnClick="Button8_Click" BorderStyle="Dotted" CssClass="alert-link" Height="35px" Width="232px"/>
              </div>
                  </div>
            </div>
                <div class="form-row">
              <div class="form-group col-md-6">            
                  <asp:DropDownList ID="DropDownList5" runat="server" class="form-control" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
                </asp:DropDownList>  
              </div>
              <div class="form-group col-md-6">
                  <div class="text-center">
                 <asp:Button ID="Button6" runat="server" Text="Escoger Pasillo" OnClick="Button6_Click" BorderStyle="Dotted" CssClass="alert-link" Height="35px" Width="232px"/>
              </div>
                  </div>
            </div>
              <div class="form-group">            
                  <asp:DropDownList ID="DropDownList6" runat="server" class="form-control" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
                </asp:DropDownList>  
              </div>
               <div class="form-group">            
                 <asp:TextBox ID = "TextBox12" runat="server" class="form-control" placeholder="Numero de Nivel"></asp:TextBox>  
              </div>
              <div class="form-group">            
                 <asp:TextBox ID = "TextBox13" runat="server" class="form-control" placeholder="Altura"></asp:TextBox>  
              </div>
              <div class="text-center">
                <asp:Button ID="Button4" runat="server" Text="Crear Nivel" OnClick="Button4_Click" BorderStyle="Solid" CssClass="alert-light" Height="35px" Width="189px" />
            </div>
            </div>
          </div>
        </div>

      </div>
    </section><!-- End About Us Section -->

    <!-- ======= Services Section ======= -->
    <section id="services" class="services section-bg">
      <div class="container">

        <div class="section-title">
          <h2>Consulta de Bodegas</h2>
        </div>
           <div class="form-row">
              <div class="form-group col-md-6">            
                  <asp:DropDownList ID="DropDownList7" runat="server" class="form-control" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
                </asp:DropDownList>  
              </div>
              <div class="form-group col-md-6">
                  <div class="text-center">
                 <asp:Button ID="Button7" runat="server" Text="Consultar Bodega" OnClick="Button7_Click" BorderStyle="Dotted" CssClass="alert-heading" Height="35px" Width="232px"/>
              </div>
                  </div>
            </div>
          <div>

          </div>
       <h3> <asp:Literal ID="Literal2" runat="server"></asp:Literal></h3>
          <div>
              <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Width="1000px">
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
          <div style="height: 40px">

          </div>
          <div class="form-row">
              <div class="form-group col-md-6">            
                  <asp:DropDownList ID="DropDownList8" runat="server" class="form-control" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
                </asp:DropDownList>  
              </div>
              <div class="form-group col-md-6">
                  <div class="text-center">
                 <asp:Button ID="Button9" runat="server" Text="Consultar Pasillo" OnClick="Button9_Click" BorderStyle="Dotted" CssClass="alert-heading" Height="35px" Width="232px"/>
              </div>
                  </div>
            </div>
          <div>

          </div>
       <h3> <asp:Literal ID="Literal3" runat="server"></asp:Literal></h3>
          <div>
             <asp:GridView ID="GridView2" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Width="1000px">
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
          <div style="height: 50px">

          </div>
          <div class="form-row">
              <div class="form-group col-md-6">            
                  <asp:DropDownList ID="DropDownList9" runat="server" class="form-control" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
                </asp:DropDownList>  
              </div>
              <div class="form-group col-md-6">
                  <div class="text-center">
                 <asp:Button ID="Button10" runat="server" Text="Consultar Estanteria" OnClick="Button10_Click" BorderStyle="Dotted" CssClass="alert-heading" Height="35px" Width="232px"/>
              </div>
                  </div>
            </div>
          <div>

          </div>
       <h3> <asp:Literal ID="Literal4" runat="server"></asp:Literal></h3>
          <div>
              <asp:GridView ID="GridView3" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Width="1000px">
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


      </div>
    </section><!-- End Services Section -->

    <!-- ======= Call To Action Section ======= -->
    <section class="call-to-action">
      <div class="container">

        <div class="text-center">
          <h3>ENTRADA DE PRODUCTOS</h3>
            <div style="height: 40px">

            </div>
            <%-- <div class="form-row">
              <div class="form-group col-md-6">            
                  <asp:DropDownList ID="DropDownList12" runat="server" class="form-control" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
                       <asp:ListItem value ="0">--Envia la Transacion</asp:ListItem>
                    <asp:ListItem>Proveedor</asp:ListItem>
                    <asp:ListItem>Bodega</asp:ListItem>
                </asp:DropDownList>  
              </div>
              <div class="form-group col-md-6">
                  <div class="text-center">
                 <asp:Button ID="Button12" runat="server" Text="Especificar Transaccion" OnClick="Button12_Click" BorderStyle="Dotted" CssClass="alert-heading" Height="35px" Width="232px"/>
              </div>
                  </div>
            </div>--%>
            <h5 style="color: #FFFFFF">Producto que se recibe:</h5>
              <div class="form-group">            
                  <asp:DropDownList ID="DropDownList10" runat="server" class="form-control" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
                </asp:DropDownList>  
              </div>
    
            <h5 style="color: #FFFFFF">Seleccionar Proveedor:</h5>
              <div class="form-group">
                  <asp:DropDownList ID="DropDownList11" runat="server" class="form-control" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
                </asp:DropDownList>  
                  </div>
             <div class="form-row">
              <div class="form-group col-md-6">            
                  <asp:TextBox ID = "TextBox14" runat="server" class="form-control" placeholder="Cantidad de Productos"></asp:TextBox>  
              </div>
              <div class="form-group col-md-6">
                  <asp:TextBox ID = "TextBox15" runat="server" class="form-control" placeholder="Costo de cada Producto"></asp:TextBox>  s
                  </div>
            </div>
            <h5 style="color: #FFFFFF">Productos que se reciben sera manejados como:</h5>
              <div class="form-group">            
                  <asp:DropDownList ID="DropDownList13" runat="server" class="form-control" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
                        <asp:ListItem value ="0">--Configurar Costeo</asp:ListItem>
                    <asp:ListItem>Lotes</asp:ListItem>
                    <asp:ListItem>Saldo</asp:ListItem>
                </asp:DropDownList>  
              </div>
         
        </div>

      </div>
    </section><!-- End Call To Action Section -->

 

    <!-- ======= Frequently Asked Questions Section ======= -->
    <section id="faq" class="faq section-bg">
      <div class="container">

        <div class="section-title">
          <h2>Ubicar Productos</h2>
            <p>Seleccionar en que bodega, pasillo, estanteria y el nivel en donde ubicar los productos que estan entrando</p>
        </div>
           <h4>Seleccionar Bodega</h4> 
            <div class="form-row">
              <div class="form-group col-md-6">            
                  <asp:DropDownList ID="DropDownList14" runat="server" class="form-control" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
                </asp:DropDownList>  
              </div>
              <div class="form-group col-md-6">
                  <div class="text-center">
                 <asp:Button ID="Button13" runat="server" Text="Seleccionar Bodega" OnClick="Button13_Click" BorderStyle="Dotted" CssClass="alert-heading" Height="35px" Width="232px"/>
              </div>
                  </div>
            </div>
          <div style="height: 40px">

          </div>
      <h4>Seleccionar Pasillo</h4> 
          
          <div class="form-row">
              <div class="form-group col-md-6">            
                  <asp:DropDownList ID="DropDownList15" runat="server" class="form-control" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
                </asp:DropDownList>  
              </div>
              <div class="form-group col-md-6">
                  <div class="text-center">
                 <asp:Button ID="Button14" runat="server" Text="Seleccionar Pasillo" OnClick="Button14_Click" BorderStyle="Dotted" CssClass="alert-heading" Height="35px" Width="232px"/>
              </div>
                  </div>
            </div>
         <div style="height: 40px">

          </div>
       <h4>Seleccionar Estanteria</h4> 
        
          <div class="form-row">
              <div class="form-group col-md-6">            
                  <asp:DropDownList ID="DropDownList16" runat="server" class="form-control" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
                </asp:DropDownList>  
              </div>
              <div class="form-group col-md-6">
                  <div class="text-center">
                 <asp:Button ID="Button15" runat="server" Text="Seleccionar Estanteria" OnClick="Button15_Click" BorderStyle="Dotted" CssClass="alert-heading" Height="35px" Width="232px"/>
              </div>
                  </div>
            </div>
          <div style="height: 50px">

          </div>
         <h4>Seleccionar Nivel</h4> 
              <div class="form-group">            
                  <asp:DropDownList ID="DropDownList17" runat="server" class="form-control" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
                </asp:DropDownList>  
              </div>
          <div style="height: 50px">

          </div>
              <div class="form-group ">
                  <div class="text-center">
                 <asp:Button ID="Button16" runat="server" Text="Guardar la entrada y Ubicacion" OnClick="Button16_Click" BorderStyle="Solid" CssClass="alert-success" Height="61px" Width="274px"/>
              </div>
                  
            </div>
          
       <div style="height: 50px"></div>
          <asp:GridView ID="GridView4" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="1112px">
              <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
              <EditRowStyle BackColor="#999999" />
              <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
              <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
              <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
              <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
              <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
              <SortedAscendingCellStyle BackColor="#E9E7E2" />
              <SortedAscendingHeaderStyle BackColor="#506C8C" />
              <SortedDescendingCellStyle BackColor="#FFFDF8" />
              <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
          </asp:GridView>

      </div>
    </section><!-- End Frequently Asked Questions Section -->

    <!-- ======= Our Team Section ======= -->
    <section id="team" class="team">
      <div class="container">

        <div class="section-title">
          <h2>SALIDA DE PRODUCTOS</h2>
        </div>
          <div style="height: 40px">

            </div>
             <div class="form-row">
              <div class="form-group col-md-6">            
                  <asp:DropDownList ID="DropDownList18" runat="server" class="form-control" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
                       <asp:ListItem value ="0">--Envia la Transacion</asp:ListItem>
                    <asp:ListItem>Cliente</asp:ListItem>
                    <asp:ListItem>Bodega</asp:ListItem>
                </asp:DropDownList>  
              </div>
              <div class="form-group col-md-6">
                  <div class="text-center">
                 <asp:Button ID="Button11" runat="server" Text="Especificar Transaccion" OnClick="Button11_Click" BorderStyle="Dotted" CssClass="alert-heading" Height="35px" Width="232px"/>
              </div>
                  </div>
            </div>
          <div style="height: 40px">

            </div>
          <h5>Producto que se retira:</h5>
              <div class="form-group">            
                  <asp:DropDownList ID="DropDownList19" runat="server" class="form-control" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
                </asp:DropDownList>  
              </div>
    
            <h5><asp:Literal ID="Literal6" runat="server"></asp:Literal></h5>
              <div class="form-group">
                  <asp:DropDownList ID="DropDownList20" runat="server" class="form-control" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
                </asp:DropDownList>  
                  </div>

          <div class="form-group">
                  <asp:TextBox ID = "TextBox16" runat="server" class="form-control" placeholder="Cantidad de Producto a retirar"></asp:TextBox>
                  </div>
          <h5>Productos que se retiran son manejados como:</h5>
              <div class="form-group">            
                  <asp:DropDownList ID="DropDownList21" runat="server" class="form-control" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
                        <asp:ListItem value ="0">--Configurar Costeo</asp:ListItem>
                    <asp:ListItem>Lotes</asp:ListItem>
                    <asp:ListItem>Saldo</asp:ListItem>
                </asp:DropDownList>  
              </div>
            <div style="height: 40px">

            </div>
          <div class="form-group ">
                  <div class="text-center">
                 <asp:Button ID="Button17" runat="server" Text="Solicitar salida" OnClick="Button17_Click" BorderStyle="Dotted" CssClass="alert-light" Height="37px" Width="274px"/>
              </div>
            </div>
           <div style="height: 40px">

            </div>
          <h4><asp:Literal ID="Literal7" runat="server"></asp:Literal></h4>
          <asp:GridView ID="GridView5" runat="server" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Width="1151px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px">
              <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
              <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
              <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
              <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
              <SortedAscendingCellStyle BackColor="#F7F7F7" />
              <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
              <SortedDescendingCellStyle BackColor="#E5E5E5" />
              <SortedDescendingHeaderStyle BackColor="#242121" />
          </asp:GridView>
          <div>

          </div>
          <div style="height: 40px"> </div>
           <h3 style="color: #CC3300"><asp:Literal ID="Literal8" runat="server"></asp:Literal></h3>
           
          <div style="height: 40px">

          </div>
          <h3>Seleccionar la ubicacion del producto a retirar:</h3>
           <div class="form-group">            
                  <asp:DropDownList ID="DropDownList22" runat="server" class="form-control" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
                </asp:DropDownList>  
              </div>
           <div style="height: 40px">

            </div>
          <div class="form-group ">
                  <div class="text-center">
                 <asp:Button ID="Button18" runat="server" Text="Retirar Productos" OnClick="Button18_Click" BorderStyle="Solid" CssClass="alert-success" Height="61px" Width="274px"/>
              </div>
            </div>
          <div style="height: 40px">

            </div>

          <asp:GridView ID="GridView6" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="1130px">
              <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
              <EditRowStyle BackColor="#999999" />
              <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
              <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
              <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
              <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
              <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
              <SortedAscendingCellStyle BackColor="#E9E7E2" />
              <SortedAscendingHeaderStyle BackColor="#506C8C" />
              <SortedDescendingCellStyle BackColor="#FFFDF8" />
              <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
          </asp:GridView>
          <div style ="height: 50px">
              </div>
      <div class="container">

        <div class="section-title">
          <h2 style="color: #0000FF"><asp:Literal ID="Literal5" runat="server"></asp:Literal></h2>
        </div>

          <div style="height: 40px">
          </div>

      <h4><asp:Literal ID="Literal9" runat="server"></asp:Literal></h4> 
          <div class="form-row">
              <div class="form-group col-md-6">            
                  <asp:DropDownList ID="DropDownList25" runat="server" class="form-control" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged" Visible="False">
                </asp:DropDownList>  
              </div>
              <div class="form-group col-md-6">
                  <div class="text-center">
                 <asp:Button ID="Button21" runat="server" Text="Seleccionar Pasillo" OnClick="Button21_Click" BorderStyle="Dotted" CssClass="alert-heading" Height="35px" Width="232px" Visible="False"/>
              </div>
                  </div>
            </div>
         <div style="height: 40px">

          </div>
       <h4><asp:Literal ID="Literal10" runat="server"></asp:Literal></h4> 
          <div class="form-row">
              <div class="form-group col-md-6" dir="auto">            
                  <asp:DropDownList ID="DropDownList26" runat="server" class="form-control" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged" Visible="False">
                </asp:DropDownList>  
              </div>
              <div class="form-group col-md-6">
                  <div class="text-center">
                 <asp:Button ID="Button22" runat="server" Text="Seleccionar Estanteria" OnClick="Button22_Click" BorderStyle="Dotted" CssClass="alert-heading" Height="35px" Width="232px" Visible="False"/>
              </div>
                  </div>
            </div>
          <div style="height: 50px">

          </div>
         <h4><asp:Literal ID="Literal11" runat="server"></asp:Literal></h4> 
              <div class="form-group">            
                  <asp:DropDownList ID="DropDownList27" runat="server" class="form-control" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged" Visible="False">
                </asp:DropDownList>  
              </div>
          <div style="height: 50px">

          </div>
              <div class="form-group ">
                  <div class="text-center">
                 <asp:Button ID="Button23" runat="server" Text="Guardar la entrada y Ubicacion en la bodega" OnClick="Button23_Click" BorderStyle="Solid" CssClass="alert-success" Height="61px" Width="380px" Visible="False"/>
              </div>
                  
            </div>
          
       <div style="height: 50px"></div>
          <asp:GridView ID="GridView8" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="1112px">
              <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
              <EditRowStyle BackColor="#999999" />
              <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
              <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
              <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
              <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
              <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
              <SortedAscendingCellStyle BackColor="#E9E7E2" />
              <SortedAscendingHeaderStyle BackColor="#506C8C" />
              <SortedDescendingCellStyle BackColor="#FFFDF8" />
              <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
          </asp:GridView>

      </div>
          

      </div>
    </section><!-- End Our Team Section -->

    <!-- ======= Contact Us Section ======= -->
    <section id="contact" class="contact section-bg">
      <div class="container">

        <div class="section-title">
          <h2>Reportes</h2>
          <p></p>
        </div>
           <div class="form-row">
              <div class="form-group col-md-6">
                  <h4>Inventario por Bodega:</h4>
                  <div style="height: 25px">
                </div>
                   <h6>Seleccionar Bodega para hacerle la consulta</h6>
                    <asp:DropDownList ID="DropDownList23" runat="server" class="form-control" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
                </asp:DropDownList>  
                  <div style="height: 15px">
                </div>
                  <div class="text-center">
                 <asp:Button ID="Button20" runat="server" Text="Generar Reporte" OnClick="Button20_Click" BorderStyle="Dotted" CssClass="badge-secondary focus" Height="70px" Width="232px"/>
              </div> 
              </div>
              <div class="form-group col-md-6">
                  <h4>Inventario por Producto:</h4>
                  <div style="height: 25px">
                 </div>
                  <h6>Seleccionar producto para hacerle la consulta</h6>
                    <asp:DropDownList ID="DropDownList24" runat="server" class="form-control" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
                </asp:DropDownList>  
                  <div style="height: 15px">
                </div>
                  <div class="text-center">
                 <asp:Button ID="Button19" runat="server" Text="Generar Reporte" OnClick="Button19_Click" BorderStyle="Dotted" CssClass="badge-secondary focus" Height="70px" Width="232px"/>
              </div>
                  </div>
            </div>
          <div style="height: 50px">
                </div>
          <asp:GridView ID="GridView7" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="238px">
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
    </section><!-- End Contact Us Section -->


  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  <footer id="footer">
    <div class="container">
      <div class="copyright">
        &copy; Copyright <strong><span>HEllo World</span></strong>. All Rights Reserved
      </div>
      <div class="credits">
        <!-- All the links in the footer should remain intact. -->
        <!-- You can delete the links only if you purchased the pro version. -->
        <!-- Licensing information: https://bootstrapmade.com/license/ -->
        <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/free-one-page-bootstrap-template-amoeba/ -->
        Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
      </div>
    </div>
  </footer><!-- End #footer -->

  <a href="#" class="back-to-top"><i class="icofont-simple-up"></i></a>

  <!-- Vendor JS Files -->
  <script src="4assets/vendor/jquery/jquery.min.js"></script>
  <script src="4assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="4assets/vendor/jquery.easing/jquery.easing.min.js"></script>
  <script src="4assets/vendor/php-email-form/validate.js"></script>
  <script src="4assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="4assets/vendor/venobox/venobox.min.js"></script>

  <!-- Template Main JS File -->
  <script src="4assets/js/main.js"></script>
    </form>
</body>
</html>
