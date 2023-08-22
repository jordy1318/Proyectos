<%-- 
    Document   : visualTarea
    Created on : 2 ene 2023, 11:31:46
    Author     : alanc
--%>

<%@page import="java.util.concurrent.TimeUnit"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="Clases.Conexion"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
        <title>Tareas</title>
    </head>
    <body style="background-color: #d5ded9">
        <br><br>
        <center><h1>Tareas</h1>
        <hr />
        <br>
        <form method="post">
            <table class="table align-middle table-striped" style="text-align: center">
                <thead class="align-middle">
                    <tr>
                        <th scope="col">
                            ID Tarea
                        </th>
                        <th scope="col">
                            Nombre
                        </th>
                        <th scope="col">
                            Fecha inicio
                        </th>
                        <th scope="col">
                            Fecha final
                        </th>
                        <th scope="col">
                            ID Empleado Encargado
                        </th>
                        <th scope="col">
                            Prioridad
                        </th>
                        <th scope="col">
                            Faltan
                        </th>
                        <th>
                            Porcentaje (%)
                        </th>
                    </tr>
                </thead>
                <%
                    Conexion bd = new Conexion();
                    Connection con = bd.getConnection();

                    PreparedStatement ps;
                    ResultSet data = null;
                    
                    ps = (PreparedStatement) con.prepareStatement("SELECT * FROM tarea");
                    data = ps.executeQuery();
                    
                    SimpleDateFormat formato = new SimpleDateFormat("dd/MM/yyyy");
                    String fechaBD = "";
                    Date fechaFinal;
                    Date newFecha = new Date();
                    String today = formato.format(newFecha);
                    Date hoy = formato.parse(today);
                    
                    long tiempo_transcurrido = 0;
                    long dias = 0;
                    
                    TimeUnit unidad = TimeUnit.DAYS;

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
                        <td>
                            <%
                                fechaBD = data.getString(4);
                                out.print(data.getString(4));
                            %>
                        </td>
                        <td>
                            <% out.print(data.getInt(5)); %>
                        </td>
                        <td>
                            <% out.print(data.getString(6)); %>
                        </td>
                        <td>
                            <%
                                fechaFinal = formato.parse(fechaBD);
                                tiempo_transcurrido = fechaFinal.getTime() - hoy.getTime();
                                dias = unidad.convert(tiempo_transcurrido, TimeUnit.MILLISECONDS);
                                
                                if(dias<=0){
                                    out.print(dias + " día(s) (Tarea caducada)");
                                } else if(dias<=30){
                                    out.print(dias + " día(s) (Tarea urgente)");
                                } else if(dias<=100){
                                    out.print(dias + " día(s) (En tiempo)");
                                }
                                
                            %>
                        </td>
                        <td>
                            <% out.print(data.getString(7)); %>
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
