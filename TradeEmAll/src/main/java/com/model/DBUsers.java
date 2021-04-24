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
    
    public static int register(Users users) throws Exception {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        String sql = "INSERT INTO users (username, password) VALUES (?,?)";

        try {
            ps = connection.prepareStatement(sql);
            ps.setString(1, users.getUsername());
            ps.setString(2, users.getPassword());
            int rowCount = ps.executeUpdate();
            ps.close();
            pool.freeConnection(connection);
            return rowCount;
        }
        catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
    }
}
