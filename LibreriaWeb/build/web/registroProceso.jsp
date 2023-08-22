<%-- 
    Document   : registroProceso
    Created on : 31/12/2022, 05:39:59 PM
    Author     : Alondra
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
        <title>Registro de procesos</title>
    </head>
    <body style="background-color: #d9ceb2">
        <br><br>
        <center><h1>Registrar proceso</h1>
        <hr />
        <br>
        <form action="Proceso" method="post">
<!--            <table border="1" bgcolor="#D7CCC8">
                <tr>
                    <td>
                        <label for="id">ID del Proceso:</label>
                    </td>
                    <td>
                        <input type="text" id="proceso_id" name="proceso_id">
                    </td>
                </tr>
                <tr>
                    <td>
                        <label for="name">Nombre del proceso:</label>
                    </td>
                    <td>
                        <input type="text" id="nombre" name="nombre_proceso">
                    </td>
                </tr>
                <tr>
                    <td>
                        <label for="subproceso_id">ID del subproceso que contiene este proceso:</label>
                    </td>
                    <td>
                        <input type="text" id="subproceso_id" name="subproceso">
                    </td>
                </tr>
            </table>-->

            <div class="input-group mb-3" style="width: 700px">
                <span class="input-group-text" id="inputGroup-sizing-default" style="width: 350px">ID del Proceso:</span>
                <input class="form-control" type="text" id="proceso_id" name="proceso_id">
            </div>

            <div class="input-group mb-3" style="width: 700px">
                <span class="input-group-text" id="inputGroup-sizing-default" style="width: 350px">Nombre del Proceso:</span>
                <input class="form-control" type="text" id="nombre" name="nombre_proceso">
            </div>

            <div class="input-group mb-3" style="width: 700px">
                <span class="input-group-text" id="inputGroup-sizing-default" style="width: 350px">ID del subproceso que contiene este proceso:</span>
                <input class="form-control" type="text" id="subproceso_id" name="subproceso">
            </div>

            <br>
            <button class="btn btn-outline-dark col-4 mx-auto" type="submit" value="1" id="regProceso" name="regProceso">Registrar</button>
        </form>
        </center>
        <br>
        <center><button class="btn btn-outline-dark col-4 mx-auto" onclick="javascript:history.back(-1);">Regresar</button></center>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
    </body>
</html>
