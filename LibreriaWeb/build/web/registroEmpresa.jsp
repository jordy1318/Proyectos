<%-- 
    Document   : registroEmpresa
    Created on : 31/12/2022, 10:46:26 PM
    Author     : Alondra
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
        <title>Registro de empresas</title>
    </head>
    <body style="background-color: #d9ceb2">
        <br><br>
        <center><h1>Registrar empresa</h1>
        <hr />
        <br>
        <form action="Empresa" method="post">
<!--            <table border="1" bgcolor="">
                <tr>
                    <td>
                        <label for="id">ID de la empresa:</label>
                    </td>
                    <td>
                        <input type="text" id="comp_id" name="comp_id">
                    </td>
                </tr>
                <tr>
                    <td>
                        <label for="name">Nombre de la empresa:</label>
                    </td>
                    <td>
                        <input type="text" id="comp_name" name="comp_name">
                    </td>
                </tr>
                <tr>
                    <td>
                        <label for="area">ID del proceso que contiene:</label>
                    </td>
                    <td>
                        <input type="text" id="comp_proc" name="comp_proc">
                    </td>
                </tr>
            </table>-->

            <div class="input-group mb-3" style="width: 700px">
                <span class="input-group-text" id="inputGroup-sizing-default" style="width: 250px">ID de la empresa:</span>
                <input class="form-control" type="text" id="comp_id" name="comp_id">
            </div>

            <div class="input-group mb-3" style="width: 700px">
                <span class="input-group-text" id="inputGroup-sizing-default" style="width: 250px">Nombre de la empresa:</span>
                <input class="form-control" type="text" id="comp_name" name="comp_name">
            </div>

            <div class="input-group mb-3" style="width: 700px">
                <span class="input-group-text" id="inputGroup-sizing-default" style="width: 250px">ID del proceso que contiene:</span>
                <input class="form-control" type="text" id="comp_proc" name="comp_proc">
            </div>

            <br>
            <button class="btn btn-outline-dark col-4 mx-auto" type="submit" value="1" id="regEmpresa" name="regEmpresa">Registrar</button>
        </form></center>
        <br>
        <center><button class="btn btn-outline-dark col-4 mx-auto" onclick="javascript:history.back(-1);">Regresar</button></center>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
    </body>
</html>
