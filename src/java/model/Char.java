/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package model;
import java.io.*;
import java.sql.ResultSet;
import java.sql.SQLException;
/**
 *bean to contruct the character class
 * @author Alumne
 * @param idCH - id of the character
 * @param name - name of the character
 * @param health - total quantity of health point
 * @param dash_type - the dash type, like step, run o other more specific
 * @param jump_startup - quantity of frames that the character needs to jump
 * @param n_jumps - quantity of jumps
 * @param n_air_dash - quantity of air dashes
 * @param combo_prorate - combo prorate percentage 
 * @param combo_prorate_additional - combo prorate percentage additional, only applied if the character have the special stat
 * @param backdash_full_time - quantity of frame the backdash animation is active
 * @param backdash_full_time_additional - quantity of frame the backdash animation is active, only applied if the character have the special stat
 * @param backdash_invul_start - first frame of the invul in the backdash animation
 * @param backdash_invul_start_additional - first frame of the invulnerability in the backdash animation, only applied if the character have the special stat
 * @param backdash_invul_end - end of the invulnerability in the backdash animation
 * @param backdash_invul_end_additional - end of the invulnerability in the backdash animation, only applied if the character have the special stat
 */
public class Char implements Serializable{
    private int idCH;
    private String name;
    private int health;
    private String dash_type;
    private int jump_startup;
    private int n_jumps;
    private int n_air_dash;
    private int combo_prorate;
    private int combo_prorate_additional;
    private int backdash_full_time;
    private int backdash_full_time_additional;
    private int backdash_invul_start;
    private int backdash_invul_start_additional;
    private int backdash_invul_end;
    private int backdash_invul_end_additional;
    
    
    
    public int getIdCH() {
        return idCH;
    }

    public void setIdCH(int idCH) {
        this.idCH = idCH;
    }
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
    public int getHealth() {
        return health;
    }

    public void setHealth(int health) {
        this.health = health;
    }

    public String getDash_type() {
        return dash_type;
    }

    public void setDash_type(String dash_type) {
        this.dash_type = dash_type;
    }

    public int getJump_startup() {
        return jump_startup;
    }

    public void setJump_startup(int jump_startup) {
        this.jump_startup = jump_startup;
    }

    public int getN_jumps() {
        return n_jumps;
    }

    public void setN_jumps(int n_jumps) {
        this.n_jumps = n_jumps;
    }

    public int getN_air_dash() {
        return n_air_dash;
    }

    public void setN_air_dash(int n_air_dash) {
        this.n_air_dash = n_air_dash;
    }

    public int getCombo_prorate() {
        return combo_prorate;
    }

    public void setCombo_prorate(int combo_prorate) {
        this.combo_prorate = combo_prorate;
    }

    public int getCombo_prorate_additional() {
        return combo_prorate_additional;
    }

    public void setCombo_prorate_additional(int combo_prorate_additional) {
        this.combo_prorate_additional = combo_prorate_additional;
    }

    public int getBackdash_full_time() {
        return backdash_full_time;
    }

    public void setBackdash_full_time(int backdash_full_time) {
        this.backdash_full_time = backdash_full_time;
    }

    public int getBackdash_full_time_additional() {
        return backdash_full_time_additional;
    }

    public void setBackdash_full_time_additional(int backdash_full_time_additional) {
        this.backdash_full_time_additional = backdash_full_time_additional;
    }

    public int getBackdash_invul_start() {
        return backdash_invul_start;
    }

    public void setBackdash_invul_start(int backdash_invul_start) {
        this.backdash_invul_start = backdash_invul_start;
    }

    public int getBackdash_invul_start_additional() {
        return backdash_invul_start_additional;
    }

    public void setBackdash_invul_start_additional(int backdash_invul_start_additional) {
        this.backdash_invul_start_additional = backdash_invul_start_additional;
    }

    public int getBackdash_invul_end() {
        return backdash_invul_end;
    }

    public void setBackdash_invul_end(int backdash_invul_end) {
        this.backdash_invul_end = backdash_invul_end;
    }

    public int getBackdash_invul_end_additional() {
        return backdash_invul_end_additional;
    }

    public void setBackdash_invul_end_additional(int backdash_invul_end_additional) {
        this.backdash_invul_end_additional = backdash_invul_end_additional;
    }
    
    public Char constructCharacter(ResultSet resultadoSentencia) throws SQLException{
        
        Char c = new Char();//esto crea y construye el java-bean
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
        return c;
    }
}
