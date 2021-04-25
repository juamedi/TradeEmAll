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
    
    public static int postOffer(Offer offer) throws Exception {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        String sql = "INSERT INTO offer (trade_id, user_id, poke_num, name," +
                    "level, gender, shiny, ability," +
                    "move1, move2, move3, move4," +
                    "nature, HP_IVs, Attack_IVs, Defense_IVs," +
                    "SAttack_IVs, SDefense_IVs, Speed_IVs," +
                    "HP_EVs, Attack_EVs, Defense_EVs," +
                    "SAttack_EVs, SDefense_EVs, Speed_EVs " +
                    "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, "
                    + "?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
        
        try {
            ps = connection.prepareStatement(sql,
                    Statement.RETURN_GENERATED_KEYS);
            ps.setInt(1, offer.getTradeId());
            ps.setInt(2, offer.getUserId());
            ps.setInt(3, offer.getPokeNum());
            ps.setString(4, offer.getName());
            ps.setInt(5, offer.getLevel());
            ps.setObject(6, offer.getGender());
            ps.setBoolean(7, offer.getShiny());
            ps.setString(8, offer.getAbility());
            ps.setString(9, offer.getMove1());
            ps.setString(10, offer.getMove2());
            ps.setString(11, offer.getMove3());
            ps.setString(12, offer.getMove4());
            ps.setObject(13, offer.getNature());
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
