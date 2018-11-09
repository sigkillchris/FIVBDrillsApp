/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cvg.capp.controller;

import com.cvg.capp.domain.Drill;
import com.cvg.capp.service.DrillService;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @author ccarr
 */

@RestController
public class TestController {

    private final DrillService drillService;

    public TestController(DrillService drillService) {
        this.drillService = drillService;
    }


    @RequestMapping("/test/jq")
    public String jq() {
        return "jq";
    }

    @RequestMapping("/test/{drillId}")
    public Drill testDrill(@PathVariable("drillId") int drillId) {
        System.out.println(drillService.findById(drillId));
        return drillService.findById(drillId);
    }
}
