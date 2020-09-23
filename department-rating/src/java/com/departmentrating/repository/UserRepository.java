/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.departmentrating.repository;

import com.departmentrating.interfaces.UserInterface;
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
public class UserRepository implements UserInterface {
    @Autowired
    private JdbcTemplate jdbcTemplate;

    @Override
    public List<Users> getUser(String email, String password) {
        String sql = "SELECT * FROM user_table where email = ? and password = ?";
        final PreparedStatementCreator psc = (final Connection conn) -> {
            final PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, email);
            ps.setString(2, password);
            return ps;
        };
        
        return jdbcTemplate.query(psc, new UserMapper());
    }

    @Override
    public List<Users> getUser(String email) {
        String sql = "SELECT u.user_email, u.userpassword, s.staff_name , s.staff_id FROM staff s, users u WHERE u.userID = s.staff_id "
                + "AND u.user_email = S.staff_email AND u.user_email = ?";
        final PreparedStatementCreator psc = (final Connection conn) -> {
            final PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, email);
            return ps;
        };
        
        return jdbcTemplate.query(psc, new UserMapper());
    }
    
    class UserMapper implements RowMapper<Users>{

        @Override
        public Users mapRow(ResultSet rs, int i) throws SQLException {
            Users user = new Users();
            
            user.setName(rs.getString("staff_name"));
            user.setEmail(rs.getString("user_email"));
            user.setUser_id(rs.getString("staff_id"));
            user.setPassword(rs.getString("userpassword"));
            return user;
        }
        
    } 
}
