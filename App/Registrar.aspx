<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registrar.aspx.cs" Inherits="App.Registrar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Registrar Empleados</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" />
    <link rel="stylesheet" href="registrar.css" />

</head>
<body class="container bg-light">

    <!-- Start Header form -->
    <div class="text-center pt-5">
        <img src="https://i.ibb.co/8cDgdFX/Logo.png" alt="network-logo" width="72" height="72" />
        <h2>Formulario de Registro de Créditos</h2>
    </div>

    <form id="registrar" runat="server">

        <fieldset>
            <legend><span class="label-number">1</span> Información</legend>

            <div class="form-group">
                <label for="txt_id">Id:</label>
                <asp:TextBox ID="txt_id" runat="server" CssClass="label-style"></asp:TextBox>
            </div>
            
            <div class="form-group">
                <label for="txt_nombre">Nombres:</label>
                <asp:TextBox ID="txt_nombre" runat="server" CssClass="label-style"></asp:TextBox>
            </div>

            <div class="form-group">
                <label for="txt_apellido">Apellidos:</label>
                <asp:TextBox ID="txt_apellido" runat="server" CssClass="label-style"></asp:TextBox>
            </div>

            <div class="form-group">
                <label for="txt_contacto">Contacto:</label>
                <asp:TextBox ID="txt_contacto" runat="server" CssClass="label-style"></asp:TextBox>
            </div>

            <div class="form-group">
                <label for="txt_correo">Correo:</label>
                <asp:TextBox ID="txt_correo" runat="server" CssClass="label-style"></asp:TextBox>
            </div>

            <div class="form-group">
                <label for="txt_direccion">Dirección:</label>
                <asp:TextBox ID="txt_direccion" runat="server" CssClass="label-style"></asp:TextBox>
            </div>

            <div class="form-group">
                <label for="txt_salario">Salario:</label>
                <asp:TextBox ID="txt_salario" runat="server" CssClass="label-style"></asp:TextBox>
            </div>

            <div class="form-group">
                <label for="txt_empresa">Empresa:</label>
                <asp:TextBox ID="txt_empresa" runat="server" CssClass="label-style"></asp:TextBox>
            </div>
        </fieldset>

        <div class="form-group-btn">
            <asp:Button ID="btn_guardar" runat="server" Text="Guardar" CssClass="input-box" />
            <asp:Button ID="btn_actualizar" runat="server" Text="Actualizar" CssClass="input-box" />
            <asp:Button ID="btn_nuevo" runat="server" Text="Nuevo" CssClass="input-box" />
        </div>
    </form>

</body>
</html>
