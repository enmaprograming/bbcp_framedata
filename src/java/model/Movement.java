/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package model;
import java.io.*;
import java.sql.ResultSet;
import java.sql.SQLException;
/**
 *
 * @author Alumne
 */
public class Movement implements Serializable{    
    private int idmov;
    private String input;
    private String namemove;
    private String cancel;
    private String starter;
    private String guard;
    private int level;
    private String attribute;
    private int startup;
    private int active;
    private int recovery;
    private String frameadv_type;
    private int frameadv_num;
    private int invul_start;
    private int invul_end;
    private String invul_where;
    /*Void construct*/
    public Movement() {
        
    }
    
    /*Construct without idmov*/
    /**
     *
     * @param input
     * @param namemove
     * @param cancel
     * @param guard
     * @param level
     * @param attribute
     * @param startup
     * @param active
     * @param recovery
     * @param frameadv_type
     * @param frameadv_num
     * @param invul_start
     * @param invul_end
     * @param invul_where
     */
    public Movement(String input, String namemove, String cancel, String guard, String starter, int level, String attribute, int startup, int active, int recovery, String frameadv_type, int frameadv_num, int invul_start, int invul_end, String invul_where) {
        this.input = input;
        this.namemove = namemove;
        this.cancel = cancel;
        this.guard = guard;
        this.starter = starter;
        this.level = level;
        this.attribute = attribute;
        this.startup = startup;
        this.active = active;
        this.recovery = recovery;
        this.frameadv_type = frameadv_type;
        this.frameadv_num = frameadv_num;
        this.invul_start = invul_start;
        this.invul_end = invul_end;
        this.invul_where = invul_where;
    }
    /**
     *
     * @param idmov
     * @param input
     * @param namemove
     * @param cancel
     * @param guard
     * @param level
     * @param attribute
     * @param startup
     * @param active
     * @param recovery
     * @param frameadv_type
     * @param frameadv_num
     * @param invul_start
     * @param invul_end
     * @param invul_where
     */
    public Movement(int idmov, String input, String namemove, String cancel, String guard, String starter, int level, String attribute, int startup, int active, int recovery, String frameadv_type, int frameadv_num, int invul_start, int invul_end, String invul_where) {
        this.idmov = idmov;
        this.input = input;
        this.namemove = namemove;
        this.cancel = cancel;
        this.guard = guard;
        this.starter = starter;
        this.level = level;
        this.attribute = attribute;
        this.startup = startup;
        this.active = active;
        this.recovery = recovery;
        this.frameadv_type = frameadv_type;
        this.frameadv_num = frameadv_num;
        this.invul_start = invul_start;
        this.invul_end = invul_end;
        this.invul_where = invul_where;
    }
    
    public int getIdmov() {
        return idmov;
    }

    public void setIdmov(int idmov) {
        this.idmov = idmov;
    }

    public String getInput() {
        return input;
    }

    public void setInput(String input) {
        this.input = input;
    }

    public String getNamemove() {
        return namemove;
    }

    public void setNamemove(String namemove) {
        this.namemove = namemove;
    }

    public String getCancel() {
        return cancel;
    }

    public void setCancel(String cancel) {
        this.cancel = cancel;
    }

    public String getGuard() {
        return guard;
    }

    public void setGuard(String guard) {
        this.guard = guard;
    }

    public int getLevel() {
        return level;
    }

    public void setLevel(int level) {
        this.level = level;
    }

    public String getAttribute() {
        return attribute;
    }

    public void setAttribute(String attribute) {
        this.attribute = attribute;
    }

    public int getStartup() {
        return startup;
    }

    public void setStartup(int startup) {
        this.startup = startup;
    }

    public int getActive() {
        return active;
    }

    public void setActive(int active) {
        this.active = active;
    }

    public int getRecovery() {
        return recovery;
    }

    public void setRecovery(int recovery) {
        this.recovery = recovery;
    }

    public String getFrameadv_type() {
        return frameadv_type;
    }

    public void setFrameadv_type(String frameadv_type) {
        this.frameadv_type = frameadv_type;
    }

    public int getFrameadv_num() {
        return frameadv_num;
    }

    public void setFrameadv_num(int frameadv_num) {
        this.frameadv_num = frameadv_num;
    }

    public int getInvul_start() {
        return invul_start;
    }

    public void setInvul_start(int invul_start) {
        this.invul_start = invul_start;
    }

    public int getInvul_end() {
        return invul_end;
    }

    public void setInvul_end(int invul_end) {
        this.invul_end = invul_end;
    }

    public String getInvul_where() {
        return invul_where;
    }

    public void setInvul_where(String invul_where) {
        this.invul_where = invul_where;
    }

    public String getStarter(){
        return starter;
    }
    
    void setSarter(String starter) {
        this.starter = starter;
    }
    
    public Movement constructMovement(ResultSet resultadoSentencia) throws SQLException{
        
        Movement mov = new Movement();
        mov.setIdmov(resultadoSentencia.getInt("idmov"));
        mov.setInput(resultadoSentencia.getString("input"));
        mov.setNamemove(resultadoSentencia.getString("namemove"));
        mov.setCancel(resultadoSentencia.getString("cancel"));
        mov.setSarter(resultadoSentencia.getString("starter"));
        mov.setGuard(resultadoSentencia.getString("guard"));
        mov.setLevel(resultadoSentencia.getInt("level"));
        mov.setAttribute(resultadoSentencia.getString("attribute"));
        mov.setStartup(resultadoSentencia.getInt("startup"));
        mov.setActive(resultadoSentencia.getInt("active"));
        mov.setRecovery(resultadoSentencia.getInt("recovery"));
        mov.setFrameadv_type(resultadoSentencia.getString("frameadv_type"));
        mov.setFrameadv_num(resultadoSentencia.getInt("frameadv_num"));
        mov.setInvul_start(resultadoSentencia.getInt("invul_start"));
        mov.setInvul_end(resultadoSentencia.getInt("invul_end"));
        mov.setInvul_where(resultadoSentencia.getString("invul_where"));
        
        return mov;
    }
}
