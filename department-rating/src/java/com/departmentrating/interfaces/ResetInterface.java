/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.departmentrating.interfaces;

import com.departmentrating.models.Reset;
import java.util.List;

/**
 *
 * @author Chibuike.Ugwu
 */
public interface ResetInterface {
    List<Reset> getToken(String email, String token);
    void insertToken(String email, String token);
    void updateStatus (String email);
}
