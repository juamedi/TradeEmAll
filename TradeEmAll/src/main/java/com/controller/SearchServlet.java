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
        String pkmgender = request.getParameter("pkmgender");
        String pkmability = request.getParameter("pkmability");
        String moveset1 = request.getParameter("moveset1");
        String moveset2 = request.getParameter("moveset2");
        String moveset3 = request.getParameter("moveset3");
        String moveset4 = request.getParameter("moveset4");
        int ev_hp = Integer.parseInt(request.getParameter("range-hp"));
        int ev_atk = Integer.parseInt(request.getParameter("range-atk"));
        int ev_def = Integer.parseInt(request.getParameter("range-def"));
        int ev_spa = Integer.parseInt(request.getParameter("range-spa"));
        int ev_spd = Integer.parseInt(request.getParameter("range-spd"));
        int ev_spe = Integer.parseInt(request.getParameter("range-spe"));
        int pkmlevel = 0;
        int iv_hp = 0;
        int iv_atk = 0;
        int iv_def = 0;
        int iv_spa = 0;
        int iv_spd = 0;
        int iv_spe = 0;
        if (!request.getParameter("pkmlevel").equals("")) {pkmlevel = Integer.parseInt(request.getParameter("pkmlevel"));}

        if (!request.getParameter("iv-hp").equals("")) {iv_hp = Integer.parseInt(request.getParameter("iv-hp"));}
        if (!request.getParameter("iv-atk").equals("")) {iv_atk = Integer.parseInt(request.getParameter("iv-atk"));}
        if (!request.getParameter("iv-def").equals("")) {iv_def = Integer.parseInt(request.getParameter("iv-def"));}
        if (!request.getParameter("iv-spa").equals("")) {iv_spa = Integer.parseInt(request.getParameter("iv-spa"));}
        if (!request.getParameter("iv-spd").equals("")) {iv_spd = Integer.parseInt(request.getParameter("iv-spd"));}
        if (!request.getParameter("iv-spe").equals("")) {iv_spe = Integer.parseInt(request.getParameter("iv-spe"));}

        boolean pkmshiny = false;
        String shiny = request.getParameter("pkmshiny");
        if (shiny != null) {pkmshiny = true;}

        Pokemon pkm = new Pokemon();

        pkm.setName(pkmname);
        pkm.setNature(pkmnature);
        pkm.setLvl(pkmlevel);
        pkm.setGender(pkmgender);
        pkm.setAbility(pkmability);
        pkm.setShiny(pkmshiny);
        pkm.setMove1(moveset1);
        pkm.setMove2(moveset2);
        pkm.setMove3(moveset3);
        pkm.setMove4(moveset4);
        pkm.setEVHP(ev_hp);
        pkm.setEVATK(ev_atk);
        pkm.setEVDEF(ev_def);
        pkm.setEVSPA(ev_spa);
        pkm.setEVSPD(ev_spd);
        pkm.setEVSPE(ev_spe);
        pkm.setIVHP(iv_hp);
        pkm.setIVATK(iv_atk);
        pkm.setIVDEF(iv_def);
        pkm.setIVSPA(iv_spa);
        pkm.setIVSPD(iv_spd);
        pkm.setIVSPE(iv_spe);
        
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");

        try {
            ArrayList<Trade> list_trade = DBTrades.lookTrade(pkm, user);
            request.setAttribute("list_trade", list_trade);
            session.setAttribute("list_trade", list_trade);
            RequestDispatcher dispatcher = request.getRequestDispatcher("/search.jsp");
            dispatcher.forward(request, response);
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
