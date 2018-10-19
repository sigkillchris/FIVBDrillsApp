package com.cvg.capp.controller;

import com.cvg.capp.domain.Drill;
import com.cvg.capp.service.DrillService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

import java.util.List;

@RestController
@RequestMapping(value = "/api/drill")
@EnableWebMvc
public class DrillRestController {


    @Autowired
    private DrillService drillService;

    //single drill

    @RequestMapping(value = "/{drillId}", method = RequestMethod.GET)
    public Drill singleDrill(@PathVariable("drillId") int drillId) {
        System.out.println(drillService.findById(drillId));
    return drillService.findById(drillId);
    }

    //all drills
    @RequestMapping(value = "/drills", method = RequestMethod.GET)
    public List<Drill> getAllDrills() {
        System.out.println(drillService.findAllDrills());
        return drillService.findAllDrills();
    }



    @RequestMapping(value = "/drill", method = RequestMethod.GET)
    public Drill singleDrill1(@PathVariable("drillId") int drillId) {
        System.out.println(drillService.findById(drillId));
        return drillService.findById(drillId);
    }
}


