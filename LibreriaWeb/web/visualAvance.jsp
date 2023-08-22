<%-- 
    Document   : visualAvance
    Created on : 2 ene 2023, 21:05:01
    Author     : alanc
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="Clases.Conexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
        <title>Avances</title>
    </head>
    <body style="background-color: #d5ded9">
        <br><br>
        <center><h1>Avances</h1></center>
        <hr />
        <br>
        <form method="post">
            <table class="table align-middle table-striped">
                <thead class="align-middle"  style="text-align: center">
                    <tr>
                        <th scope="col">
                            ID del avance
                        </th>
                        <th scope="col">
                            ID de la tarea
                        </th>
                        <th scope="col">
                            Fecha de registro
                        </th>
                        <th scope="col">
                            Porcentaje (%)
                        </th>
                        <th scope="col">
                            Desrcipción
                        </th>
                        <th scope="col">
                            Documento
                        </th>
                    </tr>
                </thead>
                <%
                    Conexion bd = new Conexion();
                    Connection con = bd.getConnection();

                    PreparedStatement ps;
                    ResultSet data = null;

                    ps = (PreparedStatement) con.prepareStatement("SELECT * FROM registro");
                    data = ps.executeQuery();

                    while (data.next()) {
                %>
                <tbody>
                    <tr>
                        <td>
                            <center> <% out.print(data.getInt(1)); %></center>
                        </td>
                        <td>
                            <center> <% out.print(data.getString(2)); %></center>
                        </td>
                        <td>
                            <center> <% out.print(data.getString(3)); %></center>
                        </td>
                        <td>
                            <center> <% out.print(data.getString(4)); %></center>
                        </td>
                        <td>
                            <% out.print(data.getString(5)); %>
                        </td>
                        <td>
                            <% out.print(data.getString(6)); %>
                        </td>
                    </tr>
                </tbody>
                <%}%>
            </table>
            <br>
        </form>
    <center><button class="btn btn-outline-dark col-4 mx-auto" onclick="javascript:history.back(-1);">Regresar</button></center>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
    </body>
</html>
