// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.soja.web;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.soja.domain.BiometriaHematica;
import com.soja.domain.ExamenGeneralOrina;
import com.soja.domain.LecturaComposicionCorporal;
import com.soja.domain.QuimicaSanguinea;
import com.soja.web.PersonaJsonMixin;
import java.util.Set;

privileged aspect PersonaJsonMixin_Roo_JSONMixin {
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    @JsonIgnore
    private Set<BiometriaHematica> PersonaJsonMixin.biometriaHematica;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    @JsonIgnore
    private Set<ExamenGeneralOrina> PersonaJsonMixin.examenGeneralOrina;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    @JsonIgnore
    private Set<LecturaComposicionCorporal> PersonaJsonMixin.lecturaComposicionCorporal;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    @JsonIgnore
    private Set<QuimicaSanguinea> PersonaJsonMixin.quimicaSanguinea;
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Set
     */
    public Set<BiometriaHematica> PersonaJsonMixin.getBiometriaHematica() {
        return biometriaHematica;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param biometriaHematica
     */
    public void PersonaJsonMixin.setBiometriaHematica(Set<BiometriaHematica> biometriaHematica) {
        this.biometriaHematica = biometriaHematica;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Set
     */
    public Set<ExamenGeneralOrina> PersonaJsonMixin.getExamenGeneralOrina() {
        return examenGeneralOrina;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param examenGeneralOrina
     */
    public void PersonaJsonMixin.setExamenGeneralOrina(Set<ExamenGeneralOrina> examenGeneralOrina) {
        this.examenGeneralOrina = examenGeneralOrina;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Set
     */
    public Set<LecturaComposicionCorporal> PersonaJsonMixin.getLecturaComposicionCorporal() {
        return lecturaComposicionCorporal;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param lecturaComposicionCorporal
     */
    public void PersonaJsonMixin.setLecturaComposicionCorporal(Set<LecturaComposicionCorporal> lecturaComposicionCorporal) {
        this.lecturaComposicionCorporal = lecturaComposicionCorporal;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Set
     */
    public Set<QuimicaSanguinea> PersonaJsonMixin.getQuimicaSanguinea() {
        return quimicaSanguinea;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param quimicaSanguinea
     */
    public void PersonaJsonMixin.setQuimicaSanguinea(Set<QuimicaSanguinea> quimicaSanguinea) {
        this.quimicaSanguinea = quimicaSanguinea;
    }
    
}