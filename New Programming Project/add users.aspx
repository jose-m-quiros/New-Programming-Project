<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="add users.aspx.cs" Inherits="New_Programming_Project.add_users" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" />
    <link rel="stylesheet" href="styles/add users.css" />
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
                </div>
            </nav>

            <div class="form-container">
    <div class="form-group">
        <asp:Label ID="lblCedula" runat="server" CssClass="form-label" Text="Cédula: "></asp:Label>
        <asp:TextBox ID="txtCedula" runat="server" CssClass="form-input"></asp:TextBox>
    </div>
    <div class="form-group">
        <asp:Label ID="lblNombre" runat="server" CssClass="form-label" Text="Nombre: "></asp:Label>
        <asp:TextBox ID="txtNombre" runat="server" CssClass="form-input"></asp:TextBox>
    </div>
    <div class="form-group">
        <asp:Label ID="lblTelefono" runat="server" CssClass="form-label" Text="Teléfono: "></asp:Label>
        <asp:TextBox ID="txtTelefono" runat="server" CssClass="form-input" onkeypress="return isNumberKey(event)"></asp:TextBox>
    </div>
    <div class="form-group">
        <asp:Label ID="lblCorreo" runat="server" CssClass="form-label" Text="Correo: "></asp:Label>
        <asp:TextBox ID="txtCorreo" runat="server" CssClass="form-input"></asp:TextBox>
    </div>
    <div class="form-group">
        <asp:Label ID="lblPassword" runat="server" CssClass="form-label" Text="Contraseña: "></asp:Label>
        <asp:TextBox ID="txtPassword" runat="server" CssClass="form-input" TextMode="Password"></asp:TextBox>
    </div>
    <div class="form-group">
        <asp:Button ID="btnRegistrar" runat="server" CssClass="form-button" Text="Registrar" OnClick="btnRegistrar_Click" />
    </div>
    <div class="form-group">
        <asp:Label ID="lblMensaje" runat="server" CssClass="form-message" Text=""></asp:Label>
    </div>
    <div class="form-group">
        <asp:HyperLink ID="hplRegresar" runat="server" CssClass="form-link" NavigateUrl="~/user index.aspx">Regresar</asp:HyperLink>
    </div>
</div>

        </div>
    </form>
    <script type="text/javascript">
        function isNumberKey(evt) {
            var charCode = (evt.which) ? evt.which : evt.keyCode;
            // Permitir solo números (0-9), tecla de retroceso (8), y tecla de borrar (46)
            if (charCode > 31 && (charCode < 48 || charCode > 57))
                return false;
            return true;
        }
    </script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
