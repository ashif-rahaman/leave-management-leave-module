/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers.ajax;

import db.util.DBExecutor;
import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ashif
 */
@WebServlet(name = "Users", urlPatterns = {"/getusers"})
public class Users extends HttpServlet {

    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request
     * @param response
     * @throws javax.servlet.ServletException
     * @throws java.io.IOException
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request
     * @param response
     * @throws javax.servlet.ServletException
     * @throws java.io.IOException
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String username = request.getParameter("username");
        String jsonReply = "{user:";
        
        if (username != null && !username.isEmpty()) {
            
            DBExecutor db = new DBExecutor();
            
            String sql = "SELECT * FROM users WHERE username = " + username;
            
            ResultSet resultSet = db.execute(sql);
            try {
                if (resultSet.next()) {
                    
                    jsonReply += "\"true\"}";
                }
            } catch (SQLException ex) {
                
                jsonReply += "\"false\"}";
            }
            
            db.close();
            
            response.getWriter().write(jsonReply);
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
