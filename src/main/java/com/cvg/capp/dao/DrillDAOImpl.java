/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cvg.capp.dao;

import com.cvg.capp.domain.Drill;
import com.cvg.capp.rm.DrillRowMapper;
import java.util.List;
import org.springframework.stereotype.Repository;

/**
 *
 * @author ccarr
 */
@Repository
public class DrillDAOImpl extends BaseDAO implements DrillDAO {

    @Override
    public Drill findById(Integer drillId) {
        String sql = "SELECT drill_id, ref, name, objective, description, mods, pointers, level_id, skill_id FROM drills WHERE drill_id=?";
        
        return getJdbcTemplate().queryForObject(sql, new DrillRowMapper(), drillId);
    }

    @Override
    public List<Drill> findAll() {
        String sql = "SELECT drill_id, ref, name, objective, description, mods, pointers, level_id, FROM drills";
        return getJdbcTemplate().query(sql, new DrillRowMapper());
    }

    @Override
    public List<Drill> findByProperty(String propName, Object propValue) {
        String sql = "SELECT drill_id, ref, name, objective, description, mods, pointers, level_id, FROM drills WHERE "+propName+"=?";
        return getJdbcTemplate().query(sql, new DrillRowMapper(), propValue);
    }
    
}
