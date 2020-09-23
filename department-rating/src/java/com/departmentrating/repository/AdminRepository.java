/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.departmentrating.repository;

import com.departmentrating.interfaces.AdminInterface;
import com.departmentrating.interfaces.UserInterface;
import com.departmentrating.models.Admin;
import com.departmentrating.models.Users;
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
public class AdminRepository implements AdminInterface {
    @Autowired
    private JdbcTemplate jdbcTemplate;

    @Override
    public List<Admin> getAdmin(String email) {
        String sql = "SELECT * FROM tbl_admin where email = ?";
        final PreparedStatementCreator psc = (final Connection conn) -> {
            final PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, email);
            return ps;
        };
        
        return jdbcTemplate.query(psc, new AdminMapper());
    }
    
    class AdminMapper implements RowMapper<Admin>{

        @Override
        public Admin mapRow(ResultSet rs, int i) throws SQLException {
            Admin admin = new Admin();
            admin.setEmail(rs.getString("email"));
            return admin;
        }
        
    } 
}
