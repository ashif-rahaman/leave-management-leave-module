/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ashif
 */
@WebServlet(name = "HomeController", urlPatterns = {"/home"})
public class HomeController extends HttpServlet {

    private static final long serialVersionUID = 1L;

//      Handles the HTTP <code>GET</code> method.
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String user = (String) request.getSession().getAttribute("userKey");

        if (user != null) {

            response.sendRedirect("home.jsp");
            return;
        } else {

            response.sendRedirect("index");
            return;
        }
    }

//      Handles the HTTP <code>POST</code> method.
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String user = (String) request.getSession().getAttribute("userKey");

        if (user != null) {

            response.sendRedirect("home.jsp");
            return;
        } else {

            response.sendRedirect("index");
            return;
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
