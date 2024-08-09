<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="verify user.aspx.cs" Inherits="New_Programming_Project.verify_user" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="styles/verify user.css" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Verificar Usuario</h2>
            <asp:Label ID="lblCedula" runat="server" Text="Cédula: "></asp:Label>
            <asp:TextBox ID="txtCedula" runat="server" required="true"></asp:TextBox><br />
            <asp:Button ID="btnBuscar" runat="server" Text="Buscar" OnClick="btnBuscar_Click" /><br />
            <asp:Label ID="lblMensaje" runat="server" CssClass="message info"></asp:Label><br />
            <asp:HyperLink ID="hplRegresar" runat="server" NavigateUrl="~/users.aspx">Regresar</asp:HyperLink>
        </div>
    </form>
</body>
</html>
