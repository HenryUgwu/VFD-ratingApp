/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.departmentrating.models;

/**
 *
 * @author Chibuike.Ugwu
 */
public class AggregatePerformance {
    private String department;
    private String month;
    private int year;
    private int participantNumber;
    private double totalRating;
    private int accessibility;
    private int qualityOfService;
    private int turnaroundTime;

    @Override
    public String toString() {
        return "AggregatePerformance{" + "department=" + department + ", month=" + month + ", year=" + year + ", participantNumber=" + participantNumber + ", totalRating=" + totalRating + ", accessibility=" + accessibility + ", qualityOfService=" + qualityOfService + ", turnaroundTime=" + turnaroundTime + '}';
    }
    
    

    
    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    public String getMonth() {
        return month;
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

    public int getParticipantNumber() {
        return participantNumber;
    }

    public void setParticipantNumber(int participantNumber) {
        this.participantNumber = participantNumber;
    }

    public double getTotalRating() {
        return totalRating;
    }

    public void setTotalRating(double totalRating) {
        this.totalRating = totalRating;
    }

    public double getAccessibility() {
        return accessibility;
    }

    public void setAccessibility(int accessibility) {
        this.accessibility = accessibility;
    }

    public double getQualityOfService() {
        return qualityOfService;
    }

    public void setQualityOfService(int qualityOfService) {
        this.qualityOfService = qualityOfService;
    }

    public double getTurnaroundTime() {
        return turnaroundTime;
    }

    public void setTurnaroundTime(int turnaroundTime) {
        this.turnaroundTime = turnaroundTime;
    }

    
}
