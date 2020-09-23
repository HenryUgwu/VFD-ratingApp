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
public class DepartmentRatings {
    private String department;
    private double score;
    private double accessibility;
    private double qos;
    private double turn;

    public double getAccessibility() {
        return accessibility;
    }

    public void setAccessibility(double accessibility) {
        this.accessibility = accessibility;
    }

    public double getQos() {
        return qos;
    }

    public void setQos(double qos) {
        this.qos = qos;
    }

    public double getTurn() {
        return turn;
    }

    public void setTurn(double turn) {
        this.turn = turn;
    }

    public String getDepartment() {
        return department;
    }

    @Override
    public String toString() {
        return "DepartmentRatings{" + "department=" + department + ", score=" + score + ", accessibility=" + accessibility + ", qos=" + qos + ", turn=" + turn + '}';
    }

   

    public void setDepartment(String department) {
        this.department = department;
    }

    public double getScore() {
        return score;
    }

    public void setScore(double score) {
        this.score = score;
    }
}
