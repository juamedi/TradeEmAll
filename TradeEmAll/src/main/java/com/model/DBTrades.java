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
    
/*
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

*/
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
}
