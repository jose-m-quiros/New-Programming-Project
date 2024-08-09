<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="services.aspx.cs" Inherits="New_Programming_Project.services" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" />
    <link rel="stylesheet" href="styles/services.css" />
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
                    <a class="nav-link" href="payment methods.aspx">Metodos De Pago</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="contacts.aspx">Contactos</a>
                </li>
                
            </ul>
            
        </div>
    </div>
</nav>


             <p class="servicios text-center">Servicios</p>
          
   

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

                     <p class="otros-services text-center">Adicionales</p>
          
<div class="container accordion" id="accordionPanelsStayOpenExample">
  <div class="accordion-item">
    <h2 class="accordion-header">
      <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseOne" aria-expanded="true" aria-controls="panelsStayOpen-collapseOne">
        Embalaje de regalos
      </button>
    </h2>
    <div id="panelsStayOpen-collapseOne" class="accordion-collapse collapse">
      <div class="accordion-body">
        Embalaje de Regalo: Ofrecemos un servicio de embalaje de regalo para cualquier ocasión. Elige entre una variedad de estilos y temas para hacer tu regalo aún más especial. Costo: ₡2,000.
      </div>
    </div>
  </div>
  <div class="accordion-item">
    <h2 class="accordion-header">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseTwo" aria-expanded="false" aria-controls="panelsStayOpen-collapseTwo">
      Seguro de Envío
      </button>
    </h2>
    <div id="panelsStayOpen-collapseTwo" class="accordion-collapse collapse">
      <div class="accordion-body">
       Protege tu envío con nuestro seguro opcional. En caso de pérdida o daño durante el transporte, recibirás una compensación adecuada. Costo: ₡1,500.
      </div>
    </div>
  </div>
  <div class="accordion-item">
    <h2 class="accordion-header">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseThree" aria-expanded="false" aria-controls="panelsStayOpen-collapseThree">
       Mensajería Personalizada
      </button>
    </h2>
    <div id="panelsStayOpen-collapseThree" class="accordion-collapse collapse">
      <div class="accordion-body">
       Agrega un toque personal con una tarjeta de mensaje personalizada incluida con tu envío. Costo: ₡500.
      </div>
    </div>
  </div>
</div>
   

        </div>
    </form>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
