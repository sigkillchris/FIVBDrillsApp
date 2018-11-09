package com.cvg.capp.controller;

import com.cvg.capp.domain.Drill;
import com.cvg.capp.service.DrillService;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping(value = "/api/drill")
public class DrillRestController {
    private final DrillService drillService;

    public DrillRestController(DrillService drillService) {
        this.drillService = drillService;
    }

    //single drill
    @GetMapping(value = "/{drillId}")
    public Drill singleDrill(@PathVariable("drillId") int drillId) {
        return drillService.findById(drillId);
    }

    //all drills
    @RequestMapping(value = "/drills", method = RequestMethod.GET)
    public List<Drill> getAllDrills() {
        return drillService.findAllDrills();
    }

}


