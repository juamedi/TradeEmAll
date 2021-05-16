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
@WebServlet(name="ProfileServlet", urlPatterns={"/ProfileServlet"})
public class ProfileServlet extends HttpServlet {

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
        
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");

        try {
            ArrayList<Trade> list_trade = DBTrades.lookTradeUser(user);
            ArrayList<Offer> list_offer = DBOffers.lookOfferUser(user);
            session.setAttribute("list_trade_user", list_trade);
            session.setAttribute("list_offer_user", list_offer);
            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/profile.jsp");
            dispatcher.forward(request, response);
        }
        catch (Exception ex){
            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/login.jsp");
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
        
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");

        try {
            ArrayList<Trade> list_trade = DBTrades.lookTradeUser(user);
            ArrayList<Offer> list_offer = DBOffers.lookOfferUser(user);
            session.setAttribute("list_trade_user", list_trade);
            session.setAttribute("list_offer_user", list_offer);
            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/profile.jsp");
            dispatcher.forward(request, response);
        }
        catch (Exception ex){
            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/login.jsp");
            dispatcher.forward(request, response);
        }
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
