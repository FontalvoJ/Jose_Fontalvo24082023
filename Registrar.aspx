<%@ Page Language="C#" %>

<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta charset="utf-8" />
   <title> Registrar Empleados </title>    

  <!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" /> 
</head>
<body class="container bg-light">

 <!-- Start Header form -->
 <div class="text-center pt-5">
   <img src="https://i.ibb.co/8cDgdFX/Logo.png" alt="network-logo" width="72" height="72" />
   <h2>Formulario de registro de creditos </h2>
 </div>
 <!-- End Header form -->

 <form id="registrar" runat="server" class="needs-validation">  
     
     <!-- Start Input Name -->
       <div class="form-group">
         <label>Id</label>
         <input type="text" class="form-control" id="inputName" name="name" placeholder="Your name" required />
         <small class="form-text text-muted">Please fill your name</small>
       </div>
       <!-- End Input Name -->

 </form>
</body>
</html>
