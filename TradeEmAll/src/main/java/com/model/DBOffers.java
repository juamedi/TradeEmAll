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
    
    public static int postOffer(Offer offer, User user) throws Exception {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        String sql = "INSERT INTO offer (user_id, trade_id, poke_num, poke_name, poke_level, " +
                     "poke_gender, poke_shiny, poke_ability, poke_move_1, poke_move_2, poke_move_3, poke_move_4, " +
                     "poke_nature, poke_ev_hp, poke_ev_atk, poke_ev_def, poke_ev_spa, poke_ev_spd, poke_ev_spe, " +
                     "poke_iv_hp, poke_iv_atk, poke_iv_def, poke_iv_spa, poke_iv_spd, poke_iv_spe) " + 
                     "VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        
        try {
            ps = connection.prepareStatement(sql,
                    Statement.RETURN_GENERATED_KEYS);
            ps.setInt(1, user.getId());
            ps.setInt(2, offer.getTradeId());
            ps.setInt(3, offer.getPokeNum());
            ps.setString(4, offer.getName());
            ps.setInt(5, offer.getLevel());
            ps.setString(6, offer.getGender());
            ps.setBoolean(7, offer.getShiny());
            ps.setString(8, offer.getAbility());
            ps.setString(9, offer.getMove1());
            ps.setString(10, offer.getMove2());
            ps.setString(11, offer.getMove3());
            ps.setString(12, offer.getMove4());
            ps.setString(13, offer.getNature());
            ps.setInt(14, offer.getHPEVs());
            ps.setInt(15, offer.getAttackEVs());
            ps.setInt(16, offer.getDefenseEVs());
            ps.setInt(17, offer.getSAttackEVs());
            ps.setInt(18, offer.getSDefenseEVs());
            ps.setInt(19, offer.getSpeedEVs());
            ps.setInt(20, offer.getHPIVs());
            ps.setInt(21, offer.getAttackIVs());
            ps.setInt(22, offer.getDefenseIVs());
            ps.setInt(23, offer.getSAttackIVs());
            ps.setInt(24, offer.getSDefenseIVs());
            ps.setInt(25, offer.getSpeedIVs());
            
            int id = 0;
            ps.executeUpdate();
            ResultSet rs = ps.getGeneratedKeys();
            if (rs.next()) {
                id = rs.getInt(1);
            }
            rs.close();
            ps.close();
            pool.freeConnection(connection);
            return id;
        }
        catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
    }

    public static ArrayList<Offer> lookOffer (Offer offer, User user) throws Exception {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        String sql = "SELECT O.*, U.username FROM offer O, user U WHERE user_id = id AND user_id != ? AND poke_name = ? AND poke_level = ? " +
                     "AND poke_gender = ? AND poke_shiny = ? AND poke_ability IS ? AND poke_move_1 = ? " +
                     "AND poke_move_2 = ? AND poke_move_3 = ? AND poke_move_4 = ? AND poke_nature = ? " + 
                     "AND poke_ev_hp = ? AND poke_ev_atk = ? AND poke_ev_def = ? AND poke_ev_spa = ? " +
                     "AND poke_ev_spd = ? AND poke_ev_spe = ? AND poke_iv_hp = ? AND poke_iv_atk = ? " +
                     "AND poke_iv_def = ? AND poke_iv_spa = ? AND poke_iv_spd = ? AND poke_iv_spe = ?";
        ArrayList<Offer> offer_list = new ArrayList<Offer>();

        try {
            ps = connection.prepareStatement(sql);
            ps.setInt(1, user.getId());
            ps.setString(2, offer.getName());
            ps.setInt(3, offer.getLevel());
            ps.setString(4, offer.getGender());
            ps.setBoolean(5, offer.getShiny());
            ps.setString(6, offer.getAbility());
            ps.setString(7, offer.getMove1());
            ps.setString(8, offer.getMove2());
            ps.setString(9, offer.getMove3());
            ps.setString(10, offer.getMove4());
            ps.setString(11, offer.getNature());
            ps.setInt(12, offer.getHPEVs());
            ps.setInt(13, offer.getAttackEVs());
            ps.setInt(14, offer.getDefenseEVs());
            ps.setInt(15, offer.getSAttackEVs());
            ps.setInt(16, offer.getSDefenseEVs());
            ps.setInt(17, offer.getSpeedEVs());
            ps.setInt(18, offer.getHPIVs());
            ps.setInt(19, offer.getAttackIVs());
            ps.setInt(20, offer.getDefenseIVs());
            ps.setInt(21, offer.getSAttackIVs());
            ps.setInt(22, offer.getSDefenseIVs());
            ps.setInt(23, offer.getSpeedIVs());
            rs = ps.executeQuery();
            
            while (rs.next()) {
                Offer dboffer = new Offer();

                dboffer.setOfferId(rs.getInt(1));
                dboffer.setUserId(rs.getInt(2));
                dboffer.setTradeId(rs.getInt(3));
                dboffer.setName(rs.getString(5));
                dboffer.setLevel(rs.getInt(6));
                dboffer.setGender(rs.getString(7));
                dboffer.setShiny(rs.getBoolean(8));
                dboffer.setMove1(rs.getString(10));
                dboffer.setMove2(rs.getString(11));
                dboffer.setMove3(rs.getString(12));
                dboffer.setMove4(rs.getString(13));
                dboffer.setNature(rs.getString(14));
                dboffer.setHPEVs(rs.getInt(15));
                dboffer.setAttackEVs(rs.getInt(16));
                dboffer.setDefenseEVs(rs.getInt(17));
                dboffer.setSAttackEVs(rs.getInt(18));
                dboffer.setSDefenseEVs(rs.getInt(19));
                dboffer.setSpeedEVs(rs.getInt(20));
                dboffer.setHPIVs(rs.getInt(21));
                dboffer.setAttackIVs(rs.getInt(22));
                dboffer.setDefenseIVs(rs.getInt(23));
                dboffer.setSAttackIVs(rs.getInt(24));
                dboffer.setSDefenseIVs(rs.getInt(25));
                dboffer.setSpeedIVs(rs.getInt(26));

                offer_list.add(dboffer);
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
}
