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
@WebServlet(name="AcceptOfferServlet", urlPatterns={"/AcceptOfferServlet"})
public class AcceptOfferServlet extends HttpServlet {

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
        ArrayList<Trade> trade_list = (ArrayList<Trade>) session.getAttribute("list_trade_user");
        ArrayList<Offer> offer_list = (ArrayList<Offer>) session.getAttribute("list_offer_user");
        int index_trade = Integer.parseInt(request.getParameter("id-list-trade"));
        int index_offer = Integer.parseInt(request.getParameter("id-list-offer"));

        Trade trade = new Trade();
        Offer offer = new Offer();

        trade = trade_list.get(index_trade);
        offer = offer_list.get(index_offer);

        int id_offer = offer.getOfferId();
        int id_trade = trade.getTradeId();

        try {
            Boolean offer_accepted = DBOffers.acceptOffer(id_offer, id_trade);
            Boolean trade_accepted = DBTrades.acceptTrade(id_trade);
            response.sendRedirect("ProfileServlet");
            //RequestDispatcher dispatcher = request.getRequestDispatcher("ProfileServlet");
            //dispatcher.forward(request, response);
        }
        catch (Exception ex){
            RequestDispatcher dispatcher = request.getRequestDispatcher("/index.jsp");
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
