<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="account.aspx.cs" Inherits="New_Programming_Project.account" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="styles/account.css" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" />
    <title>Información de la Cuenta</title>
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
                </div>
            </nav>

            <div class="container mt-5">
                <h2>Información de la Cuenta</h2>
                <div class="card">
                    <div class="card-body">
                        <!-- Información del Usuario -->
                        <h4>Detalles Personales</h4>
                        <p>Nombre: <asp:Label ID="lblUserName" runat="server" Text="Juan Pérez"></asp:Label></p>
                        <p>Correo Electrónico: <asp:Label ID="lblUserEmail" runat="server" Text="juan.perez@example.com"></asp:Label></p>

                        
                        <!-- Historial de Actividad -->
                        <h4 class="mt-4">Historial de Actividad</h4>
                        <ul>
                            <li>Inició sesión el 01/08/2024</li>
                            <li>Cambió su contraseña el 15/07/2024</li>
                            <!-- Añadir más actividades según sea necesario -->
                        </ul>

                        <!-- Configuraciones de la Cuenta -->
                        <h4 class="mt-4">Configuraciones de la Cuenta</h4>
                        <!-- Agregar opciones de configuración aquí -->

                        <!-- Cerrar Sesión -->
                        <h4 class="mt-4">Cerrar Sesión</h4>
                        <asp:Button ID="btnLogout" runat="server" Text="Cerrar Sesión" CssClass="btn btn-danger" OnClick="Logout_Click" />
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
