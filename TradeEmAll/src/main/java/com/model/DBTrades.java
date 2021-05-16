/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.model;

import com.conexion.*;
import java.sql.*;
import java.util.*;

/**
 *
 * @author gonza
 */
public class DBTrades {
    
    public static int createTrade(int pkm_give_id, int pkm_receive_id, User user) throws Exception {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        String sql = "INSERT INTO Trade (active, give_user_id, receive_user_id, give_review, give_review_stars, receive_review, receive_review_stars, "
                + "give_poke_id, receive_poke_id) "
                + "VALUES (?,?,?,?,?,?,?,?,?)";
        
        try {
            int trade_id = 0;
            ps = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            ps.setBoolean(1, true);
            ps.setInt(2, user.getId());
            ps.setString(3, null);
            ps.setString(4, null);
            ps.setString(5, null);
            ps.setString(6, null);
            ps.setString(7, null);
            ps.setInt(8, pkm_give_id);
            ps.setInt(9, pkm_receive_id);
            ps.executeUpdate();
            ResultSet rs = ps.getGeneratedKeys();
            if (rs.next()) {
                trade_id = rs.getInt(1);
            }
            
            rs.close();
            ps.close();
            pool.freeConnection(connection);
            return trade_id;
        }
        catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
    }


    public static ArrayList<Trade> lookTrade (Pokemon pkm, User user) throws Exception {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        String sql = "SELECT T.*, P1.*, P2.*, U.username " + 
                     "FROM trade T, user U, pokemon P1, pokemon P2 " +
                     "WHERE give_user_id = user_id AND give_poke_id = P1.poke_id AND receive_poke_id = P2.poke_id AND give_user_id != ? AND active is true";
        
        ArrayList<Trade> trade_list = new ArrayList<Trade>();

        try {
            if(!pkm.getName().equals("")) {sql = sql + " AND P1.name = \"" + pkm.getName() + "\"";}
            if(pkm.getLvl() != 0) {sql = sql + " AND P1.level = " + pkm.getLvl();}
            if(!pkm.getGender().equals("")) {sql = sql + " AND P1.gender = \"" + pkm.getGender() + "\"";}
            if(!pkm.getAbility().equals("")) {sql = sql + " AND P1.ability = \"" + pkm.getAbility() + "\"";}
            if(pkm.getShiny()) {sql = sql + " AND P1.shiny = true";}
            if(!pkm.getMove1().equals("")) {sql = sql + " AND P1.move_1 = \"" + pkm.getMove1() + "\"";}
            if(!pkm.getMove2().equals("")) {sql = sql + " AND P1.move_2 = \"" + pkm.getMove2() + "\"";}
            if(!pkm.getMove3().equals("")) {sql = sql + " AND P1.move_3 = \"" + pkm.getMove3() + "\"";}
            if(!pkm.getMove4().equals("")) {sql = sql + " AND P1.move_4 = \"" + pkm.getMove4() + "\"";}
            if(!pkm.getNature().equals("")) {sql = sql + " AND P1.nature = \"" + pkm.getNature() + "\"";}
            sql = sql + " AND P1.ev_hp >= " + pkm.getEVHP();
            sql = sql + " AND P1.ev_atk >= " + pkm.getEVATK();
            sql = sql + " AND P1.ev_def >= " + pkm.getEVDEF();
            sql = sql + " AND P1.ev_spa >= " + pkm.getEVSPA();
            sql = sql + " AND P1.ev_spd >= " + pkm.getEVSPD();
            sql = sql + " AND P1.ev_spe >= " + pkm.getEVSPE();
            sql = sql + " AND P1.iv_hp >= " + pkm.getIVHP();
            sql = sql + " AND P1.iv_atk >= " + pkm.getIVATK();
            sql = sql + " AND P1.iv_def >= " + pkm.getIVDEF();
            sql = sql + " AND P1.iv_spa >= " + pkm.getIVSPA();
            sql = sql + " AND P1.iv_spd >= " + pkm.getIVSPD();
            sql = sql + " AND P1.iv_spe >= " + pkm.getIVSPE();
  
            ps = connection.prepareStatement(sql);
            ps.setInt(1, user.getId());
            rs = ps.executeQuery();
            
            while (rs.next()) {
                Pokemon give_pkm = new Pokemon();
                Pokemon receive_pkm = new Pokemon();
                Trade dbtrade = new Trade();

                dbtrade.setTradeId(rs.getInt(1));
                dbtrade.setActive(rs.getBoolean(2));
                dbtrade.setGiveUserId(rs.getInt(3));
                dbtrade.setReceiveUserId(rs.getInt(4));
                dbtrade.setGiveReview(rs.getString(5));
                dbtrade.setGiveReviewStars(rs.getInt(6));
                dbtrade.setReceiveReview(rs.getString(7));
                dbtrade.setReceiveReviewStars(rs.getInt(8));
                
                give_pkm.setPkmId(rs.getInt(9));
                give_pkm.setName(rs.getString(12));
                give_pkm.setLvl(rs.getInt(13));
                give_pkm.setGender(rs.getString(14));
                give_pkm.setShiny(rs.getBoolean(15));
                give_pkm.setAbility(rs.getString(16));
                give_pkm.setMove1(rs.getString(17));
                give_pkm.setMove2(rs.getString(18));
                give_pkm.setMove3(rs.getString(19));
                give_pkm.setMove4(rs.getString(20));
                give_pkm.setNature(rs.getString(21));
                give_pkm.setIVHP(rs.getInt(22));
                give_pkm.setIVATK(rs.getInt(23));
                give_pkm.setIVDEF(rs.getInt(24));
                give_pkm.setIVSPA(rs.getInt(25));
                give_pkm.setIVSPD(rs.getInt(26));
                give_pkm.setIVSPE(rs.getInt(27));
                give_pkm.setEVHP(rs.getInt(28));
                give_pkm.setEVATK(rs.getInt(29));
                give_pkm.setEVDEF(rs.getInt(30));
                give_pkm.setEVSPA(rs.getInt(31));
                give_pkm.setEVSPD(rs.getInt(32));
                give_pkm.setEVSPE(rs.getInt(33));

                receive_pkm.setPkmId(rs.getInt(34));
                receive_pkm.setName(rs.getString(35));
                receive_pkm.setLvl(rs.getInt(36));
                receive_pkm.setGender(rs.getString(37));
                receive_pkm.setShiny(rs.getBoolean(38));
                receive_pkm.setAbility(rs.getString(39));
                receive_pkm.setMove1(rs.getString(40));
                receive_pkm.setMove2(rs.getString(41));
                receive_pkm.setMove3(rs.getString(42));
                receive_pkm.setMove4(rs.getString(43));
                receive_pkm.setNature(rs.getString(44));
                receive_pkm.setIVHP(rs.getInt(45));
                receive_pkm.setIVATK(rs.getInt(46));
                receive_pkm.setIVDEF(rs.getInt(47));
                receive_pkm.setIVSPA(rs.getInt(48));
                receive_pkm.setIVSPD(rs.getInt(49));
                receive_pkm.setIVSPE(rs.getInt(50));
                receive_pkm.setEVHP(rs.getInt(51));
                receive_pkm.setEVATK(rs.getInt(52));
                receive_pkm.setEVDEF(rs.getInt(53));
                receive_pkm.setEVSPA(rs.getInt(54));
                receive_pkm.setEVSPD(rs.getInt(55));
                receive_pkm.setEVSPE(rs.getInt(56));

                dbtrade.setGiveUsername(rs.getString(57));
                dbtrade.setGivePkm(give_pkm);
                dbtrade.setReceivePkm(receive_pkm);

                trade_list.add(dbtrade);
            }

            rs.close();
            ps.close();
            pool.freeConnection(connection);
            return trade_list;
        }
        catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static ArrayList<Trade> lookFirst (User user) throws Exception {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        String sql = "SELECT T.*, P1.*, P2.*, U.username " + 
                     "FROM trade T, user U, pokemon P1, pokemon P2 " +
                     "WHERE give_user_id = user_id AND give_poke_id = P1.poke_id AND receive_poke_id = P2.poke_id AND give_user_id != ? AND active is true";
        
        ArrayList<Trade> trade_list = new ArrayList<Trade>();

        try {
            ps = connection.prepareStatement(sql);
            ps.setInt(1, user.getId());
            rs = ps.executeQuery();
            
            while (rs.next()) {
                Pokemon give_pkm = new Pokemon();
                Pokemon receive_pkm = new Pokemon();
                Trade dbtrade = new Trade();

                dbtrade.setTradeId(rs.getInt(1));
                dbtrade.setActive(rs.getBoolean(2));
                dbtrade.setGiveUserId(rs.getInt(3));
                dbtrade.setReceiveUserId(rs.getInt(4));
                dbtrade.setGiveReview(rs.getString(5));
                dbtrade.setGiveReviewStars(rs.getInt(6));
                dbtrade.setReceiveReview(rs.getString(7));
                dbtrade.setReceiveReviewStars(rs.getInt(8));
                
                give_pkm.setPkmId(rs.getInt(9));
                give_pkm.setName(rs.getString(12));
                give_pkm.setLvl(rs.getInt(13));
                give_pkm.setGender(rs.getString(14));
                give_pkm.setShiny(rs.getBoolean(15));
                give_pkm.setAbility(rs.getString(16));
                give_pkm.setMove1(rs.getString(17));
                give_pkm.setMove2(rs.getString(18));
                give_pkm.setMove3(rs.getString(19));
                give_pkm.setMove4(rs.getString(20));
                give_pkm.setNature(rs.getString(21));
                give_pkm.setIVHP(rs.getInt(22));
                give_pkm.setIVATK(rs.getInt(23));
                give_pkm.setIVDEF(rs.getInt(24));
                give_pkm.setIVSPA(rs.getInt(25));
                give_pkm.setIVSPD(rs.getInt(26));
                give_pkm.setIVSPE(rs.getInt(27));
                give_pkm.setEVHP(rs.getInt(28));
                give_pkm.setEVATK(rs.getInt(29));
                give_pkm.setEVDEF(rs.getInt(30));
                give_pkm.setEVSPA(rs.getInt(31));
                give_pkm.setEVSPD(rs.getInt(32));
                give_pkm.setEVSPE(rs.getInt(33));

                receive_pkm.setPkmId(rs.getInt(34));
                receive_pkm.setName(rs.getString(35));
                receive_pkm.setLvl(rs.getInt(36));
                receive_pkm.setGender(rs.getString(37));
                receive_pkm.setShiny(rs.getBoolean(38));
                receive_pkm.setAbility(rs.getString(39));
                receive_pkm.setMove1(rs.getString(40));
                receive_pkm.setMove2(rs.getString(41));
                receive_pkm.setMove3(rs.getString(42));
                receive_pkm.setMove4(rs.getString(43));
                receive_pkm.setNature(rs.getString(44));
                receive_pkm.setIVHP(rs.getInt(45));
                receive_pkm.setIVATK(rs.getInt(46));
                receive_pkm.setIVDEF(rs.getInt(47));
                receive_pkm.setIVSPA(rs.getInt(48));
                receive_pkm.setIVSPD(rs.getInt(49));
                receive_pkm.setIVSPE(rs.getInt(50));
                receive_pkm.setEVHP(rs.getInt(51));
                receive_pkm.setEVATK(rs.getInt(52));
                receive_pkm.setEVDEF(rs.getInt(53));
                receive_pkm.setEVSPA(rs.getInt(54));
                receive_pkm.setEVSPD(rs.getInt(55));
                receive_pkm.setEVSPE(rs.getInt(56));

                dbtrade.setGiveUsername(rs.getString(57));
                dbtrade.setGivePkm(give_pkm);
                dbtrade.setReceivePkm(receive_pkm);

                trade_list.add(dbtrade);
            }

            rs.close();
            ps.close();
            pool.freeConnection(connection);
            return trade_list;
        }
        catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static ArrayList<Trade> lookTradeUser (User user) throws Exception {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        String sql = "SELECT T.*, P1.*, P2.*, U.username " + 
                     "FROM trade T, user U, pokemon P1, pokemon P2 " +
                     "WHERE give_user_id = user_id AND give_poke_id = P1.poke_id AND receive_poke_id = P2.poke_id AND give_user_id = ? AND active is true";
        
        ArrayList<Trade> trade_list = new ArrayList<Trade>();

        try {
            ps = connection.prepareStatement(sql);
            ps.setInt(1, user.getId());
            rs = ps.executeQuery();
            
            while (rs.next()) {
                Pokemon give_pkm = new Pokemon();
                Pokemon receive_pkm = new Pokemon();
                Trade dbtrade = new Trade();

                dbtrade.setTradeId(rs.getInt(1));
                dbtrade.setActive(rs.getBoolean(2));
                dbtrade.setGiveUserId(rs.getInt(3));
                dbtrade.setReceiveUserId(rs.getInt(4));
                dbtrade.setGiveReview(rs.getString(5));
                dbtrade.setGiveReviewStars(rs.getInt(6));
                dbtrade.setReceiveReview(rs.getString(7));
                dbtrade.setReceiveReviewStars(rs.getInt(8));
                
                give_pkm.setPkmId(rs.getInt(9));
                give_pkm.setName(rs.getString(12));
                give_pkm.setLvl(rs.getInt(13));
                give_pkm.setGender(rs.getString(14));
                give_pkm.setShiny(rs.getBoolean(15));
                give_pkm.setAbility(rs.getString(16));
                give_pkm.setMove1(rs.getString(17));
                give_pkm.setMove2(rs.getString(18));
                give_pkm.setMove3(rs.getString(19));
                give_pkm.setMove4(rs.getString(20));
                give_pkm.setNature(rs.getString(21));
                give_pkm.setIVHP(rs.getInt(22));
                give_pkm.setIVATK(rs.getInt(23));
                give_pkm.setIVDEF(rs.getInt(24));
                give_pkm.setIVSPA(rs.getInt(25));
                give_pkm.setIVSPD(rs.getInt(26));
                give_pkm.setIVSPE(rs.getInt(27));
                give_pkm.setEVHP(rs.getInt(28));
                give_pkm.setEVATK(rs.getInt(29));
                give_pkm.setEVDEF(rs.getInt(30));
                give_pkm.setEVSPA(rs.getInt(31));
                give_pkm.setEVSPD(rs.getInt(32));
                give_pkm.setEVSPE(rs.getInt(33));

                receive_pkm.setPkmId(rs.getInt(34));
                receive_pkm.setName(rs.getString(35));
                receive_pkm.setLvl(rs.getInt(36));
                receive_pkm.setGender(rs.getString(37));
                receive_pkm.setShiny(rs.getBoolean(38));
                receive_pkm.setAbility(rs.getString(39));
                receive_pkm.setMove1(rs.getString(40));
                receive_pkm.setMove2(rs.getString(41));
                receive_pkm.setMove3(rs.getString(42));
                receive_pkm.setMove4(rs.getString(43));
                receive_pkm.setNature(rs.getString(44));
                receive_pkm.setIVHP(rs.getInt(45));
                receive_pkm.setIVATK(rs.getInt(46));
                receive_pkm.setIVDEF(rs.getInt(47));
                receive_pkm.setIVSPA(rs.getInt(48));
                receive_pkm.setIVSPD(rs.getInt(49));
                receive_pkm.setIVSPE(rs.getInt(50));
                receive_pkm.setEVHP(rs.getInt(51));
                receive_pkm.setEVATK(rs.getInt(52));
                receive_pkm.setEVDEF(rs.getInt(53));
                receive_pkm.setEVSPA(rs.getInt(54));
                receive_pkm.setEVSPD(rs.getInt(55));
                receive_pkm.setEVSPE(rs.getInt(56));

                dbtrade.setGiveUsername(rs.getString(57));
                dbtrade.setGivePkm(give_pkm);
                dbtrade.setReceivePkm(receive_pkm);

                trade_list.add(dbtrade);
            }

            rs.close();
            ps.close();
            pool.freeConnection(connection);
            return trade_list;
        }
        catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static Boolean acceptTrade (int id_trade) throws Exception {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        String sql = "UPDATE Trade "
                   + "SET active = false "
                   + "WHERE trade_id = ?";
    
        Boolean done = false;

        try {
            ps = connection.prepareStatement(sql);
            ps.setInt(1, id_trade);
            ps.executeUpdate();

            ps.close();
            pool.freeConnection(connection);
            return done;
        }
        catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
        
    }

    public static ArrayList<Trade> lookTradeOffer (User user) throws Exception {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        String sql = "SELECT O.*, P1.*, P2.*, U.username "
                   + "FROM Offer O, Pokemon P1, Pokemon P2, Trade T, User U "
                   + "WHERE O.trade_id = T.trade_id AND O.user_id = ? AND T.give_user_id = U.user_id AND O.poke_id = P1.poke_id AND T.give_poke_id = P2.poke_id";
                
        ArrayList<Trade> trade_list = new ArrayList<Trade>();

        try {
            ps = connection.prepareStatement(sql);
            ps.setInt(1, user.getId());
            rs = ps.executeQuery();

            while (rs.next()) {
                Trade trade = new Trade();
                Pokemon pkm_receive = new Pokemon();
                Pokemon pkm_give = new Pokemon();

                trade.setTradeId(rs.getInt(3));

                pkm_receive.setPkmId(rs.getInt(6));
                pkm_receive.setName(rs.getString(7));
                pkm_receive.setLvl(rs.getInt(8));
                pkm_receive.setGender(rs.getString(9));
                pkm_receive.setShiny(rs.getBoolean(10));
                pkm_receive.setAbility(rs.getString(11));
                pkm_receive.setMove1(rs.getString(12));
                pkm_receive.setMove2(rs.getString(13));
                pkm_receive.setMove3(rs.getString(14));
                pkm_receive.setMove4(rs.getString(15));
                pkm_receive.setNature(rs.getString(16));
                pkm_receive.setIVHP(rs.getInt(17));
                pkm_receive.setIVATK(rs.getInt(18));
                pkm_receive.setIVDEF(rs.getInt(19));
                pkm_receive.setIVSPA(rs.getInt(20));
                pkm_receive.setIVSPD(rs.getInt(21));
                pkm_receive.setIVSPE(rs.getInt(22));
                pkm_receive.setEVHP(rs.getInt(23));
                pkm_receive.setEVATK(rs.getInt(24));
                pkm_receive.setEVDEF(rs.getInt(25));
                pkm_receive.setEVSPA(rs.getInt(26));
                pkm_receive.setEVSPD(rs.getInt(27));
                pkm_receive.setEVSPE(rs.getInt(28));

                pkm_give.setPkmId(rs.getInt(29));
                pkm_give.setName(rs.getString(30));
                pkm_give.setLvl(rs.getInt(31));
                pkm_give.setGender(rs.getString(32));
                pkm_give.setShiny(rs.getBoolean(33));
                pkm_give.setAbility(rs.getString(34));
                pkm_give.setMove1(rs.getString(35));
                pkm_give.setMove2(rs.getString(36));
                pkm_give.setMove3(rs.getString(37));
                pkm_give.setMove4(rs.getString(38));
                pkm_give.setNature(rs.getString(39));
                pkm_give.setIVHP(rs.getInt(40));
                pkm_give.setIVATK(rs.getInt(41));
                pkm_give.setIVDEF(rs.getInt(42));
                pkm_give.setIVSPA(rs.getInt(43));
                pkm_give.setIVSPD(rs.getInt(44));
                pkm_give.setIVSPE(rs.getInt(45));
                pkm_give.setEVHP(rs.getInt(46));
                pkm_give.setEVATK(rs.getInt(47));
                pkm_give.setEVDEF(rs.getInt(48));
                pkm_give.setEVSPA(rs.getInt(49));
                pkm_give.setEVSPD(rs.getInt(50));
                pkm_give.setEVSPE(rs.getInt(51));

                trade.setGiveUsername(rs.getString(52));

                trade.setGivePkm(pkm_give);
                trade.setReceivePkm(pkm_receive);

                trade_list.add(trade);
            }
            
            rs.close();
            ps.close();
            pool.freeConnection(connection);
            return trade_list;
        }
        catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static ArrayList<Trade> lookHistorial (User user) throws Exception {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        String sql = "SELECT O.*, P1.*, P2.*, U1.username, U2.username " + 
                     "FROM Offer O, Pokemon P1, Pokemon P2, Trade T, User U1, User U2 " + 
                     "WHERE O.trade_id = T.trade_id AND (T.give_user_id = ? OR O.user_id = ?) AND T.give_user_id = U1.user_id " + 
                     "AND O.user_id = U2.user_id AND O.poke_id = P1.poke_id AND T.give_poke_id = P2.poke_id AND T.active is false AND O.accepted = \"Accepted\"";
                
        ArrayList<Trade> hist_list = new ArrayList<Trade>();

        try {
            ps = connection.prepareStatement(sql);
            ps.setInt(1, user.getId());
            ps.setInt(2, user.getId());
            rs = ps.executeQuery();

            while (rs.next()) {
                Trade trade = new Trade();
                Pokemon pkm_receive = new Pokemon();
                Pokemon pkm_give = new Pokemon();

                trade.setTradeId(rs.getInt(3));

                pkm_receive.setPkmId(rs.getInt(6));
                pkm_receive.setName(rs.getString(7));
                pkm_receive.setLvl(rs.getInt(8));
                pkm_receive.setGender(rs.getString(9));
                pkm_receive.setShiny(rs.getBoolean(10));
                pkm_receive.setAbility(rs.getString(11));
                pkm_receive.setMove1(rs.getString(12));
                pkm_receive.setMove2(rs.getString(13));
                pkm_receive.setMove3(rs.getString(14));
                pkm_receive.setMove4(rs.getString(15));
                pkm_receive.setNature(rs.getString(16));
                pkm_receive.setIVHP(rs.getInt(17));
                pkm_receive.setIVATK(rs.getInt(18));
                pkm_receive.setIVDEF(rs.getInt(19));
                pkm_receive.setIVSPA(rs.getInt(20));
                pkm_receive.setIVSPD(rs.getInt(21));
                pkm_receive.setIVSPE(rs.getInt(22));
                pkm_receive.setEVHP(rs.getInt(23));
                pkm_receive.setEVATK(rs.getInt(24));
                pkm_receive.setEVDEF(rs.getInt(25));
                pkm_receive.setEVSPA(rs.getInt(26));
                pkm_receive.setEVSPD(rs.getInt(27));
                pkm_receive.setEVSPE(rs.getInt(28));

                pkm_give.setPkmId(rs.getInt(29));
                pkm_give.setName(rs.getString(30));
                pkm_give.setLvl(rs.getInt(31));
                pkm_give.setGender(rs.getString(32));
                pkm_give.setShiny(rs.getBoolean(33));
                pkm_give.setAbility(rs.getString(34));
                pkm_give.setMove1(rs.getString(35));
                pkm_give.setMove2(rs.getString(36));
                pkm_give.setMove3(rs.getString(37));
                pkm_give.setMove4(rs.getString(38));
                pkm_give.setNature(rs.getString(39));
                pkm_give.setIVHP(rs.getInt(40));
                pkm_give.setIVATK(rs.getInt(41));
                pkm_give.setIVDEF(rs.getInt(42));
                pkm_give.setIVSPA(rs.getInt(43));
                pkm_give.setIVSPD(rs.getInt(44));
                pkm_give.setIVSPE(rs.getInt(45));
                pkm_give.setEVHP(rs.getInt(46));
                pkm_give.setEVATK(rs.getInt(47));
                pkm_give.setEVDEF(rs.getInt(48));
                pkm_give.setEVSPA(rs.getInt(49));
                pkm_give.setEVSPD(rs.getInt(50));
                pkm_give.setEVSPE(rs.getInt(51));

                trade.setGiveUsername(rs.getString(52));
                trade.setReceiveUsername(rs.getString(53));

                trade.setGivePkm(pkm_give);
                trade.setReceivePkm(pkm_receive);

                hist_list.add(trade);
            }
            
            rs.close();
            ps.close();
            pool.freeConnection(connection);
            return hist_list;
        }
        catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }
}
