// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.soja.domain;

import com.soja.domain.BiometriaHematica;
import com.soja.domain.ExamenGeneralOrina;
import com.soja.domain.LecturaComposicionCorporal;
import com.soja.domain.Persona;
import com.soja.domain.QuimicaSanguinea;
import io.springlets.format.EntityFormat;
import javax.persistence.Entity;
import javax.persistence.Table;
import org.springframework.util.Assert;

privileged aspect Persona_Roo_Jpa_Entity {
    
    declare @type: Persona: @Entity;
    
    declare @type: Persona: @Table(name = "persona");
    
    declare @type: Persona: @EntityFormat("#{alias}");
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String Persona.ITERABLE_TO_ADD_CANT_BE_NULL_MESSAGE = "The given Iterable of items to add can't be null!";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String Persona.ITERABLE_TO_REMOVE_CANT_BE_NULL_MESSAGE = "The given Iterable of items to add can't be null!";
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param lecturaComposicionCorporalToAdd
     */
    public void Persona.addToLecturaComposicionCorporal(Iterable<LecturaComposicionCorporal> lecturaComposicionCorporalToAdd) {
        Assert.notNull(lecturaComposicionCorporalToAdd, ITERABLE_TO_ADD_CANT_BE_NULL_MESSAGE);
        for (LecturaComposicionCorporal item : lecturaComposicionCorporalToAdd) {
            this.lecturaComposicionCorporal.add(item);
            item.setPersona(this);
        }
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param lecturaComposicionCorporalToRemove
     */
    public void Persona.removeFromLecturaComposicionCorporal(Iterable<LecturaComposicionCorporal> lecturaComposicionCorporalToRemove) {
        Assert.notNull(lecturaComposicionCorporalToRemove, ITERABLE_TO_REMOVE_CANT_BE_NULL_MESSAGE);
        for (LecturaComposicionCorporal item : lecturaComposicionCorporalToRemove) {
            this.lecturaComposicionCorporal.remove(item);
            item.setPersona(null);
        }
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param quimicaSanguineaToAdd
     */
    public void Persona.addToQuimicaSanguinea(Iterable<QuimicaSanguinea> quimicaSanguineaToAdd) {
        Assert.notNull(quimicaSanguineaToAdd, ITERABLE_TO_ADD_CANT_BE_NULL_MESSAGE);
        for (QuimicaSanguinea item : quimicaSanguineaToAdd) {
            this.quimicaSanguinea.add(item);
            item.setPersona(this);
        }
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param quimicaSanguineaToRemove
     */
    public void Persona.removeFromQuimicaSanguinea(Iterable<QuimicaSanguinea> quimicaSanguineaToRemove) {
        Assert.notNull(quimicaSanguineaToRemove, ITERABLE_TO_REMOVE_CANT_BE_NULL_MESSAGE);
        for (QuimicaSanguinea item : quimicaSanguineaToRemove) {
            this.quimicaSanguinea.remove(item);
            item.setPersona(null);
        }
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param examenGeneralOrinaToAdd
     */
    public void Persona.addToExamenGeneralOrina(Iterable<ExamenGeneralOrina> examenGeneralOrinaToAdd) {
        Assert.notNull(examenGeneralOrinaToAdd, ITERABLE_TO_ADD_CANT_BE_NULL_MESSAGE);
        for (ExamenGeneralOrina item : examenGeneralOrinaToAdd) {
            this.examenGeneralOrina.add(item);
            item.setPersona(this);
        }
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param examenGeneralOrinaToRemove
     */
    public void Persona.removeFromExamenGeneralOrina(Iterable<ExamenGeneralOrina> examenGeneralOrinaToRemove) {
        Assert.notNull(examenGeneralOrinaToRemove, ITERABLE_TO_REMOVE_CANT_BE_NULL_MESSAGE);
        for (ExamenGeneralOrina item : examenGeneralOrinaToRemove) {
            this.examenGeneralOrina.remove(item);
            item.setPersona(null);
        }
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param biometriaHematicaToAdd
     */
    public void Persona.addToBiometriaHematica(Iterable<BiometriaHematica> biometriaHematicaToAdd) {
        Assert.notNull(biometriaHematicaToAdd, ITERABLE_TO_ADD_CANT_BE_NULL_MESSAGE);
        for (BiometriaHematica item : biometriaHematicaToAdd) {
            this.biometriaHematica.add(item);
            item.setPersona(this);
        }
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param biometriaHematicaToRemove
     */
    public void Persona.removeFromBiometriaHematica(Iterable<BiometriaHematica> biometriaHematicaToRemove) {
        Assert.notNull(biometriaHematicaToRemove, ITERABLE_TO_REMOVE_CANT_BE_NULL_MESSAGE);
        for (BiometriaHematica item : biometriaHematicaToRemove) {
            this.biometriaHematica.remove(item);
            item.setPersona(null);
        }
    }
    
}