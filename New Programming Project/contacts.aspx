<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contacts.aspx.cs" Inherits="New_Programming_Project.contacts" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Contacta con Nosotros</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" />
    <link rel="stylesheet" href="styles/contacts.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" />
</head>
<body>
    <form id="form1" runat="server">
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container-fluid">
                <a class="navbar-brand" href="index.aspx">Inicio</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarScroll" aria-controls="navbarScroll" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarScroll">
                    <ul class="navbar-nav me-auto my-2 my-lg-0 navbar-nav-scroll">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="services.aspx">Servicios</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="payment methods.aspx">Métodos de Pago</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

        <div class="container mt-5 d-flex justify-content-center">
            <div class="contact-info-container">
                <h2>Contacta con Nosotros</h2>
                <p>Estamos aquí para ayudarte. Puedes ponerte en contacto con nosotros a través de los siguientes medios:</p>
                <div class="contact-info">
                    <div class="d-flex align-items-center mb-3">
                        <i class="fas fa-map-marker-alt fa-2x me-3"></i>
                        <div>
                            <h4>Dirección</h4>
                            <p>Atenas<br />Alajuela, Costa Rica<br />Código Postal 	20501</p>
                        </div>
                    </div>
                    <div class="d-flex align-items-center mb-3">
                        <i class="fas fa-phone-alt fa-2x me-3"></i>
                        <div>
                            <h4>Teléfono</h4>
                            <p>(+506) 6386 8608</p>
                        </div>
                    </div>
                    <div class="d-flex align-items-center mb-3">
                        <i class="fas fa-envelope fa-2x me-3"></i>
                        <div>
                            <h4>Correo Electrónico</h4>
                            <p><a href="mailto:jqchaves1928@gmail.com">jqchaves1928@gmail.com</a></p>
                        </div>
                    </div>
                    <div class="d-flex align-items-center">
                        <i class="fas fa-clock fa-2x me-3"></i>
                        <div>
                            <h4>Horario de Atención</h4>
                            <p>Lunes a Viernes: 9:00 AM - 6:00 PM<br />Sábados: 10:00 AM - 2:00 PM</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    </form>
</body>
</html>
