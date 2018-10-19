/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cvg.capp.test;

import com.cvg.capp.config.SpringRootConfig;
import com.cvg.capp.dao.DrillDAO;
import com.cvg.capp.domain.Drill;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import java.util.List;

/**
 *
 * @author ccarr
 */
public class TestDrillDAOFindAllRecords {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        ApplicationContext ctx = new AnnotationConfigApplicationContext(SpringRootConfig.class);
        DrillDAO drillDAO = ctx.getBean(DrillDAO.class);
        
        //TO Do: the Drill details will be found
        List<Drill> ds = drillDAO.findAll();

        for (Drill d : ds) {
            System.out.println(d.getDrill_id() +  " " + d.getName());
        }
    }
    
}
