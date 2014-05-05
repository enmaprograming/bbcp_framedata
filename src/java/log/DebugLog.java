/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package log;

import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author adriandefeomartinez
 */
public class DebugLog {
    public static boolean DEBUG = true;

    public DebugLog() {
    }
    
    public static void d(String error){
        if(DEBUG){
            Logger.getGlobal().log(Level.INFO, error);
        }
    }
}
