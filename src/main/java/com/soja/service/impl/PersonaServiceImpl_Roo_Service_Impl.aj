// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.soja.service.impl;

import com.soja.domain.Persona;
import com.soja.repository.PersonaRepository;
import com.soja.service.impl.PersonaServiceImpl;
import io.springlets.data.domain.GlobalSearch;
import io.springlets.data.web.validation.MessageI18n;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

privileged aspect PersonaServiceImpl_Roo_Service_Impl {
    
    declare @type: PersonaServiceImpl: @Service;
    
    declare @type: PersonaServiceImpl: @Transactional(readOnly = true);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private PersonaRepository PersonaServiceImpl.personaRepository;
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param personaRepository
     */
    @Autowired
    public PersonaServiceImpl.new(PersonaRepository personaRepository) {
        setPersonaRepository(personaRepository);
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @return PersonaRepository
     */
    public PersonaRepository PersonaServiceImpl.getPersonaRepository() {
        return personaRepository;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param personaRepository
     */
    public void PersonaServiceImpl.setPersonaRepository(PersonaRepository personaRepository) {
        this.personaRepository = personaRepository;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param persona
     * @return Map
     */
    public Map<String, List<MessageI18n>> PersonaServiceImpl.validate(Persona persona) {
        Map<String, List<MessageI18n>> messages = new java.util.HashMap<String, List<MessageI18n>>();
        
        // TODO: IMPLEMENT HERE THE VALIDATION OF YOUR ENTITY
        
        return messages;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param persona
     */
    @Transactional
    public void PersonaServiceImpl.delete(Persona persona) {
        getPersonaRepository().delete(persona);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entities
     * @return List
     */
    @Transactional
    public List<Persona> PersonaServiceImpl.save(Iterable<Persona> entities) {
        return getPersonaRepository().save(entities);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     */
    @Transactional
    public void PersonaServiceImpl.delete(Iterable<Long> ids) {
        List<Persona> toDelete = getPersonaRepository().findAll(ids);
        getPersonaRepository().deleteInBatch(toDelete);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entity
     * @return Persona
     */
    @Transactional
    public Persona PersonaServiceImpl.save(Persona entity) {
        return getPersonaRepository().save(entity);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return Persona
     */
    public Persona PersonaServiceImpl.findOne(Long id) {
        return getPersonaRepository().findOne(id);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return Persona
     */
    public Persona PersonaServiceImpl.findOneForUpdate(Long id) {
        return getPersonaRepository().findOneDetached(id);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @return List
     */
    public List<Persona> PersonaServiceImpl.findAll(Iterable<Long> ids) {
        return getPersonaRepository().findAll(ids);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return List
     */
    public List<Persona> PersonaServiceImpl.findAll() {
        return getPersonaRepository().findAll();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Long
     */
    public long PersonaServiceImpl.count() {
        return getPersonaRepository().count();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<Persona> PersonaServiceImpl.findAll(GlobalSearch globalSearch, Pageable pageable) {
        return getPersonaRepository().findAll(globalSearch, pageable);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<Persona> PersonaServiceImpl.findAllByIdsIn(List<Long> ids, GlobalSearch globalSearch, Pageable pageable) {
        return getPersonaRepository().findAllByIdsIn(ids, globalSearch, pageable);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Class
     */
    public Class<Persona> PersonaServiceImpl.getEntityType() {
        return Persona.class;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Class
     */
    public Class<Long> PersonaServiceImpl.getIdType() {
        return Long.class;
    }
    
}