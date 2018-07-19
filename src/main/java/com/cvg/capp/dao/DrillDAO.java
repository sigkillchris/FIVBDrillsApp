/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cvg.capp.dao;

import com.cvg.capp.domain.Drill;
import java.util.List;

/**
 *
 * @author ccarr
 */
public interface DrillDAO {
    
    public Drill findById(Integer drillId);
    public List<Drill> findAll();
    public List<Drill> findByProperty(String propName, Object propValue);
    
}
