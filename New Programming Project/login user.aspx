<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login user.aspx.cs" Inherits="New_Programming_Project.login_user" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="styles/login user.css" />
   
    <title></title>
</head>
<body>
    <form id="form1" runat="server">



       <div class="container">
            <h2>Iniciar Sesión</h2>
            <div class="mb-3">
                <asp:Label ID="lblCedula" runat="server" Text="Cédula: "></asp:Label>
                <asp:TextBox ID="txtCedula" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="mb-3">
                <asp:Label ID="lblPassword" runat="server" Text="Contraseña: "></asp:Label>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
            </div>
            <asp:Button ID="btnLogin" runat="server" Text="Iniciar Sesión" OnClick="btnLogin_Click" CssClass="btn btn-primary" />
            <asp:Label ID="lblMensaje" runat="server" Text="" CssClass="text-danger"></asp:Label>
            <asp:HyperLink ID="hplRegresar" runat="server" NavigateUrl="~/user index.aspx">Regresar</asp:HyperLink> 
       </div>
    </form>
</body>
</html>
