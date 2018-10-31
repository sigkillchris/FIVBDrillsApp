/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cvg.capp.controller;

import com.cvg.capp.dao.DrillDAO;
import com.cvg.capp.domain.Drill;
import com.cvg.capp.service.DrillService;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 *
 * @author ccarr
 */

@Controller
public class TestController {

    private DrillService drillService;


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
