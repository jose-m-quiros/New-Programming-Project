<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="user index.aspx.cs" Inherits="New_Programming_Project.user_index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" />
    
    <link rel="stylesheet" href="styles/user index.css" />
    
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
                 <nav class="navbar navbar-expand-lg bg-body-tertiary">
     <div class="container-fluid">
         <a class="navbar-brand" href="index.aspx">Inicio</a>
         <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarScroll" aria-controls="navbarScroll" aria-expanded="false" aria-label="Toggle navigation">
             <span class="navbar-toggler-icon"></span>
         </button>
         
     </div>
 </nav>

        <div>

                          <h3 class="header">¿Qué desea hacer?</h3>
            <div class="container text-center">
  <div class="row">
    <div class="col">
      <asp:HyperLink ID="hplRegistrar" runat="server" NavigateUrl="~/add users.aspx" CssClass="link registrar">Registrarse</asp:HyperLink>
    </div>
      <div class="col">
  <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/login user.aspx" CssClass="link iniciar-sesion">Iniciar Sesion</asp:HyperLink>
</div>
    <div class="col">
      <asp:HyperLink ID="hplModificar" runat="server" NavigateUrl="~/modify user.aspx" CssClass="link modificar">Modificar Dato</asp:HyperLink>
    </div>
</div>
</div>
        </div>
    </form>
</body>
</html>
