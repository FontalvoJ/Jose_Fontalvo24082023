<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registrar.aspx.cs" Inherits="App.Registrar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Registrar Empleados </title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" />
    <link rel="stylesheet" href="estilos.css" />

</head>
<body class="container bg-light">

    <!-- Start Header form -->
    <div class="text-center pt-5">
        <img src="https://i.ibb.co/8cDgdFX/Logo.png" alt="network-logo" width="72" height="72" />
        <h2>Formulario de Registro de Créditos </h2>
    </div>

    <form id="registrar" runat="server">


        <fieldset>
            <legend><span class="number">1</span> Información </legend>

            
            <label>Id:</label>
            <asp:Label ID="txt_id" runat="server" CssClass="id"></asp:Label>
           
            <label>Nombres:</label>
            <asp:Label ID="txt_nombre" runat="server" CssClass="nombre"></asp:Label>
        
            <label>Apellidos:</label>
            <asp:Label ID="txt_apellido" runat="server" CssClass="apellido"></asp:Label>
        
            <label>Contacto:</label>
            <asp:Label ID="txt_contacto" runat="server" CssClass="contacto"></asp:Label>

            <label>Correo:</label>
            <asp:Label ID="txt_correo" runat="server" CssClass="correo"></asp:Label>

            <label>Dirección:</label>
            <asp:Label ID="txt_direccion" runat="server" CssClass="direccion"></asp:Label>

            <label>Salario:</label>
            <asp:Label ID="txt_salario" runat="server" CssClass="salario"></asp:Label>

            <label>Empresa:</label>
            <asp:Label ID="txt_empresa" runat="server" CssClass="empresa"></asp:Label>

        </fieldset>
        <asp:Button ID="btn_guardar" runat="server" Text="Guardar" />
     
    </form>



</body>
</html>
