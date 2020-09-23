/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.departmentrating.interfaces;

import com.departmentrating.models.Admin;
import java.util.List;

/**
 *
 * @author Chibuike.Ugwu
 */
public interface AdminInterface {
    List<Admin> getAdmin(String email);
}
