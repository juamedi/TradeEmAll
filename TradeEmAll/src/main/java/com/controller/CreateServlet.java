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
@WebServlet(name="CreateServlet", urlPatterns={"/CreateServlet"})
public class CreateServlet extends HttpServlet {
   

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
        String pkm_give_name = null;
        String pkm_give_ability = null;
        String pkm_give_move1 = null;
        String pkm_give_move2 = null;
        String pkm_give_move3 = null;
        String pkm_give_move4 = null;
        String pkm_give_nature = null;
        String pkm_give_gender = null;
        if (!request.getParameter("pkm-give-gender").equals("")) {pkm_give_gender = request.getParameter("pkm-give-gender");}
        if (!request.getParameter("pkm-give-nature").equals("")) {pkm_give_nature = request.getParameter("pkm-give-nature");}
        if (!request.getParameter("pkm-give-name").equals("")) {pkm_give_name = request.getParameter("pkm-give-name");}
        if (!request.getParameter("pkm-give-ability").equals("")) {pkm_give_ability = request.getParameter("pkm-give-ability");}
        if (!request.getParameter("pkm-give-move-1").equals("")) {pkm_give_move1 = request.getParameter("pkm-give-move-1");}
        if (!request.getParameter("pkm-give-move-2").equals("")) {pkm_give_move2 = request.getParameter("pkm-give-move-2");}
        if (!request.getParameter("pkm-give-move-3").equals("")) {pkm_give_move3 = request.getParameter("pkm-give-move-3");}
        if (!request.getParameter("pkm-give-move-4").equals("")) {pkm_give_move4 = request.getParameter("pkm-give-move-4");}
        int pkm_give_ev_hp = Integer.parseInt(request.getParameter("pkm-give-ev-hp"));
        int pkm_give_ev_atk = Integer.parseInt(request.getParameter("pkm-give-ev-atk"));
        int pkm_give_ev_def = Integer.parseInt(request.getParameter("pkm-give-ev-def"));
        int pkm_give_ev_spa = Integer.parseInt(request.getParameter("pkm-give-ev-spa"));
        int pkm_give_ev_spd = Integer.parseInt(request.getParameter("pkm-give-ev-spd"));
        int pkm_give_ev_spe = Integer.parseInt(request.getParameter("pkm-give-ev-spe"));
        int pkm_give_lvl = 0;
        int pkm_give_iv_hp = 0;
        int pkm_give_iv_atk = 0;
        int pkm_give_iv_def = 0;
        int pkm_give_iv_spa = 0;
        int pkm_give_iv_spd = 0;
        int pkm_give_iv_spe = 0;
        if (!request.getParameter("pkm-give-lvl").equals("")) {pkm_give_lvl = Integer.parseInt(request.getParameter("pkm-give-lvl"));}
        if (!request.getParameter("pkm-give-iv-hp").equals("")) {pkm_give_iv_hp = Integer.parseInt(request.getParameter("pkm-give-iv-hp"));}
        if (!request.getParameter("pkm-give-iv-atk").equals("")) {pkm_give_iv_atk = Integer.parseInt(request.getParameter("pkm-give-iv-atk"));}
        if (!request.getParameter("pkm-give-iv-def").equals("")) {pkm_give_iv_def = Integer.parseInt(request.getParameter("pkm-give-iv-def"));}
        if (!request.getParameter("pkm-give-iv-spa").equals("")) {pkm_give_iv_spa = Integer.parseInt(request.getParameter("pkm-give-iv-spa"));}
        if (!request.getParameter("pkm-give-iv-spd").equals("")) {pkm_give_iv_spd = Integer.parseInt(request.getParameter("pkm-give-iv-spd"));}
        if (!request.getParameter("pkm-give-iv-spe").equals("")) {pkm_give_iv_spe = Integer.parseInt(request.getParameter("pkm-give-iv-spe"));}

        boolean pkm_give_shiny = false;
        String give_shiny = request.getParameter("pkm-give-shiny");
        if (give_shiny != null) {pkm_give_shiny = true;}

