<%-- 
    Document   : visualSubprocesos
    Created on : 2 ene 2023, 14:30:19
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
        <title>Subprocesos</title>
    </head>
    <body style="background-color: #d5ded9">
        <br><br>
        <center><h1>Subprocesos</h1>
        <hr />
        <br>
        <form method="post">
            <table class="table align-middle table-striped" style="text-align: center">
                <thead class="align-middle">
                    <tr>
                        <th>
                            ID Subproceso
                        </th>
                        <th>
                            Nombre
                        </th>
                        <th>
                            ID tarea
                        </th>
                    </tr>
                </thead>
                <%
                    Conexion bd = new Conexion();
                    Connection con = bd.getConnection();

                    PreparedStatement ps;
                    ResultSet data = null;

                    ps = (PreparedStatement) con.prepareStatement("SELECT * FROM subproceso");
                    data = ps.executeQuery();

                    while (data.next()) {
                %>
                <tbody>
                    <tr>
                        <td>
                            <% out.print(data.getInt(1)); %>
                        </td>
                        <td>
                            <% out.print(data.getString(2)); %>
                        </td>
                        <td>
                            <% out.print(data.getString(3)); %>
                        </td>
                    </tr>
                </tbody>
                <%}%>
            </table>
            <br>
        </form></center>
        <center><button class="btn btn-outline-dark col-4 mx-auto" onclick="javascript:history.back(-1);">Regresar</button></center>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
    </body>
</html>
