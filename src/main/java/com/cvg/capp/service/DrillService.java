/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cvg.capp.service;

import com.cvg.capp.domain.Drill;
import static java.util.Collections.list;
import java.util.List;

/**
 *
 * @author ccarr
 */
public interface DrillService {
    
    /**
     * 
     * @param 
     * @return a drill based on ID
     */
    public Drill findById(Integer drillId);
    
    /**
     * 
     * @param userId
     * @return all FIVB drills
     */
    public List<Drill> findAllDrills();
    
    
    /**
     * 
     * @param txt takes a search query
     * @return drills matching that query
     */
    public List<Drill> findAllDrills(String txt);
    
    
}
