<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="delete users.aspx.cs" Inherits="New_Programming_Project.delete_users" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="styles/delete users.css" />
    <title></title>
</head>
<body>
        <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblCedula" runat="server" Text="Cédula:"></asp:Label>
            <asp:TextBox ID="txtCedula" runat="server"></asp:TextBox>
            <asp:Button ID="btnBuscar" runat="server" Text="Buscar" OnClick="btnBuscar_Click" />
            <br /><br />

            <!-- Contenedor de los detalles del usuario, inicialmente oculto -->
            <asp:Panel ID="pnlDetallesUsuario" runat="server" Visible="false">
                <asp:Label ID="lblNombre" runat="server" Text="Nombre:"></asp:Label>
                <asp:Label ID="lblNombreUsuario" runat="server" Text=""></asp:Label>
                <br />

                <asp:Label ID="lblEmail" runat="server" Text="Email:"></asp:Label>
                <asp:Label ID="lblEmailUsuario" runat="server" Text=""></asp:Label>
                <br /><br />
            </asp:Panel>

            <asp:Label ID="lblMensaje" runat="server" Text=""></asp:Label>
            <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" OnClick="btnEliminar_Click" Visible="false" />
            <br />

            <asp:HyperLink ID="hplRegresar" runat="server" NavigateUrl="~/users.aspx">Regresar</asp:HyperLink>
        </div>
    </form>
</body>
</html>
