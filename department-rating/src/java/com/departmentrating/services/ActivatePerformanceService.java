/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.departmentrating.services;

import com.departmentrating.models.ActivatePerformance;
import com.departmentrating.repository.ActivatePerformanceRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Chibuike.Ugwu
 */
@Service
public class ActivatePerformanceService {
    @Autowired
    ActivatePerformanceRepository activateRepo;
    
    public List<ActivatePerformance> getActivatePerformance()
    {
        return activateRepo.getActivationData();
    }
    public void openActivationWindow(String month, int year)
    {
        activateRepo.activatePerformance(month, year);
    }
    public void closeActivationWindow()
    {
        activateRepo.closedPerformance();
    }
}
