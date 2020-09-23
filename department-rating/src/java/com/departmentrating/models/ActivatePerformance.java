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
public class ActivatePerformance {
  private int Id;
  private boolean active;
  private String dateOpened;
  private String dateClosed;
  private String month;
  private int year;

    public int getId() {
        return Id;
    }

    public void setId(int Id) {
        this.Id = Id;
    }

    public boolean isActive() {
        return active;
    }

    @Override
    public String toString() {
        return "ActivatePerformance{" + "Id=" + Id + ", active=" + active + ", dateOpened=" + dateOpened + ", dateClosed=" + dateClosed + ", month=" + month + ", year=" + year + '}';
    }

    public void setActive(boolean active) {
        this.active = active;
    }

    public String getDateOpened() {
        return dateOpened;
    }

    public void setDateOpened(String dateOpened) {
        this.dateOpened = dateOpened;
    }

    public String getDateClosed() {
        return dateClosed;
    }

    public void setDateClosed(String dateClosed) {
        this.dateClosed = dateClosed;
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
          
}
