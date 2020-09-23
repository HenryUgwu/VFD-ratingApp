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
public class Reset {
    private int Id;
    private String email;
    private String token;
    private boolean status;

    @Override
    public String toString() {
        return "Reset{" + "Id=" + Id + ", email=" + email + ", token=" + token + ", status=" + status + '}';
    }

    public int getId() {
        return Id;
    }

    public void setId(int Id) {
        this.Id = Id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getToken() {
        return token;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }
}
