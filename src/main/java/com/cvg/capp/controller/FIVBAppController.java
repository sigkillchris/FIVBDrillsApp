/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cvg.capp.controller;

import com.cvg.capp.domain.Drill;
import com.cvg.capp.service.DrillService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author ccarr
 */

@Controller
public class FIVBAppController {

    private DrillService drillService;

    @RequestMapping("/viewalldrills")
    public String index() {
        return "viewalldrills";
    }

    @RequestMapping("/")
    public String home() { return "home"; }

    @RequestMapping("/practice")
    public String practice() { return "practice"; }

    @RequestMapping("/drill")
    public String drill() { return "drill"; }

}
