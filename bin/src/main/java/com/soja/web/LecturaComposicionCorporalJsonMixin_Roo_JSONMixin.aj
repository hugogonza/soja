// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.soja.web;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.soja.domain.Persona;
import com.soja.web.LecturaComposicionCorporalJsonMixin;
import com.soja.web.PersonaDeserializer;

privileged aspect LecturaComposicionCorporalJsonMixin_Roo_JSONMixin {
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    @JsonDeserialize(using = PersonaDeserializer.class)
    private Persona LecturaComposicionCorporalJsonMixin.persona;
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Persona
     */
    public Persona LecturaComposicionCorporalJsonMixin.getPersona() {
        return persona;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param persona
     */
    public void LecturaComposicionCorporalJsonMixin.setPersona(Persona persona) {
        this.persona = persona;
    }
    
}