        String pkm_receive_name = null;
        String pkm_receive_ability = null;
        String pkm_receive_move1 = null;
        String pkm_receive_move2 = null;
        String pkm_receive_move3 = null;
        String pkm_receive_move4 = null;
        String pkm_receive_nature = null;
        String pkm_receive_gender = null;
        if (!request.getParameter("pkm-receive-gender").equals("")) {pkm_receive_gender = request.getParameter("pkm-receive-gender");}
        if (!request.getParameter("pkm-receive-nature").equals("")) {pkm_receive_nature = request.getParameter("pkm-receive-nature");}
        if (!request.getParameter("pkm-receive-name").equals("")) {pkm_receive_name = request.getParameter("pkm-receive-name");}
        if (!request.getParameter("pkm-receive-ability").equals("")) {pkm_receive_ability = request.getParameter("pkm-receive-ability");}
        if (!request.getParameter("pkm-receive-move-1").equals("")) {pkm_receive_move1 = request.getParameter("pkm-receive-move-1");}
        if (!request.getParameter("pkm-receive-move-2").equals("")) {pkm_receive_move2 = request.getParameter("pkm-receive-move-2");}
        if (!request.getParameter("pkm-receive-move-3").equals("")) {pkm_receive_move3 = request.getParameter("pkm-receive-move-3");}
        if (!request.getParameter("pkm-receive-move-4").equals("")) {pkm_receive_move4 = request.getParameter("pkm-receive-move-4");}
        int pkm_receive_ev_hp = Integer.parseInt(request.getParameter("pkm-receive-ev-hp"));
        int pkm_receive_ev_atk = Integer.parseInt(request.getParameter("pkm-receive-ev-atk"));
        int pkm_receive_ev_def = Integer.parseInt(request.getParameter("pkm-receive-ev-def"));
        int pkm_receive_ev_spa = Integer.parseInt(request.getParameter("pkm-receive-ev-spa"));
        int pkm_receive_ev_spd = Integer.parseInt(request.getParameter("pkm-receive-ev-spd"));
        int pkm_receive_ev_spe = Integer.parseInt(request.getParameter("pkm-receive-ev-spe"));
        int pkm_receive_lvl = 0;
        int pkm_receive_iv_hp = 0;
        int pkm_receive_iv_atk = 0;
        int pkm_receive_iv_def = 0;
        int pkm_receive_iv_spa = 0;
        int pkm_receive_iv_spd = 0;
        int pkm_receive_iv_spe = 0;
        if (!request.getParameter("pkm-receive-lvl").equals("")) {pkm_receive_lvl = Integer.parseInt(request.getParameter("pkm-receive-lvl"));}
        if (!request.getParameter("pkm-receive-iv-hp").equals("")) {pkm_receive_iv_hp = Integer.parseInt(request.getParameter("pkm-receive-iv-hp"));}
        if (!request.getParameter("pkm-receive-iv-atk").equals("")) {pkm_receive_iv_atk = Integer.parseInt(request.getParameter("pkm-receive-iv-atk"));}
        if (!request.getParameter("pkm-receive-iv-def").equals("")) {pkm_receive_iv_def = Integer.parseInt(request.getParameter("pkm-receive-iv-def"));}
        if (!request.getParameter("pkm-receive-iv-spa").equals("")) {pkm_receive_iv_spa = Integer.parseInt(request.getParameter("pkm-receive-iv-spa"));}
        if (!request.getParameter("pkm-receive-iv-spd").equals("")) {pkm_receive_iv_spd = Integer.parseInt(request.getParameter("pkm-receive-iv-spd"));}
        if (!request.getParameter("pkm-receive-iv-spe").equals("")) {pkm_receive_iv_spe = Integer.parseInt(request.getParameter("pkm-receive-iv-spe"));}

        boolean pkm_receive_shiny = false;
        String receive_shiny = request.getParameter("pkm-receive-shiny");
        if (receive_shiny != null) {pkm_receive_shiny = true;}

        Pokemon pkm_give = new Pokemon();
        Pokemon pkm_receive = new Pokemon();

        pkm_give.setName(pkm_give_name);
        pkm_give.setNature(pkm_give_nature);
        pkm_give.setLvl(pkm_give_lvl);
        pkm_give.setGender(pkm_give_gender);
        pkm_give.setAbility(pkm_give_ability);
        pkm_give.setShiny(pkm_give_shiny);
        pkm_give.setMove1(pkm_give_move1);
        pkm_give.setMove2(pkm_give_move2);
        pkm_give.setMove3(pkm_give_move3);
        pkm_give.setMove4(pkm_give_move4);
        pkm_give.setEVHP(pkm_give_ev_hp);
        pkm_give.setEVATK(pkm_give_ev_atk);
        pkm_give.setEVDEF(pkm_give_ev_def);
        pkm_give.setEVSPA(pkm_give_ev_spa);
        pkm_give.setEVSPD(pkm_give_ev_spd);
        pkm_give.setEVSPE(pkm_give_ev_spe);
        pkm_give.setIVHP(pkm_give_iv_hp);
        pkm_give.setIVATK(pkm_give_iv_atk);
        pkm_give.setIVDEF(pkm_give_iv_def);
        pkm_give.setIVSPA(pkm_give_iv_spa);
        pkm_give.setIVSPD(pkm_give_iv_spd);
        pkm_give.setIVSPE(pkm_give_iv_spe);

        pkm_receive.setName(pkm_receive_name);
        pkm_receive.setNature(pkm_receive_nature);
        pkm_receive.setLvl(pkm_receive_lvl);
        pkm_receive.setGender(pkm_receive_gender);
        pkm_receive.setAbility(pkm_receive_ability);
        pkm_receive.setShiny(pkm_receive_shiny);
        pkm_receive.setMove1(pkm_receive_move1);
        pkm_receive.setMove2(pkm_receive_move2);
        pkm_receive.setMove3(pkm_receive_move3);
        pkm_receive.setMove4(pkm_receive_move4);
        pkm_receive.setEVHP(pkm_receive_ev_hp);
        pkm_receive.setEVATK(pkm_receive_ev_atk);
        pkm_receive.setEVDEF(pkm_receive_ev_def);
        pkm_receive.setEVSPA(pkm_receive_ev_spa);
        pkm_receive.setEVSPD(pkm_receive_ev_spd);
        pkm_receive.setEVSPE(pkm_receive_ev_spe);
        pkm_receive.setIVHP(pkm_receive_iv_hp);
        pkm_receive.setIVATK(pkm_receive_iv_atk);
        pkm_receive.setIVDEF(pkm_receive_iv_def);
        pkm_receive.setIVSPA(pkm_receive_iv_spa);
        pkm_receive.setIVSPD(pkm_receive_iv_spd);
        pkm_receive.setIVSPE(pkm_receive_iv_spe);

        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");

        try {
            int id_pkm_give = DBPokemons.createPokemon(pkm_give);
            int id_pkm_receive = DBPokemons.createPokemon(pkm_receive);
            int trade_id = DBTrades.createTrade(id_pkm_give, id_pkm_receive, user);
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
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
