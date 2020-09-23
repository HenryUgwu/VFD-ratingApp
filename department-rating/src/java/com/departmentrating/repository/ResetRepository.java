/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.departmentrating.repository;

import com.departmentrating.interfaces.ResetInterface;
import com.departmentrating.models.Reset;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementCreator;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Chibuike.Ugwu
 */
@Repository
public class ResetRepository implements ResetInterface {
    @Autowired
    private JdbcTemplate jdbcTemplate;

    @Override
    public List<Reset> getToken(String email, String token) {
        String sql = "SELECT * FROM reset_token where email = ? and token = ? and status = ?";
        final PreparedStatementCreator psc = (final Connection conn) -> {
            final PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, email);
            ps.setString(2, token);
             ps.setBoolean(3, true);
            return ps;
        };
        
        return jdbcTemplate.query(psc, new ResetMapper());
    }

    @Override
    public void insertToken(String email, String token) {
        String sql = "REPLACE INTO reset_token (email, token, status) VALUES (?, ?, ?)";
        final PreparedStatementCreator psc = (final Connection conn) -> {
            final PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, email);
            ps.setString(2, token);
            ps.setBoolean(3, true);
            return ps;
        };
        jdbcTemplate.update(psc);
    }

    @Override
    public void updateStatus(String email) {
        String sql = "UPDATE reset_token SET status = ? WHERE email = ?";
         final PreparedStatementCreator psc = (final Connection conn) -> {
            final PreparedStatement ps = conn.prepareStatement(sql);
            ps.setBoolean(1,false);
            ps.setString(2, email);
            return ps;
        };
        jdbcTemplate.update(psc);
    }

    
    
    class ResetMapper implements RowMapper<Reset>{

        @Override
        public Reset mapRow(ResultSet rs, int i) throws SQLException {
            Reset reset = new Reset();
            reset.setId(rs.getInt("Id"));
            reset.setEmail(rs.getString("email"));
            reset.setStatus(rs.getBoolean("status"));
            reset.setToken(rs.getString("token"));
            return reset;
        }
        
    } 
}
