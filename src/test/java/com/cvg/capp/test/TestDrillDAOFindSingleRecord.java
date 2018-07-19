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

/**
 *
 * @author ccarr
 */
public class TestDrillDAOFindSingleRecord {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        ApplicationContext ctx = new AnnotationConfigApplicationContext(SpringRootConfig.class);
        DrillDAO drillDAO = ctx.getBean(DrillDAO.class);
        
        //TO Do: the Drill details will be found
        Drill d = drillDAO.findById(16);
        
        System.out.println("!!---Drill Detail---!!");
        System.out.println(d.getDrill_id());
        System.out.println(d.getName());
        System.out.println(d.getObjective());
        System.out.println(d.getDescription());
        System.out.println(d.getLevel_id());
        System.out.println(d.getSkill_id());
    }
    
}
