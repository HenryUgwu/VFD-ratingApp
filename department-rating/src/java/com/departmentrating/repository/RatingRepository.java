/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.departmentrating.repository;

import com.departmentrating.interfaces.RatingInterface;
import com.departmentrating.models.AggregatePerformance;
import com.departmentrating.models.MonthLists;
import com.departmentrating.models.Rating;
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
public class RatingRepository implements RatingInterface {
    @Autowired
    private JdbcTemplate jdbcTemplate;

//    @Override
//    public List<Users> getUser(String email, String password) {
//        String sql = "SELECT * FROM user_table where email = ? and password = ?";
//        final PreparedStatementCreator psc = (final Connection conn) -> {
//            final PreparedStatement ps = conn.prepareStatement(sql);
//            ps.setString(1, email);
//            ps.setString(2, password);
//            return ps;
//        };
//        
//        return jdbcTemplate.query(psc, new UserMapper());
//    }

    @Override
    public List<Rating> getRatingHistory(String email) {
        String sql = "SELECT * FROM rating_table where email = ? ";
        final PreparedStatementCreator psc = (final Connection conn) -> {
            final PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, email);
            return ps;
        };
        
        return jdbcTemplate.query(psc, new RatingMapper());
    }

    @Override
    public List<Rating> getRatingData(String month, int year) {
        String sql = "SELECT * FROM rating_table where month = ? and year = ?";
        final PreparedStatementCreator psc = (final Connection conn) -> {
            final PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, month);
             ps.setInt(2, year);
            return ps;
        };
        return jdbcTemplate.query(psc, new RatingMapper());
    }

    @Override
    public List<Rating> getAllRating() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<AggregatePerformance> getPast3MonthRating(List<String> month) {
        String sql = "SELECT department, month, year, count(department) participantNo, sum(rate_number) totalRating, sum(accessibility) accessibility, sum(quality_of_service) qualityOfService, sum(turnaround_time) turnaroundTime FROM `rating_table`"
                + "WHERE CONCAT(month,year) IN (?, ?, ?) group by month, year, department";
        final PreparedStatementCreator psc = (final Connection conn) -> {
            final PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, month.get(0));
            ps.setString(2, month.get(1));
            ps.setString(3, month.get(2));
            return ps;
        };
        
        return jdbcTemplate.query(psc, new AggregateRatingMapper());
    }

    @Override
    public void storeRatingData(Rating rating) {
        String sql = "INSERT INTO rating_table (department, month, year, email, accessibility, quality_of_service, turnaround_time, rate_number, comment) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
        int status = jdbcTemplate.update(sql, rating.getDepartment(),rating.getMonth(),rating.getYear(),
        rating.getEmail(), rating.getAccessibility(), rating.getQualityOfService(), rating.getTurnaroundTime(), rating.getRateNumber(), rating.getComment()==null?"":rating.getComment());
    }

    @Override
    public List<Rating> getRatingHistory(String email, String month, int year) {
        String sql = "SELECT * FROM rating_table where email = ? and month = ? and year = ?";
        final PreparedStatementCreator psc = (final Connection conn) -> {
            final PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, email);
            ps.setString(2, month);
             ps.setInt(3, year);
            return ps;
        };
        
        return jdbcTemplate.query(psc, new RatingMapper());
    }

    @Override
    public List<Rating> getCurrentMonthRating(String email) {
        String sql = "SELECT * FROM rating_table where email = ? ORDER BY rate_id DESC LIMIT 7";
        final PreparedStatementCreator psc = (final Connection conn) -> {
            final PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, email);     
            
            return ps;
        };
        
        return jdbcTemplate.query(psc, new RatingMapper());
    }

    @Override
    public List<AggregatePerformance> getAllMonthRating(List<String> months) {
       String sql = "SELECT department, month, year, count(department) participantNo, accessibility, quality_of_service, turnaround_time, sum(rate_number) totalRating FROM `rating_table`"
                + "WHERE CONCAT(month,year) IN (?, ?, ?) group by month, year, department";
        final PreparedStatementCreator psc = (final Connection conn) -> {
            final PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, months.get(0));
            ps.setString(2, months.get(1));
            ps.setString(3, months.get(2));
            return ps;
        };
        
        return jdbcTemplate.query(psc, new AggregateRatingMapper());
    }

    @Override
    public List<MonthLists> getYears() {
        String sql = "SELECT distinct year, 'JANUARY' month FROM `rating_table`";
       return jdbcTemplate.query(sql, new MonthListsMapper());
    }

    @Override
    public List<AggregatePerformance> getSpecificMonthYearRating(String month, int year) {
         String sql = "SELECT department, month, year, count(department) participantNo, sum(accessibility) accessibility, sum(quality_of_service) qualityOfService, sum(turnaround_time) turnaroundTime, sum(rate_number) totalRating FROM `rating_table`"
                + "WHERE month = ? and year = ? group by month, year, department";
        final PreparedStatementCreator psc = (final Connection conn) -> {
            final PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, month);
            ps.setInt(2, year);
           
            return ps;
        };
        
        return jdbcTemplate.query(psc, new AggregateRatingMapper());
    }

    
    
    class RatingMapper implements RowMapper<Rating>{

        @Override
        public Rating mapRow(ResultSet rs, int i) throws SQLException {
            Rating rating = new Rating();
            rating.setComment(rs.getString("comment"));
            rating.setDepartment(rs.getString("department"));
            rating.setEmail(rs.getString("email"));
            rating.setMonth(rs.getString("month"));
            rating.setRateNumber(rs.getDouble("rate_number"));
            rating.setAccessibility(rs.getInt("accessibility"));
            rating.setQualityOfService(rs.getInt("quality_of_service"));
            rating.setTurnaroundTime(rs.getInt("turnaround_time"));
            rating.setYear(rs.getInt("year"));
            return rating;
        }
        
    }
    
    class AggregateRatingMapper implements RowMapper<AggregatePerformance>{

        @Override
        public AggregatePerformance mapRow(ResultSet rs, int i) throws SQLException {
            AggregatePerformance aggregatePerformance = new AggregatePerformance();
            aggregatePerformance.setDepartment(rs.getString("department"));
            aggregatePerformance.setMonth(rs.getString("month"));
            aggregatePerformance.setYear(rs.getInt("year"));
            aggregatePerformance.setParticipantNumber(rs.getInt("participantNo"));
            aggregatePerformance.setTotalRating(rs.getDouble("totalRating"));
            aggregatePerformance.setAccessibility(rs.getInt("accessibility"));
            aggregatePerformance.setQualityOfService(rs.getInt("qualityOfService"));
            aggregatePerformance.setTurnaroundTime(rs.getInt("turnaroundTime"));
            return aggregatePerformance;
        }
        
    } 
    
    class MonthListsMapper implements RowMapper<MonthLists>{

        @Override
        public MonthLists mapRow(ResultSet rs, int i) throws SQLException {
            MonthLists monthLists = new MonthLists();
            monthLists.setMonth(rs.getString("month"));
            monthLists.setYear(rs.getInt("year"));
            return monthLists;
        }
        
    } 
}
