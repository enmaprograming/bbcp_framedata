/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import com.google.gson.Gson;
import java.io.*;
import java.sql.*;
import java.util.*;
import java.util.logging.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import log.DebugLog;
import model.*;

/**
 *
 * @author Alumne
 */
@WebServlet(name = "TheServlet", urlPatterns = {"/TheServlet"})
public class TheServlet extends HttpServlet {

    public static final String CONTENT_TYPE = "application/json";
    public static final String CHARACTER_ENCODING = "UTF-8";
    public static final String RESPONSE_CONTENT_TYPE = "text/html;charset=UTF-8";
    
    Connection cn = Conector.getConexion();

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

        response.setContentType(RESPONSE_CONTENT_TYPE);
        PrintWriter out = response.getWriter();
        try {
            String action = request.getParameter("action");
            if (action.equals("10000")) {
                listCharacters(request, response);
            } else if (action.equals("20000")) {
                listMovements(request, response);
            }//the 30000 action means the one that compare the movement to punish with all the movements of the first character
            else if (action.equals("30000")) {
                oneCharacterMovement(request, response);
            }
        } finally {
            out.close();
        }
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
            Logger.getLogger(TheServlet.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(TheServlet.class.getName()).log(Level.SEVERE, null, ex);
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

    /**
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws SQLException
     * @throws IOException
     */
    protected void listCharacters(HttpServletRequest request, HttpServletResponse response) throws ServletException, SQLException, IOException {
        Collection<Char> list = FetchData.listAllCharacters(cn);
        DebugLog.d("Character list printed");
        //this sentences encode the answer to Json, with that, the AJAX recive the response in Json too
        String json = new Gson().toJson(list);
        response.setContentType(CONTENT_TYPE);
        response.setCharacterEncoding(CHARACTER_ENCODING);
        response.getWriter().write(json);

    }

    /**
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws SQLException
     * @throws IOException
     */
    protected void listMovements(HttpServletRequest request, HttpServletResponse response) throws ServletException, SQLException, IOException {
        int idCH = Integer.parseInt(request.getParameter("idCH"));
        Collection<Movement> movList = FetchData.listAllMovementsOneCharacter(cn, idCH);
        DebugLog.d("Movements printed already");
        String json = new Gson().toJson(movList);
        response.setContentType(CONTENT_TYPE);
        response.setCharacterEncoding(CHARACTER_ENCODING);
        response.getWriter().write(json);
    }

    /**
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws SQLException
     * @throws IOException
     */
    private void oneCharacterMovement(HttpServletRequest request, HttpServletResponse response) throws ServletException, SQLException, IOException {
        int idmov = Integer.parseInt(request.getParameter("idmov"));
        Movement character2Mov = FetchData.OneCharacterMove(cn, idmov);
        DebugLog.d("Movement to punish selected");
        String json = new Gson().toJson(character2Mov);
        response.setContentType(CONTENT_TYPE);
        response.setCharacterEncoding(CHARACTER_ENCODING);
        response.getWriter().write(json);
    }
}
