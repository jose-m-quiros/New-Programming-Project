<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="New_Programming_Project.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="styles/index.css" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <nav class="navbar navbar-expand-lg bg-body-tertiary">
    <div class="container-fluid">
        <a class="navbar-brand" href="index.aspx">Inicio</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarScroll" aria-controls="navbarScroll" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarScroll">
            <ul class="navbar-nav me-auto my-2 my-lg-0 navbar-nav-scroll" style="--bs-scroll-height: 100px;">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="services.aspx">Servicios</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="payment methods.aspx">Métodos de Pago</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="contacts.aspx">Contactos</a>
                </li>
            </ul>
            <div runat="server" id="userSection" class="d-flex position-relative">
                <asp:HyperLink ID="hplRegistrar" runat="server" NavigateUrl="~/user index.aspx" CssClass=""><button class="btn btn-outline-primary" type="button">Registrar</button></asp:HyperLink>
                <div class="dropdown" runat="server" id="userDropdown" style="display:none;">
                    <button class="btn btn-outline-primary dropdown-toggle" type="button" id="dropdownMenuButton" data-bs-toggle="dropdown" aria-expanded="false">
                        <asp:Label ID="lblUserName" runat="server" Text=""></asp:Label>
                    </button>
                    <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="dropdownMenuButton">
                        <li><a class="dropdown-item" href="account.aspx">Cuenta</a></li>
                        <li><a class="dropdown-item" href="logout.aspx">Cerrar Sesión</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</nav>


            <div class="container text-center">
      
                 <div class="col"><h1 class="SPIKEDTECH">SPIKEDTECH</h1>
 <p class="tiendavirtual">Tienda Virtual</p></div>
          
      </div>

                <div class=" container accordion" id="accordionExample">
  <div class="accordion-item">
    <h2 class="accordion-header">
      <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
        Tipos De Envio
      </button>
    </h2>
    <div id="collapseOne" class="accordion-collapse collapse " data-bs-parent="#accordionExample">
      <div class="accordion-body">
        Envío Estándar: El envío estándar es la opción más económica, con un tiempo de entrega de 5 a 7 días hábiles. Ideal para pedidos que no son urgentes. <br /> <br />

Envío Expreso: Con el envío expreso, tu pedido llegará en 2 a 3 días hábiles. Es una opción más rápida y eficiente para aquellos que necesitan su producto con mayor prontitud.<br /> <br />

Envío al Día Siguiente: Para los pedidos que necesitan ser entregados con urgencia, ofrecemos la opción de envío al día siguiente. Asegúrate de realizar tu pedido antes de las 12:00 p.m. para que se procese el mismo día.<br /> <br />

Envío Internacional: Realizamos envíos a nivel mundial con tiempos de entrega que varían entre 7 y 15 días hábiles, dependiendo del destino. Por favor, ten en cuenta que pueden aplicarse cargos adicionales por aduanas e importación.<br /> <br />

Recogida en Tienda: Si prefieres recoger tu pedido en persona, puedes seleccionar la opción de recogida en tienda. Recibirás una notificación cuando tu pedido esté listo para ser recogido.<br />
      </div>
    </div>
  </div>
  <div class="accordion-item">
    <h2 class="accordion-header">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
        Costos
      </button>
    </h2>
    <div id="collapseTwo" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
      <div class="accordion-body">
        Envío Estándar: ₡3,000 <br /> <br />

        Envío Expreso: ₡6,000<br /> <br />

        Envío al Día Siguiente: ₡10,000<br /> <br />

        Envío Internacional: ₡15,000<br /> <br />

        Recogida en Tienda: Gratis<br />
      </div>
    </div>
  </div>
  <div class="accordion-item">
    <h2 class="accordion-header">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
        Casilleros
      </button>
    </h2>
    <div id="collapseThree" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
      <div class="accordion-body">
        Nuestros casilleros están diseñados para proporcionar un almacenamiento seguro y conveniente para tus pertenencias. Están disponibles en varios tamaños para adaptarse a diferentes necesidades y se pueden alquilar por períodos cortos o largos. Cada casillero cuenta con un sistema de cerradura de alta seguridad para garantizar la protección de tus objetos personales.
      </div>
    </div>
  </div>
</div>



            <h1 class="text-center h1productos">Productos Disponibles</h1>
            <div class="container text-center center-vertical">
              <div class="row align-items-start">
                <div class="col">
                  <div class="card" style="width: 18rem;">
                      <img src="img/audifonos.png" class="card-img-top" alt="..." />
                      <div class="card-body">
                        <p class="card-text">Audífonos Redmi blancos
                            <br />
                        Precio: ¢10 000</p>
                      </div>
                    </div>
                </div>
                <div class="col">
                  <div class="card" style="width: 18rem;">
                  <img src="img/anteojos.png" class="card-img-top" alt="..." />
                  <div class="card-body">
                    <p class="card-text">Gafas Deportivas.
                            <br />
Precio: ¢15 000 precio unitario.
                    </p>
                  </div>
                </div>
                </div>
                <div class="col">
                 <div class="card" style="width: 18rem;">
                  <img src="img/llavero.png" class="card-img-top" alt="..." />
                  <div class="card-body">
                    <p class="card-text">Llavero de Dinosaurio acero inoxidable.
                        Precio: ¢3 500
                    </p>
                  </div>
                </div>
                </div>
              </div>
            </div>

            <br />
              <div class="container text-center">
    <div class="row align-items-start">
      <div class="col">
        <div class="card" style="width: 18rem;">
            <img src="img/collar.png" class="card-img-top" alt="..." />
            <div class="card-body">
              <p class="card-text">Collar para mujer de voleibol. Acero inoxidable.
                  <br />
Precio: ¢4 000</p>
            </div>
          </div>
      </div>
      <div class="col">
        <div class="card" style="width: 18rem;">
        <img src="img/llaveros2.png" class="card-img-top" alt="..." />
        <div class="card-body">
          <p class="card-text">Llaveros de control de PlayStation®
<br />
Precio Unitario: ¢2 500</p>
        </div>
      </div>
      </div>
      <div class="col">
       <div class="card" style="width: 18rem;">
        <img src="img/llavero3.png" class="card-img-top" alt="..." />
        <div class="card-body">
          <p class="card-text">Collar con dije de bicicleta
<br />
Precio: ¢ 2 500</p>
        </div>
      </div>
      </div>
    </div>
  </div>




   


          





            <footer class="bg-secondary" id="footer">
        <div class="footer-container">
            <div class="logo-column">
                <img class="imagen" src="img/(COPY) Logotipo 500x500 px (2).png" alt="Logo" />
            </div>
            <div class="info-column">
                <h4 class="abajo">Creadores</h4>
                <ul>
                    <li class="center1">SG Salas <br /> JE Franco <br /> JM Quiros  <br /> CD Alvarado <br /> JM Quesada <br /> <asp:HyperLink ID="hplCyberStyleWeb" runat="server" CssClass="form-link" NavigateUrl="~/users.aspx">CyberStyle Web</asp:HyperLink></li>
                </ul>
            </div>
            <div class="services-column">
                <h4 class="abajo">Seccion</h4>
                <ul>
                    <li class="center1">12-4</li>
                </ul>
            </div>
            <div class="services-column">
                <h4 class="abajo">Año</h4>
                <ul>
                    <li class="center1">2024</li>
                </ul>
            </div>
        </div>
    </footer>


        </div>
    </form>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
