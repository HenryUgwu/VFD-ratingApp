/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.departmentrating.models;

import java.util.List;

/**
 *
 * @author Chibuike.Ugwu
 */
public class AggregateViewStructure {
    private String month;
    private int year;
    private List<DepartmentRatings> departmentRatings;

    public String getMonth() {
        return month;
    }

    @Override
    public String toString() {
        return "AggregateViewStructure{" + "month=" + month + ", year=" + year + ", departmentRatings=" + departmentRatings + '}';
    }

    public void setMonth(String month) {
        this.month = month;
    }

    public int getYear() {
        return year;
    }

    public void setYear(int year) {
        this.year = year;
    }

    public List<DepartmentRatings> getDepartmentRatings() {
        return departmentRatings;
    }

    public void setDepartmentRatings(List<DepartmentRatings> departmentRatings) {
        this.departmentRatings = departmentRatings;
    }
    
}


