<%-- 
    Document   : registroTarea
    Created on : 31/12/2022, 02:42:19 PM
    Author     : Alondra
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
        <title>Registro de tareas</title>
    </head>
    <body style="background-color: #d9ceb2">
        <br><br>
        <center><h1>Registrar tarea</h1>
        <hr />
        <br>
        <form action="documentXML" method="post">
<!--            <table border="1" bgcolor="#D7CCC8">
                <tr>
                    <td>
                        <label for="id">ID de la tarea:</label>
                    </td>
                    <td>
                        <input type="text" id="task_id" name="task_id">
                    </td>
                </tr>
                <tr>
                    <td>
                        <label for="name">Nombre de la tarea:</label>
                    </td>
                    <td>
                        <input type="text" id="name" name="task_name">
                    </td>
                </tr>

                <tr>
                    <td>
                        <label for="area">Fecha de inicio:</label>
                    </td>
                    <td>
                        <input type="text" id="area" name="Fecha_inicio">
                    </td>
                </tr>

                <tr>
                    <td>
                        <label for="depto">Fecha esperada de termino:</label>
                    </td>
                    <td>
                        <input type="depto" id="depto" name="Fecha_termino">
                    </td>
                </tr>

                <tr>
                    <td>
                        <label for="edad">Prioridad de ejecución (alta, baja, media):</label>
                    </td>
                    <td>
                        <input type="text" id="edad" name="prioridad">
                    </td>
                </tr>
                <tr>
                    <td>
                        <label for="edad">ID del responsable de la tarea: </label>
                    </td>
                    <td>
                        <input type="text" id="empleado" name="responsable">
                    </td>
                </tr>
                <tr>
                    <td>
                        <label for="edad">Porcentaje: </label>
                    </td>
                    <td>
                        <input type="text" id="porcentaje" name="porcentaje">
                    </td>
                </tr>
            </table>-->

            <div class="input-group mb-3" style="width: 700px">
                <span class="input-group-text" id="inputGroup-sizing-default" style="width: 250px">ID de la tarea:</span>
                <input class="form-control" type="text" id="task_id" name="task_id">
            </div>

            <div class="input-group mb-3" style="width: 700px">
                <span class="input-group-text" id="inputGroup-sizing-default" style="width: 250px">Nombre de la tarea:</span>
                <input class="form-control" type="text" id="name" name="task_name">
            </div>

            <div class="input-group mb-3" style="width: 700px">
                <span class="input-group-text" id="inputGroup-sizing-default" style="width: 250px">Fecha de inicio:</span>
                <input class="form-control" type="text" id="area" name="Fecha_inicio">
            </div>

            <div class="input-group mb-3" style="width: 700px">
                <span class="input-group-text" id="inputGroup-sizing-default" style="width: 250px">Fecha esperada de termino:</span>
                <input class="form-control" type="text" id="depto" name="Fecha_termino">
            </div>

            <div class="input-group mb-3" style="width: 700px">
                <span class="input-group-text" id="inputGroup-sizing-default" style="width: 250px">Prioridad (baja, media, alta):</span>
                <input class="form-control" type="text" id="edad" name="prioridad">
            </div>

            <div class="input-group mb-3" style="width: 700px">
                <span class="input-group-text" id="inputGroup-sizing-default" style="width: 250px">ID del responsable de la tarea:</span>
                <input class="form-control" type="text" id="empleado" name="responsable">
            </div>

            <div class="input-group mb-3" style="width: 700px">
                <span class="input-group-text" id="inputGroup-sizing-default" style="width: 250px">Porcentaje:</span>
                <input class="form-control" type="text" id="porcentaje" name="porcentaje">
            </div>

            <br>
            <button class="btn btn-outline-dark col-4 mx-auto" type="submit" value="1" id="regTarea" name="regTarea">Registrar</button>
            </form></center>
        <br>
        <center><button class="btn btn-outline-dark col-4 mx-auto" onclick="javascript:history.back(-1);">Regresar</button></center>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
    </body>
</html>
