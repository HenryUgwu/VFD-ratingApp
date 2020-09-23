/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.departmentrating.interfaces;

import com.departmentrating.models.AggregatePerformance;
import com.departmentrating.models.MonthLists;
import com.departmentrating.models.Rating;
import java.util.List;

/**
 *
 * @author Chibuike.Ugwu
 */
public interface RatingInterface {
   List<Rating> getRatingHistory(String email); //use email to get rate history
   List<Rating> getRatingHistory(String email, String month, int year); //use email to get rate history
   List<Rating> getRatingData(String month, int year); //get rating data using month and year
   List<Rating> getAllRating(); //get all rating
   List<AggregatePerformance> getPast3MonthRating(List<String> months); //get previous 3month ratings
   void storeRatingData(Rating rating);
   List<Rating> getCurrentMonthRating(String email);//to get current month details
   List<AggregatePerformance> getAllMonthRating(List<String> months);
   List<MonthLists> getYears();
   List<AggregatePerformance> getSpecificMonthYearRating(String month, int year); //get previous 3month ratings
}
