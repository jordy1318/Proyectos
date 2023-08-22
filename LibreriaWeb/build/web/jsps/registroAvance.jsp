<%-- 
    Document   : registroAvance
    Created on : 10/01/2023, 09:45:28 PM
    Author     : Alondra
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro de avances</title>
    </head>
    <body style="background-color:#b5e282;">
        <h1 style="color: #2c742f;">
            Registro de avances de las tareas:
        </h1>
        <hr />
        <form action="registroAvances" method="post">

            <table border="1" bgcolor="#8BC34A">
                <tr>
                    <td>
                        <label for="id">Identificador de la tarea:</label>
                    </td>
                    <td>
                        <input type="text" id="user_id" name="user_id">
                    </td>
                </tr>
            </table>

            <img src="avance1.png" align="right">

            <br>
            <input type="submit" value="Buscar" />

            <br>
            <br>

            <table border="1" bgcolor="#8BC34A">
                <tr>
                    <td>
                        <label for="name">Fecha de registro:</label>
                    </td>
                    <td>
                        <label for="1"> </label>
                    </td>

                </tr>

                <tr>
                    <td>
                        <label for="area">Porcentaje de avance:</label>
                    </td>
                    <td>
                        <label for="2"> </label>
                    </td>

                </tr>

                <tr>
                    <td>
                        <label for="depto">Descripcion de avance:</label>
                    </td>
                    <td>
                        <label for="3"> </label>
                    </td>

                </tr>

                <tr>
                    <td>
                        <label for="edad">Documento de evidencias:</label>
                    </td>
                    <td>
                        <label for="4"> </label>
                    </td>

                </tr>
                <!-- <td><label for="msg">Mensaje:</label>
                        <textarea id="msg" name="user_message"></textarea>
                    </td>
                -->
            </table>
        </form>
    </body>
</html>
