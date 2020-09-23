/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.departmentrating.services;

import com.departmentrating.models.Users;
import com.departmentrating.repository.UserRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Chibuike.Ugwu
 */
@Service
public class UserService {
    @Autowired
    UserRepository userRepo;
    
    public List<Users> getUser(String email, String password)
    {
        return userRepo.getUser(email, password);
    }
    
    public List<Users> getUser(String email)
    {
        return userRepo.getUser(email);
    }
}
