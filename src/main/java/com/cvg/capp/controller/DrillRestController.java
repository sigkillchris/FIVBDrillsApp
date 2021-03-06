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
        return drillService.findById(drillId);
    }

    //all drills
    @RequestMapping(value = "/drills", method = RequestMethod.GET)
    public List<Drill> getAllDrills() {
        return drillService.findAllDrills();
    }

}


