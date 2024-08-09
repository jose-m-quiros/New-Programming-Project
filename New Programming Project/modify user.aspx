<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="modify user.aspx.cs" Inherits="New_Programming_Project.modify_user" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="styles/modify users.css" />
    <title></title>
</head>
<body>
        <form id="form1" runat="server">
        <div>
            <h2>Formulario para Modificar Usuario</h2>
            <asp:Label ID="lblCedula" runat="server" Text="Cédula: "></asp:Label>
            <asp:TextBox ID="txtCedula" runat="server" required="true"></asp:TextBox><br />
            <asp:Button ID="btnBuscar" runat="server" Text="Buscar" OnClick="btnBuscar_Click" /><br />
            <asp:Label ID="lblDatos" runat="server" Text=""></asp:Label><br />
            
            <!-- Panel que contiene los campos ocultos -->
            <asp:Panel ID="pnlDatosUsuario" runat="server" Visible="false">
                <asp:Label ID="lblNombre" runat="server" Text="Nombre: "></asp:Label>
                <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox><br />
                <asp:Label ID="lblTelefono" runat="server" Text="Teléfono: "></asp:Label>
                <asp:TextBox ID="txtTelefono" runat="server"></asp:TextBox><br />
                <asp:Label ID="lblCorreo" runat="server" Text="Correo: "></asp:Label>
                <asp:TextBox ID="txtCorreo" runat="server"></asp:TextBox><br />
                <asp:Button ID="btnModificar" runat="server" Text="Modificar" OnClick="btnModificar_Click" /><br />
            </asp:Panel>
            
            <asp:Label ID="lblMensaje" runat="server" Text=""></asp:Label><br />
            <asp:HyperLink ID="hplRegresar" runat="server" NavigateUrl="~/users.aspx">Regresar</asp:HyperLink>
        </div>
    </form>
</body>
</html>
