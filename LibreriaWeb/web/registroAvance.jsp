<%-- 
    Document   : registroAvance
    Created on : 31/12/2022, 10:14:49 PM
    Author     : Alondra
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
        <title>Registro de avances</title>
    </head>
    <body style="background-color: #d9ceb2">
        <br><br>
        <center><h1>Registrar avance</h1>
        <hr />
        <br>
        <form action="AvancesServlet" method="post">
<!--            <table border="1" bgcolor="#D7CCC8">
                <tr>
                    <td>
                        <label for="id">ID del avance:</label>
                    </td>
                    <td>
                        <input type="text" id="avance_id" name="avance_id">
                    </td>
                </tr>
                <tr>
                    <td>
                        <label for="id">ID de la tarea:</label>
                    </td>
                    <td>
                        <input type="text" id="avance_idTarea" name="avance_idTarea">
                    </td>
                </tr>
                <tr>
                    <td>
                        <label for="area">Fecha de registro:</label>
                    </td>
                    <td>
                        <input type="text" id="avance_name" name="avance_name">
                    </td>
                </tr>

                <tr>
                    <td>
                        <label for="depto">Porcentaje de avance:</label>
                    </td>
                    <td>
                        <input type="depto" id="avance_percent" name="avance_percent">
                    </td>
                </tr>

                <tr>
                    <td>
                        <label for="edad">Descripción:</label>
                    </td>
                    <td>
                        <input type="text" id="avance_desc" name="avance_desc">
                    </td>
                </tr>
                <tr>
                    <td>
                        <label for="edad">Documento de evidencias:</label>
                    </td>
                    <td>
                        <input type="text" id="avance_doc" name="avance_doc">
                    </td>
                </tr>
            </table>-->

            <div class="input-group mb-3" style="width: 700px">
                <span class="input-group-text" id="inputGroup-sizing-default" style="width: 250px">ID del avance:</span>
                <input class="form-control" type="text" id="avance_id" name="avance_id">
            </div>

            <div class="input-group mb-3" style="width: 700px">
                <span class="input-group-text" id="inputGroup-sizing-default" style="width: 250px">ID de la tarea:</span>
                <input class="form-control" type="text" id="avance_idTarea" name="avance_idTarea">
            </div>

            <div class="input-group mb-3" style="width: 700px">
                <span class="input-group-text" id="inputGroup-sizing-default" style="width: 250px">Fecha de registro:</span>
                <input class="form-control" type="text" id="avance_name" name="avance_name">
            </div>

            <div class="input-group mb-3" style="width: 700px">
                <span class="input-group-text" id="inputGroup-sizing-default" style="width: 250px">Porcentaje de avance:</span>
                <input class="form-control" type="text" id="avance_percent" name="avance_percent">
            </div>

            <div class="input-group mb-3" style="width: 700px">
                <span class="input-group-text" id="inputGroup-sizing-default" style="width: 250px">Descripción:</span>
                <input class="form-control" type="text" id="avance_desc" name="avance_desc">
            </div>

            <div class="input-group mb-3" style="width: 700px">
                <span class="input-group-text" id="inputGroup-sizing-default" style="width: 250px">Documento de evidencias:</span>
                <input class="form-control" type="text" id="avance_doc" name="avance_doc">
            </div>

            <br>
            <button class="btn btn-outline-dark col-4 mx-auto" type="submit" value="1" id="regAvance" name="regAvance">Registrar</button>
            </form></center>
        <br>
        <center><button class="btn btn-outline-dark col-4 mx-auto" onclick="javascript:history.back(-1);">Regresar</button></center>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
    </body>
</html>
