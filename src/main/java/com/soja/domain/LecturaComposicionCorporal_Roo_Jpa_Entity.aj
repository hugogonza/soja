// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.soja.domain;

import com.soja.domain.LecturaComposicionCorporal;
import io.springlets.format.EntityFormat;
import javax.persistence.Entity;
import javax.persistence.Table;

privileged aspect LecturaComposicionCorporal_Roo_Jpa_Entity {
    
    declare @type: LecturaComposicionCorporal: @Entity;
    
    declare @type: LecturaComposicionCorporal: @Table(name = "lectura_composicion_corporal");
    
    declare @type: LecturaComposicionCorporal: @EntityFormat;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String LecturaComposicionCorporal.ITERABLE_TO_ADD_CANT_BE_NULL_MESSAGE = "The given Iterable of items to add can't be null!";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String LecturaComposicionCorporal.ITERABLE_TO_REMOVE_CANT_BE_NULL_MESSAGE = "The given Iterable of items to add can't be null!";
    
}
