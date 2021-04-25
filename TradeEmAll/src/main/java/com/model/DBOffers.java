/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.model;

import com.conexion.*;
import java.sql.*;

/**
 *
 * @author gonza
 */
public class DBOffers {
    
    public static int postOffer(Offer offer, User user) throws Exception {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        String sql = "INSERT INTO offer (user_id, trade_id, poke_num,"
                + "poke_name, poke_level, poke_gender, poke_shiny,"
                + "poke_ability, poke_move_1, poke_move_2, poke_move_3,"
                + "poke_move_4, poke_nature, poke_ev_hp, poke_ev_atk,"
                + "poke_ev_def, poke_ev_spa, poke_ev_spd, poke_ev_spe,"
                + "poke_iv_hp, poke_iv_atk, poke_iv_def, poke_iv_spa,"
                + "poke_iv_spd, poke_iv_spe)"
                + "VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        
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
            ps.setInt(14, offer.getHPIVs());
            ps.setInt(15, offer.getAttackIVs());
            ps.setInt(16, offer.getDefenseIVs());
            ps.setInt(17, offer.getSAttackIVs());
            ps.setInt(18, offer.getSDefenseIVs());
            ps.setInt(19, offer.getSpeedIVs());
            ps.setInt(20, offer.getHPEVs());
            ps.setInt(21, offer.getAttackEVs());
            ps.setInt(22, offer.getDefenseEVs());
            ps.setInt(23, offer.getSAttackEVs());
            ps.setInt(24, offer.getSDefenseEVs());
            ps.setInt(25, offer.getSpeedEVs());
            
            int id = 0;
            ps.executeUpdate();
            ResultSet rs = ps.getGeneratedKeys();
            if (rs.next()) {
                id = rs.getInt(1);
            }
            ps.close();
            pool.freeConnection(connection);
            return id;
        }
        catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
    }
}
