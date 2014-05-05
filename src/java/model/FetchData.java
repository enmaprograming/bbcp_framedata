/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package model;
import java.io.*;
import java.sql.*;
import java.util.*;
import java.lang.*;
/**
 *
 * @author Alumne
 */
public class FetchData {
    
    
    /**
     * @param Connection cn - is the connection with the DDBB
     * @return an array with all the characters
     * Version 2.0 changes: A new construct is created in the class Char
     * to make the answer of the server faster
     * @version 2.0
     */
    public static synchronized ArrayList<Char> listAllCharacters(Connection cn){
        ArrayList<Char> lista = new ArrayList<Char>();
        
        
        String sql = null;
        ResultSet resultadoSentencia = null;
        
        try{
            cn = Conector.getConexion();
            Statement stat = cn.createStatement();
            sql = "select * from personajes";
            resultadoSentencia = stat.executeQuery(sql);
            
            while(resultadoSentencia.next()){
                //aquí se crea de nuevo el objeto producto, pero con los datos sacados
                //de la BBDD, cada fila de la tabla es una cosa a rellenar del producto
                Char c = new Char();//esto crea y construye el java-bean
                c = c.constructCharacter(resultadoSentencia);
                lista.add(c);
            }
        } catch(Exception e){Conector.cerrarConexion(cn);}
        return lista;
    }
    
    public static synchronized Char searchOneCharacter(Connection cn, int idCH){

        String sql = null;
        ResultSet resultadoSentencia = null;
        Char c=null;
        try{
            //do IF-ELSE just in case

            Statement stat = cn.createStatement();
            sql = "select * from personajes where idCH="+idCH;
            resultadoSentencia = stat.executeQuery(sql);
            if(!resultadoSentencia.next()){
                //TO-DO
            }
            else{
                c= new Char();
                c.setIdCH(resultadoSentencia.getInt("idCH"));
                c.setName(resultadoSentencia.getString("name"));
                c.setHealth(resultadoSentencia.getInt("health"));
                c.setDash_type(resultadoSentencia.getString("dash_type"));
                c.setJump_startup(resultadoSentencia.getInt("jump_startup"));
                c.setN_jumps(resultadoSentencia.getInt("n_jumps"));
                c.setN_air_dash(resultadoSentencia.getInt("n_air_dash"));
                c.setCombo_prorate(resultadoSentencia.getInt("combo_prorate"));
                c.setCombo_prorate_additional(resultadoSentencia.getInt("combo_prorate_additional"));
                c.setBackdash_full_time(resultadoSentencia.getInt("backdash_full_time"));
                c.setBackdash_full_time_additional(resultadoSentencia.getInt("backdash_full_time_additional"));
                c.setBackdash_invul_start(resultadoSentencia.getInt("backdash_invul_start"));
                c.setBackdash_invul_start_additional(resultadoSentencia.getInt("backdash_invul_start_additional"));
                c.setBackdash_invul_end(resultadoSentencia.getInt("backdash_invul_end"));
                c.setBackdash_invul_end_additional(resultadoSentencia.getInt("backdash_invul_end_additional"));
            }
        }catch(Exception e){Conector.cerrarConexion(cn);}
    return c;
    }
    
    
    /**
     * @param Connection cn - is the connection with the DDBB
     * @param idCH
     * @return an array with all the movements that the character have
     * @version 2.0
     * Version 2.0 changes: A new construct is created in the class Movement
     * to make the answer of the server faster
     */
    public static synchronized ArrayList<Movement> listAllMovementsOneCharacter (Connection cn, int idCH){
        ArrayList<Movement> movList = new ArrayList<Movement>();

        String sql = null;
        ResultSet resultadoSentencia = null;
        Movement mov= null;
        try{

            Statement stat = cn.createStatement();
            sql = "select * from movimientos where personajes_idCH="+idCH;
            //do the sql sentence to avoid the SQL inyections
            //quitar las comillas simples para probar lo del casteo
            //SELECT * FROM `movimientos` WHERE `personajes_idCH` = idCH
            resultadoSentencia = stat.executeQuery(sql);
            while(resultadoSentencia.next())
            {
                mov = new Movement();
                mov = mov.constructMovement(resultadoSentencia);
                movList.add(mov);
            }
        }catch(Exception e){Conector.cerrarConexion(cn);}
        return movList;
    }
    
    /**
     *
     * @param idCH
     * @param idmov
     * @return an array with all the movements that the character can use to punish the p2 character use
     * @version 1.0
     */
    //arrayList before
    public static synchronized Movement OneCharacterMove (Connection cn, int idmov){
        
        ArrayList<Movement> movCharacter2 = new ArrayList<Movement>();
        String sql = null;
        ResultSet resultadoSentencia = null;
        Movement mov= null;
        
        try{
            Statement stat = cn.createStatement();
            sql = "select * from movimientos where idmov="+idmov;
            resultadoSentencia = stat.executeQuery(sql);
            while(resultadoSentencia.next())
            {
                mov = new Movement();
                mov = mov.constructMovement(resultadoSentencia);
            }
                
            }catch(Exception e){Conector.cerrarConexion(cn);}
           
        return mov;
    }
    
}
