/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlets;

import Clases.Conexion;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author alanc
 */
public class documentXML extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");

        PrintWriter out = response.getWriter();

        String valor = request.getParameter("regTarea");
        Conexion bd = new Conexion();
        Connection con = bd.getConnection();

        PreparedStatement ps;
        ResultSet res = null;

        if (valor.compareTo("1") == 0) {

            String id = request.getParameter("task_id");
            String nombre = (char) 34 + request.getParameter("task_name") + (char) 34;
            String fechaI = (char) 34 + request.getParameter("Fecha_inicio") + (char) 34;
            String responsable = request.getParameter("responsable");
            String prioridad = (char) 34 + request.getParameter("prioridad") + (char) 34;
            String fechaT = (char) 34 + request.getParameter("Fecha_termino") + (char) 34;
            String porcen = request.getParameter("porcentaje");

            ps = (PreparedStatement) con.prepareStatement("insert into tarea values("
                    + id + "," + nombre + "," + fechaI + "," + fechaT + "," + responsable + "," + prioridad + "," + porcen + ");");
            ps.executeUpdate();
            con.close();
        }
        out.print("<br><h3>Tarea registrada</h3><br><button onclick=\"javascript:history.back(-1);\">Regresar</button>");
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(documentXML.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(documentXML.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
