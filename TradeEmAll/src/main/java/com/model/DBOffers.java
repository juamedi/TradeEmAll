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
public class DBOffers {
    
    public static int createOffer(int pkm_receive_id, int trade_id, User user) throws Exception {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        String sql = "INSERT INTO Offer (user_id, trade_id, poke_id, accepted) "
                + "VALUES (?,?,?,?)";
        
        try {
            int offer_id = 0;
            ps = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            ps.setInt(1, user.getId());
            ps.setInt(2, trade_id);
            ps.setInt(3, pkm_receive_id);
            ps.setString(4, "Pending");
            ps.executeUpdate();
            ResultSet rs = ps.getGeneratedKeys();
            if (rs.next()) {
                offer_id = rs.getInt(1);
            }
            
            rs.close();
            ps.close();
            pool.freeConnection(connection);
            return offer_id;
        }
        catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
    }

    public static ArrayList<Offer> lookOfferUser (User user) throws Exception {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        String sql = "SELECT O.*, P.*, U.username "
                   + "FROM Offer O, Pokemon P, Trade T, User U "
                   + "WHERE O.trade_id = T.trade_id AND T.give_user_id = ? AND T.active is true AND O.user_id = U.user_id AND O.accepted = \"Pending\" AND O.poke_id = P.poke_id";

                
        ArrayList<Offer> offer_list = new ArrayList<Offer>();

        try {
            ps = connection.prepareStatement(sql);
            ps.setInt(1, user.getId());
            rs = ps.executeQuery();

            while (rs.next()) {
                Offer offer = new Offer();
                Pokemon pkm = new Pokemon();

                offer.setOfferId(rs.getInt(1));
                offer.setUserId(rs.getInt(2));
                offer.setTradeId(rs.getInt(3));

                pkm.setPkmId(rs.getInt(6));
                pkm.setName(rs.getString(7));
                pkm.setLvl(rs.getInt(8));
                pkm.setGender(rs.getString(9));
                pkm.setShiny(rs.getBoolean(10));
                pkm.setAbility(rs.getString(11));
                pkm.setMove1(rs.getString(12));
                pkm.setMove2(rs.getString(13));
                pkm.setMove3(rs.getString(14));
                pkm.setMove4(rs.getString(15));
                pkm.setNature(rs.getString(16));
                pkm.setIVHP(rs.getInt(17));
                pkm.setIVATK(rs.getInt(18));
                pkm.setIVDEF(rs.getInt(19));
                pkm.setIVSPA(rs.getInt(20));
                pkm.setIVSPD(rs.getInt(21));
                pkm.setIVSPE(rs.getInt(22));
                pkm.setEVHP(rs.getInt(23));
                pkm.setEVATK(rs.getInt(24));
                pkm.setEVDEF(rs.getInt(25));
                pkm.setEVSPA(rs.getInt(26));
                pkm.setEVSPD(rs.getInt(27));
                pkm.setEVSPE(rs.getInt(28));

                offer.setUsername(rs.getString(29));

                offer.setPkm(pkm);

                offer_list.add(offer);
            }
            
            rs.close();
            ps.close();
            pool.freeConnection(connection);
            return offer_list;
        }
        catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static Boolean acceptOffer (int id_offer, int id_trade) throws Exception {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        System.out.println(id_offer);
        String sql_accept = "UPDATE Offer "
                          + "SET accepted=\"Accepted\" "
                          + "WHERE offer_id = ?";

        String sql_reject = "UPDATE Offer "
                          + "SET accepted=\"Rejected\" "
                          + "WHERE offer_id != ? AND trade_id = ?";
    
        Boolean done = false;

        try {
            ps = connection.prepareStatement(sql_accept);
            ps.setInt(1, id_offer);
            ps.executeUpdate();
            
            ps = connection.prepareStatement(sql_reject);
            ps.setInt(1, id_offer);
            ps.setInt(2, id_trade);
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

    public static Boolean rejectOffer (int id_offer) throws Exception {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        System.out.println(id_offer);
        String sql_accept = "UPDATE Offer "
                          + "SET accepted=\"Rejected\" "
                          + "WHERE offer_id = ?";
    
        Boolean done = false;

        try {
            ps = connection.prepareStatement(sql_accept);
            ps.setInt(1, id_offer);
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

}

