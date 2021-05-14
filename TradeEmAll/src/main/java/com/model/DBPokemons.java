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
 * @author juanm
 */
public class DBPokemons {

    public static int createPokemon(Pokemon pkm) throws Exception {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        String sql = "INSERT INTO Pokemon (name, level, gender, shiny, ability, move_1, move_2, move_3, move_4, nature, "
                + "iv_hp, iv_atk, iv_def, iv_spa, iv_spd, iv_spe, ev_hp, ev_atk, ev_def, ev_spa, ev_spd, ev_spe) "
                + "VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        
        try {
            int pkm_id = 0;
            System.out.println(pkm.getGender());
            ps = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            ps.setString(1, pkm.getName());
            ps.setInt(2, pkm.getLvl());
            ps.setString(3, pkm.getGender());
            ps.setBoolean(4, pkm.getShiny());
            ps.setString(5, pkm.getAbility());
            ps.setString(6, pkm.getMove1());
            ps.setString(7, pkm.getMove2());
            ps.setString(8, pkm.getMove3());
            ps.setString(9, pkm.getMove4());
            ps.setString(10, pkm.getNature());
            ps.setInt(11, pkm.getIVHP());
            ps.setInt(12, pkm.getIVATK());
            ps.setInt(13, pkm.getIVDEF());
            ps.setInt(14, pkm.getIVSPA());
            ps.setInt(15, pkm.getIVSPD());
            ps.setInt(16, pkm.getIVSPE());
            ps.setInt(17, pkm.getEVHP());
            ps.setInt(18, pkm.getEVATK());
            ps.setInt(19, pkm.getEVDEF());
            ps.setInt(20, pkm.getEVSPA());
            ps.setInt(21, pkm.getEVSPD());
            ps.setInt(22, pkm.getEVSPE());
            
            ps.executeUpdate();
            ResultSet rs = ps.getGeneratedKeys();
            if (rs.next()) {
                pkm_id = rs.getInt(1);
            }
            
            rs.close();
            ps.close();
            pool.freeConnection(connection);
            return pkm_id;
        }
        catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
    }

}
