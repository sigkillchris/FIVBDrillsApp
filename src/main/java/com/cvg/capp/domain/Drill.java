/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cvg.capp.domain;

import com.fasterxml.jackson.annotation.JsonProperty;

/**
 *
 * @author ccarr
 */
public class Drill {
    
    private Integer drill_id;
    private String ref;
    private String name;
    private String objective;
    private String description;
    private String mods;
    private String pointers;
    private Integer level_id;
    private Integer page_id;
    private Integer skill_id;


    public Drill() {
    }

    public Drill(Integer drill_id) {
        this.drill_id = drill_id;
    }

    public Drill(@JsonProperty("drill_id") Integer drill_id,
                   @JsonProperty("ref") String ref,
                   @JsonProperty("name") String name,
                   @JsonProperty("objective") String objective,
                   @JsonProperty("description") String description,
                   @JsonProperty("level_id") Integer level_id,
                   @JsonProperty("skill_id") Integer skill_id) {
        super();
        this.drill_id = drill_id;
        this.ref = ref;
        this.name = name;
        this.objective = objective;
        this.description = description;
        this.level_id = level_id;
        this.skill_id = skill_id;

    }

    public Integer getDrill_id() {
        return drill_id;
    }

    public void setDrill_id(Integer drill_id) {
        this.drill_id = drill_id;
    }

    public String getRef() {
        return ref;
    }

    public void setRef(String ref) {
        this.ref = ref;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getObjective() {
        return objective;
    }

    public void setObjective(String objective) {
        this.objective = objective;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getMods() {
        return mods;
    }

    public void setMods(String mods) {
        this.mods = mods;
    }

    public String getPointers() {
        return pointers;
    }

    public void setPointers(String pointers) {
        this.pointers = pointers;
    }

    public Integer getLevel_id() {
        return level_id;
    }

    public void setLevel_id(Integer level_id) {
        this.level_id = level_id;
    }

    public Integer getPage_id() {
        return page_id;
    }

    public void setPage_id(Integer page_id) {
        this.page_id = page_id;
    }

    public Integer getSkill_id() {
        return skill_id;
    }

    public void setSkill_id(Integer skill_id) {
        this.skill_id = skill_id;
    }
    
    
}
