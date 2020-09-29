// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.soja.domain;

import com.soja.domain.ExamenGeneralOrina;
import com.soja.domain.Persona;
import java.util.Objects;

privileged aspect ExamenGeneralOrina_Roo_JavaBean {
    
    /**
     * Gets id value
     * 
     * @return Long
     */
    public Long ExamenGeneralOrina.getId() {
        return this.id;
    }
    
    /**
     * Sets id value
     * 
     * @param id
     * @return ExamenGeneralOrina
     */
    public ExamenGeneralOrina ExamenGeneralOrina.setId(Long id) {
        this.id = id;
        return this;
    }
    
    /**
     * Gets version value
     * 
     * @return Long
     */
    public Long ExamenGeneralOrina.getVersion() {
        return this.version;
    }
    
    /**
     * Sets version value
     * 
     * @param version
     * @return ExamenGeneralOrina
     */
    public ExamenGeneralOrina ExamenGeneralOrina.setVersion(Long version) {
        this.version = version;
        return this;
    }
    
    /**
     * Gets persona value
     * 
     * @return Persona
     */
    public Persona ExamenGeneralOrina.getPersona() {
        return this.persona;
    }
    
    /**
     * Sets persona value
     * 
     * @param persona
     * @return ExamenGeneralOrina
     */
    public ExamenGeneralOrina ExamenGeneralOrina.setPersona(Persona persona) {
        this.persona = persona;
        return this;
    }
    
    /**
     * This `equals` implementation is specific for JPA entities and uses 
     * the entity identifier for it, following the article in 
     * https://vladmihalcea.com/2016/06/06/how-to-implement-equals-and-hashcode-using-the-jpa-entity-identifier/
     * 
     * @param obj
     * @return Boolean
     */
    public boolean ExamenGeneralOrina.equals(Object obj) {
        if (this == obj) {
            return true;
        }
        // instanceof is false if the instance is null
        if (!(obj instanceof ExamenGeneralOrina)) {
            return false;
        }
        return getId() != null && Objects.equals(getId(), ((ExamenGeneralOrina) obj).getId());
    }
    
    /**
     * This `hashCode` implementation is specific for JPA entities and uses a fixed `int` value to be able 
     * to identify the entity in collections after a new id is assigned to the entity, following the article in 
     * https://vladmihalcea.com/2016/06/06/how-to-implement-equals-and-hashcode-using-the-jpa-entity-identifier/
     * 
     * @return Integer
     */
    public int ExamenGeneralOrina.hashCode() {
        return 31;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return String
     */
    public String ExamenGeneralOrina.toString() {
        return "ExamenGeneralOrina {" + 
                "id='" + id + '\'' + 
                ", version='" + version + '\'' + "}" + super.toString();
    }
    
}