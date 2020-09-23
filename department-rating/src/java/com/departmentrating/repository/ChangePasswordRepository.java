/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.departmentrating.repository;

import com.departmentrating.interfaces.ChangePasswordInterface;
import java.sql.Connection;
import java.sql.PreparedStatement;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementCreator;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Chibuike.Ugwu
 */
@Repository
public class ChangePasswordRepository implements ChangePasswordInterface {
    @Autowired
    private JdbcTemplate jdbcTemplate;

    

    @Override
    public void changePassword(String email, String password) {
        String sql = "UPDATE users SET userpassword = ? WHERE user_email = ?";
        final PreparedStatementCreator psc = (final Connection conn) -> {
            final PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, password);
            ps.setString(2, email);
            return ps;
        };
        jdbcTemplate.update(psc);
    }

    
     
}
