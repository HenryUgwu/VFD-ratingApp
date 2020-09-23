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
public class ChangePassword {
    private String email;
    private String password;
    private String confirmPassword;

    @Override
    public String toString() {
        return "ChangePassword{" + "email=" + email + ", password=" + password + ", confirmPassword=" + confirmPassword + '}';
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getConfirmPassword() {
        return confirmPassword;
    }

    public void setConfirmPassword(String confirmPassword) {
        this.confirmPassword = confirmPassword;
    }
}
