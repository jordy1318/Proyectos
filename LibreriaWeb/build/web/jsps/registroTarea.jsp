<%-- 
    Document   : registroTarea
    Created on : 9 ene 2023, 13:05:01
    Author     : alanc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>
            Formulario - Registrar Tarea
        </title>
    </head>
    <body style="background-color:#FFFFFF;">
        <h1 style="color: #5D4037;">
            Datos dela tarea:
        </h1>
        <hr />
        <form action="documentXML" method="post">
            <img src="tarea2.png" align="right">
            <table border="1" bgcolor="#D7CCC8">
                <tr>
                    <td>
                        <label for="id">Identificador de la tarea:</label>
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
                        <input type="text" id="area" name="area_trabajo">
                    </td>
                </tr>

                <tr>
                    <td>
                        <label for="depto">Fecha esperada de termino:</label>
                    </td>
                    <td>
                        <input type="depto" id="depto" name="departamento">
                    </td>
                </tr>

                <tr>
                    <td>
                        <label for="edad">Prioridad de ejecución (alta, baja, media):</label>
                    </td>
                    <td>
                        <input type="text" id="edad" name="task_edad">
                    </td>
                </tr>
                <tr>
                    <td>
                        <label for="edad">Responsable de la tarea: </label>
                    </td>
                    <td>
                        <input type="text" id="edad" name="task_edad">
                    </td>
                </tr>
                <!-- <td><label for="msg">Mensaje:</label>
                        <textarea id="msg" name="task_message"></textarea>
                    </td>
                -->

            </table>
            <br>
            <input type="submit" value="Registrar" />

        </form>


    </body>
</html>
