<%-- 
    Document   : registroEmpleado
    Created on : 31/12/2022, 09:41:23 PM
    Author     : Alondra
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
        <title>Registro de empleados</title>
    </head>
    <body style="background-color: #d9ceb2">
        <br><br>
        <center><h1>Registrar  empleado</h1>
        <hr />
        <br>
        <form action="Empleado" method="post">
<!--            <table border="1" bgcolor="#CFD8DC">
                <tr>
                    <td>
                        <label for="id">ID del empleado:</label>
                    </td>
                    <td>
                        <input type="text" id="id" name="user_id">
                    </td>
                </tr>
                <tr>
                    <td>
                        <label for="name">Nombre de empleado:</label>
                    </td>
                    <td>
                        <input type="text" id="name" name="user_name">
                    </td>
                </tr>
                <tr>
                    <td>
                        <label for="edad">Edad: </label>
                    </td>
                    <td>
                        <input type="text" id="edad" name="user_edad">
                    </td>
                </tr>
                <tr>
                    <td>
                        <label for="area">Área en la que trabaja:</label>
                    </td>
                    <td>
                        <input type="text" id="area" name="area_trabajo">
                    </td>
                </tr>
                <tr>
                    <td>
                        <label for="depto">Departamento al que pertenece:</label>
                    </td>
                    <td>
                        <input type="depto" id="depto" name="departamento">
                    </td>
                </tr>
            </table>-->
            
            <div class="input-group mb-3" style="width: 700px">
                <span class="input-group-text" id="inputGroup-sizing-default" style="width: 250px">ID del empleado:</span>
                <input class="form-control" type="text" id="id" name="user_id">
            </div>

            <div class="input-group mb-3" style="width: 700px">
                <span class="input-group-text" id="inputGroup-sizing-default" style="width: 250px">Nombre del empleado:</span>
                <input class="form-control" type="text" id="name" name="user_name">
            </div>

            <div class="input-group mb-3" style="width: 700px">
                <span class="input-group-text" id="inputGroup-sizing-default" style="width: 250px">Edad:</span>
                <input class="form-control" type="text" id="edad" name="user_edad">
            </div>

            <div class="input-group mb-3" style="width: 700px">
                <span class="input-group-text" id="inputGroup-sizing-default" style="width: 250px">Área en la que trabaja:</span>
                <input class="form-control" type="text" id="area" name="area_trabajo">
            </div>

            <div class="input-group mb-3" style="width: 700px">
                <span class="input-group-text" id="inputGroup-sizing-default" style="width: 250px">Departamento al que pertenece:</span>
                <input class="form-control" type="text" id="depto" name="departamento">
            </div>

            <br>
            <button class="btn btn-outline-dark col-4 mx-auto" type="submit" value="1" id="regEmpleado" name="regEmpleado">Registrar</button>
        </form></center>
        <br>
        <center><button class="btn btn-outline-dark col-4 mx-auto" onclick="javascript:history.back(-1);">Regresar</button></center>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
</body>
</html>
