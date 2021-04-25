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

/**
 *
 * @author juanm
 */
@WebServlet(name="SearchServlet", urlPatterns={"/SearchServlet"})
public class SearchServlet extends HttpServlet {
   
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
        String pkmname = request.getParameter("pkmname");
        String pkmnature = request.getParameter("pkmnature");
        int pkmlevel = Integer.parseInt(request.getParameter("pkmlevel"));
        String pkmgender = request.getParameter("pkmgender");
        String shiny = request.getParameter("pkmshiny");
        boolean pkmshiny = false;
        if (shiny != null) {pkmshiny = true;}
        int ev_hp = Integer.parseInt(request.getParameter("range-hp"));
        int ev_atk = Integer.parseInt(request.getParameter("range-atk"));
        int ev_def = Integer.parseInt(request.getParameter("range-def"));
        int ev_spa = Integer.parseInt(request.getParameter("range-spa"));
        int ev_spd = Integer.parseInt(request.getParameter("range-spd"));
        int ev_spe = Integer.parseInt(request.getParameter("range-spe"));
        int iv_hp = Integer.parseInt(request.getParameter("iv-hp"));
        int iv_atk = Integer.parseInt(request.getParameter("iv-atk"));
        int iv_def = Integer.parseInt(request.getParameter("iv-def"));
        int iv_spa = Integer.parseInt(request.getParameter("iv-spa"));
        int iv_spd = Integer.parseInt(request.getParameter("iv-spd"));
        int iv_spe = Integer.parseInt(request.getParameter("iv-spe"));
        String moveset1 = request.getParameter("moveset1");
        String moveset2 = request.getParameter("moveset2");
        String moveset3 = request.getParameter("moveset3");
        String moveset4 = request.getParameter("moveset4");

        Offer offer = new Offer();

        offer.setName(pkmname);
        offer.setNature(pkmnature);
        offer.setLevel(pkmlevel);
        offer.setGender(pkmgender);
        offer.setShiny(pkmshiny);
        offer.setMove1(moveset1);
        offer.setMove2(moveset2);
        offer.setMove3(moveset3);
        offer.setMove4(moveset4);
        offer.setHPEVs(ev_hp);
        offer.setAttackEVs(ev_atk);
        offer.setDefenseEVs(ev_def);
        offer.setSAttackEVs(ev_spa);
        offer.setSDefenseEVs(ev_spd);
        offer.setSpeedEVs(ev_spe);
        offer.setHPIVs(iv_hp);
        offer.setAttackIVs(iv_atk);
        offer.setDefenseIVs(iv_def);
        offer.setSAttackIVs(iv_spa);
        offer.setSDefenseIVs(iv_spd);
        offer.setSpeedIVs(iv_spe);
        
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");

        try {
            int id = DBOffers.postOffer(offer, user);
            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/search.jsp");
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
