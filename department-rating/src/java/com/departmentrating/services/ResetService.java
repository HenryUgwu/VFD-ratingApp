/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.departmentrating.services;

import com.departmentrating.models.Reset;
import com.departmentrating.repository.ResetRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Chibuike.Ugwu
 */
@Service
public class ResetService {
    @Autowired
    ResetRepository resetRepo;
    
    public List<Reset> getToken(String email, String token)
    {
        return resetRepo.getToken(email, token);
    }
    
    public void insertToken(String email, String token)
    {
        resetRepo.insertToken(email, token);
    }
    public void updateStatus(String email)
    {
        resetRepo.updateStatus(email);
    }
    
}
