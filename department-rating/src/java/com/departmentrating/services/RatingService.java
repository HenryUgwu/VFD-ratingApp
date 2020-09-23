/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.departmentrating.services;

import com.departmentrating.models.AggregatePerformance;
import com.departmentrating.models.MonthLists;
import com.departmentrating.models.Rating;
import com.departmentrating.repository.RatingRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Chibuike.Ugwu
 */
@Service
public class RatingService {
    @Autowired
    RatingRepository ratingRepo;
    
    public void storeRating(List<Rating> ratings)
    {
        ratings.forEach((r) -> {
            ratingRepo.storeRatingData(r);
        });
    }
    public List<Rating> getRatings(String email, String month, int year)
    {
       return ratingRepo.getRatingHistory(email, month, year);
    }
    
    public List<Rating> getRatings(String month, int year)
    {
       return ratingRepo.getRatingData(month, year);
    }
    
    public List<Rating> getCurrentMonthRating(String email)
    {
        return ratingRepo.getCurrentMonthRating(email);
        
    }
    public List<AggregatePerformance> get3MonthsRating(List<String> months)
    {
        return ratingRepo.getPast3MonthRating(months);
        
    }
    public List<Rating> getRatingHistory(String email)
    {
       return ratingRepo.getRatingHistory(email);
    }
    public List<MonthLists> getYears()
    {
       return ratingRepo.getYears();
    }
    public List<AggregatePerformance> getSpecificMonthYearRating(String month, int year)
    {
        return ratingRepo.getSpecificMonthYearRating(month, year);
}
  }
