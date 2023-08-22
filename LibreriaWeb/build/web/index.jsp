<%-- 
    Document   : index
    Created on : 27/12/2022, 11:01:04 PM
    Author     : Alondra
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
        <title>Iniciar sesión</title>
    </head>
    <body>
        <br><br><br>
        <center><img src="./logooooUAM.jpg" alt="Bootstrap" width="200" height="70"></center>
        <br><br>
        <center><h1>INICIO DE SESIÓN</h1></center>
        <br>
        <center><div class="container">
            <form action="Authentication" method="POST">
                Usuario:<br>
                <input type="text" id="usuario" name="usuario" placeholder="Ingrese su nombre de usuario." required><br><br>
                Contraseña:<br>
                <input type="password" id="password" name="password" placeholder="Ingrese su contraseña." required><br><br><br>

                <input class="btn btn-dark col-2 mx-auto" type="submit" name="entrar" id="entrar" value="Ingresar">
            </form>
        </div></center>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
    </body>
</html>
