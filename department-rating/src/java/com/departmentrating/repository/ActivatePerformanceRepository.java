/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.departmentrating.repository;

import com.departmentrating.interfaces.ActivatePerformanceInterface;
import com.departmentrating.models.ActivatePerformance;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.time.LocalDateTime;
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
public class ActivatePerformanceRepository implements ActivatePerformanceInterface {
    @Autowired
    private JdbcTemplate jdbcTemplate;

    
    @Override
    public List<ActivatePerformance> getActivationData() {
        String sql = "SELECT * FROM tbl_activate_performance where active = ?";
        final PreparedStatementCreator psc = (final Connection conn) -> {
            final PreparedStatement ps = conn.prepareStatement(sql);
            ps.setBoolean(1, true);
            return ps;
        };
        
        return jdbcTemplate.query(psc, new ActivateMapper());
    }

     @Override
    public void activatePerformance(String month, int year) {
        String sql = "REPLACE INTO tbl_activate_performance (active, month, year) VALUES (?, ?, ?)";
        final PreparedStatementCreator psc = (final Connection conn) -> {
            final PreparedStatement ps = conn.prepareStatement(sql);
            ps.setBoolean(1, true);
            ps.setString(2, month);
            ps.setInt(3, year);
            return ps;
        };
        jdbcTemplate.update(psc);

    }

    @Override
    public void closedPerformance() {
        String sql = "UPDATE tbl_activate_performance SET active = ?, dateClosed = ? where active = ?";
        final PreparedStatementCreator psc = (final Connection conn) -> {
            final PreparedStatement ps = conn.prepareStatement(sql);
            ps.setBoolean(1, false);
            ps.setString(2, LocalDateTime.now().toString());
            ps.setBoolean(3, true);
            return ps;
        };
        jdbcTemplate.update(psc);
    }
    
    class ActivateMapper implements RowMapper<ActivatePerformance>{

        @Override
        public ActivatePerformance mapRow(ResultSet rs, int i) throws SQLException {
            ActivatePerformance activatePerformance = new ActivatePerformance();
            activatePerformance.setId(rs.getInt("id"));
            //activatePerformance.setDateClosed(rs.getDate("dateClosed").toString());
            activatePerformance.setDateOpened(rs.getDate("dateOpened").toString());
            activatePerformance.setActive(rs.getBoolean("active"));
            activatePerformance.setMonth(rs.getString("month"));
            activatePerformance.setYear(rs.getInt("year"));
            
            return activatePerformance;
        }
        
    } 
}
