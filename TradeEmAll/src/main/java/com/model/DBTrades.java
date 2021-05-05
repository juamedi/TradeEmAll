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
    
    public static int postTrade(Trade trade, User user) throws Exception {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        String sql = "INSERT INTO trade (active, give_user_id, "
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

    public static ArrayList<Trade> lookTrade (Trade trade, User user) throws Exception {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        String sql = "SELECT T.*, U.username FROM trade T, user U WHERE give_user_id = id AND give_user_id != ? AND active is true AND give_shiny = ?";
        ArrayList<Trade> trade_list = new ArrayList<Trade>();

        try {
            if(!trade.getGiveName().equals("")) {sql = sql + " AND give_name = \"" + trade.getGiveName() + "\"";}
            if(trade.getGiveLevel() != 0) {sql = sql + " AND give_level = " + trade.getGiveLevel();}
            if(!trade.getGiveGender().equals("")) {sql = sql + " AND give_gender = \"" + trade.getGiveGender() + "\"";}
            if(!trade.getGiveAbility().equals("")) {sql = sql + " AND give_ability = \"" + trade.getGiveAbility() + "\"";}
            if(!trade.getGiveMove1().equals("")) {sql = sql + " AND give_move1 = \"" + trade.getGiveMove1() + "\"";}
            if(!trade.getGiveMove2().equals("")) {sql = sql + " AND give_move2 = \"" + trade.getGiveMove2() + "\"";}
            if(!trade.getGiveMove3().equals("")) {sql = sql + " AND give_move3 = \"" + trade.getGiveMove3() + "\"";}
            if(!trade.getGiveMove4().equals("")) {sql = sql + " AND give_move4 = \"" + trade.getGiveMove4() + "\"";}
            if(!trade.getGiveNature().equals("")) {sql = sql + " AND give_nature = \"" + trade.getGiveNature() + "\"";}
            sql = sql + " AND give_HP_EVs >= " + trade.getGiveHPEVs();
            sql = sql + " AND give_Attack_EVs >= " + trade.getGiveAttackEVs();
            sql = sql + " AND give_Defense_EVs >= " + trade.getGiveDefenseEVs();
            sql = sql + " AND give_SAttack_EVs >= " + trade.getGiveSAttackEVs();
            sql = sql + " AND give_SDefense_EVs >= " + trade.getGiveSDefenseEVs();
            sql = sql + " AND give_Speed_EVs >= " + trade.getGiveSpeedEVs();
            sql = sql + " AND give_HP_IVs >= " + trade.getGiveHPIVs();
            sql = sql + " AND give_Attack_IVs >= " + trade.getGiveAttackIVs();
            sql = sql + " AND give_Defense_IVs >= " + trade.getGiveDefenseIVs();
            sql = sql + " AND give_SAttack_IVs >= " + trade.getGiveSAttackIVs();
            sql = sql + " AND give_SDefense_IVs >= " + trade.getGiveSDefenseIVs();
            sql = sql + " AND give_Speed_IVs >= " + trade.getGiveSpeedIVs();
            
            System.out.println(sql);
  
            ps = connection.prepareStatement(sql);
            ps.setInt(1, user.getId());
            ps.setBoolean(2, trade.getGiveShiny());
            rs = ps.executeQuery();
            
            while (rs.next()) {
                Trade dbtrade = new Trade();

                dbtrade.setTradeId(rs.getInt(1));
                dbtrade.setActive(rs.getBoolean(2));
                dbtrade.setGiveUserId(rs.getInt(3));
                dbtrade.setReceiveUserId(rs.getInt(4));
                dbtrade.setGiveReview(rs.getString(5));
                dbtrade.setGiveReviewStars(rs.getInt(6));
                dbtrade.setReceiveReview(rs.getString(7));
                dbtrade.setReceiveReviewStars(rs.getInt(8));
                dbtrade.setGivePokeNum(rs.getInt(9));
                dbtrade.setGiveName(rs.getString(10));
                dbtrade.setGiveLevel(rs.getInt(11));
                dbtrade.setGiveGender(rs.getString(12));
                dbtrade.setGiveShiny(rs.getBoolean(13));
                dbtrade.setGiveAbility(rs.getString(14));
                dbtrade.setGiveMove1(rs.getString(15));
                dbtrade.setGiveMove2(rs.getString(16));
                dbtrade.setGiveMove3(rs.getString(17));
                dbtrade.setGiveMove4(rs.getString(18));
                dbtrade.setGiveNature(rs.getString(19));
                dbtrade.setGiveHPIVs(rs.getInt(20));
                dbtrade.setGiveAttackIVs(rs.getInt(21));
                dbtrade.setGiveDefenseIVs(rs.getInt(22));
                dbtrade.setGiveSAttackIVs(rs.getInt(23));
                dbtrade.setGiveSDefenseIVs(rs.getInt(24));
                dbtrade.setGiveSpeedIVs(rs.getInt(25));
                dbtrade.setGiveHPEVs(rs.getInt(26));
                dbtrade.setGiveAttackEVs(rs.getInt(27));
                dbtrade.setGiveDefenseEVs(rs.getInt(28));
                dbtrade.setGiveSAttackEVs(rs.getInt(29));
                dbtrade.setGiveSDefenseEVs(rs.getInt(30));
                dbtrade.setGiveSpeedEVs(rs.getInt(31));
                dbtrade.setReceivePokeNum(rs.getInt(32));
                dbtrade.setReceiveName(rs.getString(33));
                dbtrade.setReceiveLevel(rs.getInt(34));
                dbtrade.setReceiveGender(rs.getString(35));
                dbtrade.setReceiveShiny(rs.getBoolean(36));
                dbtrade.setReceiveAbility(rs.getString(37));
                dbtrade.setReceiveMove1(rs.getString(38));
                dbtrade.setReceiveMove2(rs.getString(39));
                dbtrade.setReceiveMove3(rs.getString(40));
                dbtrade.setReceiveMove4(rs.getString(41));
                dbtrade.setReceiveNature(rs.getString(42));
                dbtrade.setReceiveHPIVs(rs.getInt(43));
                dbtrade.setReceiveAttackIVs(rs.getInt(44));
                dbtrade.setReceiveDefenseIVs(rs.getInt(45));
                dbtrade.setReceiveSAttackIVs(rs.getInt(46));
                dbtrade.setReceiveSDefenseIVs(rs.getInt(47));
                dbtrade.setReceiveSpeedIVs(rs.getInt(48));
                dbtrade.setReceiveHPEVs(rs.getInt(49));
                dbtrade.setReceiveAttackEVs(rs.getInt(50));
                dbtrade.setReceiveDefenseEVs(rs.getInt(51));
                dbtrade.setReceiveSAttackEVs(rs.getInt(52));
                dbtrade.setReceiveSDefenseEVs(rs.getInt(53));
                dbtrade.setReceiveSpeedEVs(rs.getInt(54));
                dbtrade.setGiveUsername(rs.getString(55));

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
}
