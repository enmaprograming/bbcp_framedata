/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.*;

/**
 *
 * @author Alumne
 */
public class connector {
    private static String url = "jdbc:mysql://localhost/bb_prueba";
    private static String user = "root";
    private static String password = "";
    
    public static synchronized Connection getConexion() {
        Connection cn = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            cn = DriverManager.getConnection(url, user, password);
        } catch (Exception e) {
            cn = null;
        } finally {
            return cn;
        }
    }
    
    public static synchronized void cerrarConexion(ResultSet rs) {
        try{rs.close();} catch (Exception e) {}
    }
    
    public static synchronized void cerrarConexion(Connection cn) {
        try{cn.close();} catch (Exception e) {}
    }
    
}
