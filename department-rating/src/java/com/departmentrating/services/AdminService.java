/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.departmentrating.services;

import com.departmentrating.models.Admin;
import com.departmentrating.models.Users;
import com.departmentrating.repository.AdminRepository;
import com.departmentrating.repository.UserRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Chibuike.Ugwu
 */
@Service
public class AdminService {
    @Autowired
    AdminRepository adminRepo;
    
    public List<Admin> getAdmin(String email)
    {
        return adminRepo.getAdmin(email);
    }
}
