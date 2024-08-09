<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="users.aspx.cs" Inherits="New_Programming_Project.users" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" />
    <link rel="stylesheet" href="styles/users.css" />
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

                         <h3 class="header">¿Qué desea hacer?</h3>
                        <div class="container text-center">
              <div class="row">
                <div class="col">
                  <asp:HyperLink ID="hplRegistrar" runat="server" NavigateUrl="~/add users.aspx" CssClass="link registrar">Registrar Usuario</asp:HyperLink>
                </div>
                    <div class="col">
    <asp:HyperLink ID="hplConsultar" runat="server" NavigateUrl="~/verify user.aspx" CssClass="link consultar">Ver Datos De Usuarios</asp:HyperLink>
</div>
                <div class="col">
                  <asp:HyperLink ID="hplModificar" runat="server" NavigateUrl="~/modify user.aspx" CssClass="link modificar">Modificar Datos</asp:HyperLink>
                </div>
                 
                  <div class="col">
              <asp:HyperLink ID="hplEliminar" runat="server" NavigateUrl="~/delete users.aspx" CssClass="link eliminar">Eliminar Usuarios</asp:HyperLink>
            </div>
  </div>
</div>




        </div>
    </form>
</body>
</html>
