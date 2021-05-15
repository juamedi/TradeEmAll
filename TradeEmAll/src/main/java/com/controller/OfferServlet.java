/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.controller;

import com.model.*;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.*;
import javax.servlet.http.*;
import java.util.*;

/**
 *
 * @author juanm
 */
@WebServlet(name="OfferServlet", urlPatterns={"/OfferServlet"})
public class OfferServlet extends HttpServlet {

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        int id_trade = Integer.parseInt(request.getParameter("id-trade"));
        
        ArrayList<Trade> trade_list = new ArrayList<>();
        trade_list = (ArrayList<Trade>) request.getSession().getAttribute("list_trade");
        //request.getSession().removeAttribute("list_trade");
        System.out.println("pene: " + trade_list);

        try {
            request.setAttribute("id_trade", id_trade);
            request.setAttribute("list_trade", trade_list);
            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/offer.jsp");
            dispatcher.forward(request, response);
        }
        catch (Exception ex){
            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/index.jsp");
            dispatcher.forward(request, response);
        }
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
