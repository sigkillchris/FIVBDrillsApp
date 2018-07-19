/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cvg.capp.rm;

import com.cvg.capp.domain.Drill;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;

/**
 *
 * @author ccarr
 */
public class DrillRowMapper implements RowMapper<Drill> {

    @Override
    public Drill mapRow(ResultSet rs, int i) throws SQLException {
        
        Drill d = new Drill();
        d.setDrill_id(rs.getInt("drill_id"));
        d.setRef(rs.getString("ref"));
        d.setName(rs.getString("name"));
        d.setObjective(rs.getString("objective"));
        d.setDescription(rs.getString("description"));
        d.setMods(rs.getString("mods")); 
        d.setPointers(rs.getString("pointers")); 
        d.setLevel_id(rs.getInt("level_id"));
        d.setSkill_id(rs.getInt("skill_id"));
        
        return d;        
    }
    
    
    
}
