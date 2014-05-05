/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.*;

/**
 * Conector - class to connect with th DDBB
 * @author Alumne
 * @param url - the url of the DDBB
 * @param user - the user of the DDBB
 * @param password - the password of the DDBB
 */
public class Conector {
    private static String url = "jdbc:mysql://localhost/bb_prueba";
    private static String user = "root";
    //class password
    //private static String password = "";
    //home password
    private static String password = "fQ75OFwM";
    
    /**
    * getConexion - function to connect with the DDBB
    * @author Alumne
    */
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
