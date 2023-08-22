<%-- 
    Document   : registroEmpleado
    Created on : 10/01/2023, 09:41:07 PM
    Author     : Alondra
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro de Empleados</title>
    </head>
    <body style="background-color:#BBDEFB;">
        <h1 style="color: #303F9F;">
            Datos del empleado:
        </h1>
        <hr />
        <form action="registroEmpleados" method="post">
            <img src="empleado1.png" align="right">
            <table border="1" bgcolor="#CFD8DC">
                <tr>
                    <td>
                        <label for="id">Identificador de empleado:</label>
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
                        <label for="area">Area en la que trabaja:</label>
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

                <tr>
                    <td>
                        <label for="edad">Edad: </label>
                    </td>
                    <td>
                        <input type="text" id="edad" name="user_edad">
                    </td>
                </tr>
                <!-- <td><label for="msg">Mensaje:</label>
                        <textarea id="msg" name="user_message"></textarea>
                    </td>
                -->

            </table>
            <br>
            <input type="submit" value="Enviar este formulario" />

        </form>
    </body>
</html>
