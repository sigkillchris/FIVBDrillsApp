/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cvg.capp.service;

import com.cvg.capp.dao.BaseDAO;
import com.cvg.capp.dao.DrillDAO;
import com.cvg.capp.domain.Drill;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author ccarr
 */

@Service
public class DrillServiceImpl extends BaseDAO implements DrillService {
    
    @Autowired
    private DrillDAO drilldao;

    @Override
    public Drill findById(Integer drillId) {
        return drilldao.findById(drillId);
    }

    @Override
    public List<Drill> findAllDrills() {
        return drilldao.findAll();
    }

    @Override
    public List<Drill> findAllDrills(String txt) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
