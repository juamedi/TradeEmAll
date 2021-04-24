/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.model;

import com.conexion.*;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.*;

/**
 *
 * @author juanm
 */
public class DBUsers{
    
    public static int register(User user) throws Exception {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        String sql = "INSERT INTO user (username, password, email, profile_picture) VALUES (?,?,?,?)";

        try {
            ps = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            ps.setString(1, user.getUsername());
            ps.setString(2, user.getPassword());
            ps.setString(3, user.getEmail());
            ps.setString(4, user.getProfilePicture());
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
