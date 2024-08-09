<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="payment methods.aspx.cs" Inherits="New_Programming_Project.payment_methods" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="styles/payment methods.css" />
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
                    <a class="nav-link" href="contacts.aspx">Contactos</a>
                </li>
                
            </ul>
            
        </div>
    </div>
</nav>
            <h1>Metodos de pago</h1>

            <div class="container text-center">
    <div class="row align-items-start">
      <div class="col">
        <div class="card" style="width: 18rem;">
          <img src="img/Paypal_2014_logo.png" class="card-img-top" alt="Paypal" />
          <div class="card-body">
            <p class="card-text">Paypal</p>
          </div>
        </div>
      </div>

      <div class="col">
        <div class="card" style="width: 18rem;">
          <img src="img/Mastercard-logo.svg.png" class="card-img-top" alt="MasterCard" />
          <div class="card-body">
            <p class="card-text">MasterCard</p>
          </div>
        </div>
      </div>

      <div class="col">
        <div class="card" style="width: 18rem;">
          <img src="img/images.png" class="card-img-top" alt="Visa" />
          <div class="card-body">
            <p class="card-text">Visa</p>
          </div>
        </div>
      </div>
    </div>
  </div>

  <div class="container text-center">
    <div class="row align-items-start">
      <div class="col">
        <div class="card" style="width: 18rem;">
          <img src="img/Bitcoin.svg.png" class="card-img-top" alt="BTC" />
          <div class="card-body">
            <p class="card-text">BTC</p>
          </div>
        </div>
      </div>

      <div class="col">
        <div class="card" style="width: 18rem;">
          <img src="img/American-Express-Color.png" class="card-img-top" alt="American Express" />
          <div class="card-body">
            <p class="card-text">American Express</p>
          </div>
        </div>
      </div>

      <div class="col">
        <div class="card" style="width: 18rem;">
          <img src="img/sofort.png" class="card-img-top" alt="Sofort" />
          <div class="card-body">
            <p class="card-text">Sofort</p>
          </div>
        </div>
      </div>
    </div>
  </div>


        </div>
    </form>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
