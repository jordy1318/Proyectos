/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Clases;

import java.sql.Connection;
import javax.swing.JOptionPane;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author alanc
 */
public class Conexion {

    private static String DRIVER = "com.mysql.jdbc.Driver";
    private static String USUARIO = "root";
    private static String PASSWORD = "UAMazc2017";
    private static String URL = "jdbc:mysql://localhost:3306/aiae?useSSL=false";

    static {
        try {
            Class.forName(DRIVER);
        } catch (ClassNotFoundException e) {
            JOptionPane.showMessageDialog(null, "ERROR EN EL DRIVER:" + e);
        }

    }

    public Connection getConnection() throws SQLException {
        Connection con = null;

        try {
            con = DriverManager.getConnection(URL, USUARIO, PASSWORD);

        } catch (Exception e) {

        }

        return con;

    }

}
