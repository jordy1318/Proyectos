<%-- 
    Document   : registroSubproceso
    Created on : 31/12/2022, 05:40:14 PM
    Author     : Alondra
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
        <title>Registro de subprocesos</title>
    </head>
    <body style="background-color: #d9ceb2">
        <br><br>
        <center><h1>Registrar subproceso</h1>
        <hr />
        <br>
        <form action="Subproceso" method="post">
<!--            <table border="1" bgcolor="#D7CCC8">
                <tr>
                    <td>
                        <label for="id">ID del Subproceso:</label>
                    </td>
                    <td>
                        <input type="text" id="id_subproceso" name="id_subproceso">
                    </td>
                </tr>
                <tr>
                    <td>
                        <label for="name">Nombre del subproceso:</label>
                    </td>
                    <td>
                        <input type="text" id="nombre_subproceso" name="nombre_subproceso">
                    </td>
                </tr>
                <tr>
                    <td>
                        <label for="tarea_id">ID de la tarea que contiene este subproceso:</label>
                    </td>
                    <td>
                        <input type="text" id="tarea_id" name="tarea_id">
                    </td>
                </tr> 
            </table>-->

            <div class="input-group mb-3" style="width: 700px">
                <span class="input-group-text" id="inputGroup-sizing-default" style="width: 350px">ID del subproceso:</span>
                <input class="form-control" type="text" id="id_subproceso" name="id_subproceso">
            </div>

            <div class="input-group mb-3" style="width: 700px">
                <span class="input-group-text" id="inputGroup-sizing-default" style="width: 350px">Nombre del subproceso:</span>
                <input class="form-control" type="text" id="nombre_subproceso" name="nombre_subproceso">
            </div>

            <div class="input-group mb-3" style="width: 700px">
                <span class="input-group-text" id="inputGroup-sizing-default" style="width: 350px">ID de la tarea que contiene este subproceso:</span>
                <input class="form-control" type="text" id="tarea_id" name="tarea_id">
            </div>

            <br>
            <button class="btn btn-outline-dark col-4 mx-auto" type="submit" value="1" id="regSubpro" name="regSubpro">Registrar</button>
        </form><center>
            <br>
        <center><button class="btn btn-outline-dark col-4 mx-auto" onclick="javascript:history.back(-1);">Regresar</button></center>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
    </body>
</html>
