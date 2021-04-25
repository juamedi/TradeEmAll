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
public class DBTrades {
    
    public static int postTrade(Trade trade, User user) throws Exception {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        String sql = "INSERT INTO trade ( active, give_user_id, "
                + "receive_user_id, give_review, give_review_stars, "
                + "receive_review, receive_review_stars, give_poke_num, "
                + "give_name, give_level, give_gender, give_shiny, "
                + "give_ability, give_move1, give_move2, give_move3, "
                + "give_move4, give_nature, give_HP_IVs, give_Attack_IVs, "
                + "give_Defense_IVs, give_SAttack_IVs, give_SDefense_IVs, "
                + "give_Speed_IVs, give_HP_EVs, give_Attack_EVs, "
                + "give_Defense_EVs, give_SAttack_EVs, give_SDefense_EVs, "
                + "give_Speed_EVs, receive_poke_num, receive_name, "
                + "receive_level, receive_gender, receive_shiny, "
                + "receive_ability, receive_move1, receive_move2, "
                + "receive_move3, receive_move4, receive_nature, "
                + "receive_HP_IVs, receive_Attack_IVs, receive_Defense_IVs, "
                + "receive_SAttack_IVs, receive_SDefense_IVs, "
                + "receive_Speed_IVs, receive_HP_EVs, receive_Attack_EVs, "
                + "receive_Defense_EVs, receive_SAttack_EVs, "
                + "receive_SDefense_EVs, receive_Speed_EVs) VALUES (?,?,?,?,"
                + "?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,"
                + "?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        
        try {
            ps = connection.prepareStatement(sql, 
                    Statement.RETURN_GENERATED_KEYS);
            ps.setBoolean(1, trade.getActive());
            ps.setInt(2, user.getId());
            ps.setInt(3, trade.getReceiveUserId());
            ps.setString(4, trade.getGiveReview());
            ps.setInt(5, trade.getGiveReviewStars());
            ps.setString(6, trade.getReceiveReview());
            ps.setInt(7, trade.getReceiveReviewStars());
            ps.setInt(8, trade.getGivePokeNum());
            ps.setString(9, trade.getGiveName());
            ps.setInt(10, trade.getGiveLevel());
            ps.setString(11, trade.getGiveGender());
            ps.setBoolean(12, trade.getGiveShiny());
            ps.setString(13, trade.getGiveAbility());
            ps.setString(14, trade.getGiveMove1());
            ps.setString(15, trade.getGiveMove2());
            ps.setString(16, trade.getGiveMove3());
            ps.setString(17, trade.getGiveMove4());
            ps.setString(18, trade.getGiveNature());
            ps.setInt(19, trade.getGiveHPIVs());
            ps.setInt(20, trade.getGiveAttackIVs());
            ps.setInt(21, trade.getGiveDefenseIVs());
            ps.setInt(22, trade.getGiveSAttackIVs());
            ps.setInt(23, trade.getGiveSDefenseIVs());
            ps.setInt(24, trade.getGiveSpeedIVs());
            ps.setInt(25, trade.getGiveHPEVs());
            ps.setInt(26, trade.getGiveAttackEVs());
            ps.setInt(27, trade.getGiveDefenseEVs());
            ps.setInt(28, trade.getGiveSAttackEVs());
            ps.setInt(29, trade.getGiveSDefenseEVs());
            ps.setInt(30, trade.getGiveSpeedEVs());
            ps.setInt(31, trade.getReceivePokeNum());
            ps.setString(32, trade.getReceiveName());
            ps.setInt(33, trade.getReceiveLevel());
            ps.setString(34, trade.getReceiveGender());
            ps.setBoolean(35, trade.getReceiveShiny());
            ps.setString(36, trade.getReceiveAbility());
            ps.setString(37, trade.getReceiveMove1());
            ps.setString(38, trade.getReceiveMove2());
            ps.setString(39, trade.getReceiveMove3());
            ps.setString(40, trade.getReceiveMove4());
            ps.setString(41, trade.getReceiveNature());
            ps.setInt(42, trade.getReceiveHPIVs());
            ps.setInt(43, trade.getReceiveAttackIVs());
            ps.setInt(44, trade.getReceiveDefenseIVs());
            ps.setInt(45, trade.getReceiveSAttackIVs());
            ps.setInt(46, trade.getReceiveSDefenseIVs());
            ps.setInt(47, trade.getReceiveSpeedIVs());
            ps.setInt(48, trade.getReceiveHPEVs());
            ps.setInt(49, trade.getReceiveAttackEVs());
            ps.setInt(50, trade.getReceiveDefenseEVs());
            ps.setInt(51, trade.getReceiveSAttackEVs());
            ps.setInt(52, trade.getReceiveSDefenseEVs());
            ps.setInt(53, trade.getReceiveSpeedEVs());
            
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
