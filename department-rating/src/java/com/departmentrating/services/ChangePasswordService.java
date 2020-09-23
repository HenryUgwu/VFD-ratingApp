/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.departmentrating.services;

import com.departmentrating.models.Reset;
import com.departmentrating.repository.ChangePasswordRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Chibuike.Ugwu
 */
@Service
public class ChangePasswordService {
    @Autowired
    ChangePasswordRepository changePwordRepo;
    
   
    public void changePassword(String email, String password)
    {
        changePwordRepo.changePassword(email, password);
    }
}
