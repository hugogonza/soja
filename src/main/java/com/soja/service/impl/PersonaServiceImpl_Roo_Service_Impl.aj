// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.soja.service.impl;

import com.soja.domain.BiometriaHematica;
import com.soja.domain.ExamenGeneralOrina;
import com.soja.domain.LecturaComposicionCorporal;
import com.soja.domain.Persona;
import com.soja.domain.QuimicaSanguinea;
import com.soja.repository.PersonaRepository;
import com.soja.service.api.BiometriaHematicaService;
import com.soja.service.api.ExamenGeneralOrinaService;
import com.soja.service.api.LecturaComposicionCorporalService;
import com.soja.service.api.QuimicaSanguineaService;
import com.soja.service.impl.PersonaServiceImpl;
import io.springlets.data.domain.GlobalSearch;
import io.springlets.data.web.validation.MessageI18n;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
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
     * TODO Auto-generated attribute documentation
     * 
     */
    private BiometriaHematicaService PersonaServiceImpl.biometriaHematicaService;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private ExamenGeneralOrinaService PersonaServiceImpl.examenGeneralOrinaService;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private LecturaComposicionCorporalService PersonaServiceImpl.lecturaComposicionCorporalService;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private QuimicaSanguineaService PersonaServiceImpl.quimicaSanguineaService;
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param personaRepository
     * @param biometriaHematicaService
     * @param examenGeneralOrinaService
     * @param lecturaComposicionCorporalService
     * @param quimicaSanguineaService
     */
    @Autowired
    public PersonaServiceImpl.new(PersonaRepository personaRepository, @Lazy BiometriaHematicaService biometriaHematicaService, @Lazy ExamenGeneralOrinaService examenGeneralOrinaService, @Lazy LecturaComposicionCorporalService lecturaComposicionCorporalService, @Lazy QuimicaSanguineaService quimicaSanguineaService) {
        setPersonaRepository(personaRepository);
        setBiometriaHematicaService(biometriaHematicaService);
        setExamenGeneralOrinaService(examenGeneralOrinaService);
        setLecturaComposicionCorporalService(lecturaComposicionCorporalService);
        setQuimicaSanguineaService(quimicaSanguineaService);
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
     * @return BiometriaHematicaService
     */
    public BiometriaHematicaService PersonaServiceImpl.getBiometriaHematicaService() {
        return biometriaHematicaService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param biometriaHematicaService
     */
    public void PersonaServiceImpl.setBiometriaHematicaService(BiometriaHematicaService biometriaHematicaService) {
        this.biometriaHematicaService = biometriaHematicaService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return ExamenGeneralOrinaService
     */
    public ExamenGeneralOrinaService PersonaServiceImpl.getExamenGeneralOrinaService() {
        return examenGeneralOrinaService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param examenGeneralOrinaService
     */
    public void PersonaServiceImpl.setExamenGeneralOrinaService(ExamenGeneralOrinaService examenGeneralOrinaService) {
        this.examenGeneralOrinaService = examenGeneralOrinaService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return LecturaComposicionCorporalService
     */
    public LecturaComposicionCorporalService PersonaServiceImpl.getLecturaComposicionCorporalService() {
        return lecturaComposicionCorporalService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param lecturaComposicionCorporalService
     */
    public void PersonaServiceImpl.setLecturaComposicionCorporalService(LecturaComposicionCorporalService lecturaComposicionCorporalService) {
        this.lecturaComposicionCorporalService = lecturaComposicionCorporalService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return QuimicaSanguineaService
     */
    public QuimicaSanguineaService PersonaServiceImpl.getQuimicaSanguineaService() {
        return quimicaSanguineaService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param quimicaSanguineaService
     */
    public void PersonaServiceImpl.setQuimicaSanguineaService(QuimicaSanguineaService quimicaSanguineaService) {
        this.quimicaSanguineaService = quimicaSanguineaService;
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
     * @param biometriaHematicaToAdd
     * @return Persona
     */
    @Transactional
    public Persona PersonaServiceImpl.addToBiometriaHematica(Persona persona, Iterable<Long> biometriaHematicaToAdd) {
        List<BiometriaHematica> biometriaHematica = getBiometriaHematicaService().findAll(biometriaHematicaToAdd);
        persona.addToBiometriaHematica(biometriaHematica);
        return getPersonaRepository().save(persona);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param persona
     * @param examenGeneralOrinaToAdd
     * @return Persona
     */
    @Transactional
    public Persona PersonaServiceImpl.addToExamenGeneralOrina(Persona persona, Iterable<Long> examenGeneralOrinaToAdd) {
        List<ExamenGeneralOrina> examenGeneralOrina = getExamenGeneralOrinaService().findAll(examenGeneralOrinaToAdd);
        persona.addToExamenGeneralOrina(examenGeneralOrina);
        return getPersonaRepository().save(persona);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param persona
     * @param lecturaComposicionCorporalToAdd
     * @return Persona
     */
    @Transactional
    public Persona PersonaServiceImpl.addToLecturaComposicionCorporal(Persona persona, Iterable<Long> lecturaComposicionCorporalToAdd) {
        List<LecturaComposicionCorporal> lecturaComposicionCorporal = getLecturaComposicionCorporalService().findAll(lecturaComposicionCorporalToAdd);
        persona.addToLecturaComposicionCorporal(lecturaComposicionCorporal);
        return getPersonaRepository().save(persona);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param persona
     * @param quimicaSanguineaToAdd
     * @return Persona
     */
    @Transactional
    public Persona PersonaServiceImpl.addToQuimicaSanguinea(Persona persona, Iterable<Long> quimicaSanguineaToAdd) {
        List<QuimicaSanguinea> quimicaSanguinea = getQuimicaSanguineaService().findAll(quimicaSanguineaToAdd);
        persona.addToQuimicaSanguinea(quimicaSanguinea);
        return getPersonaRepository().save(persona);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param persona
     * @param biometriaHematicaToRemove
     * @return Persona
     */
    @Transactional
    public Persona PersonaServiceImpl.removeFromBiometriaHematica(Persona persona, Iterable<Long> biometriaHematicaToRemove) {
        List<BiometriaHematica> biometriaHematica = getBiometriaHematicaService().findAll(biometriaHematicaToRemove);
        persona.removeFromBiometriaHematica(biometriaHematica);
        return getPersonaRepository().save(persona);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param persona
     * @param examenGeneralOrinaToRemove
     * @return Persona
     */
    @Transactional
    public Persona PersonaServiceImpl.removeFromExamenGeneralOrina(Persona persona, Iterable<Long> examenGeneralOrinaToRemove) {
        List<ExamenGeneralOrina> examenGeneralOrina = getExamenGeneralOrinaService().findAll(examenGeneralOrinaToRemove);
        persona.removeFromExamenGeneralOrina(examenGeneralOrina);
        return getPersonaRepository().save(persona);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param persona
     * @param lecturaComposicionCorporalToRemove
     * @return Persona
     */
    @Transactional
    public Persona PersonaServiceImpl.removeFromLecturaComposicionCorporal(Persona persona, Iterable<Long> lecturaComposicionCorporalToRemove) {
        List<LecturaComposicionCorporal> lecturaComposicionCorporal = getLecturaComposicionCorporalService().findAll(lecturaComposicionCorporalToRemove);
        persona.removeFromLecturaComposicionCorporal(lecturaComposicionCorporal);
        return getPersonaRepository().save(persona);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param persona
     * @param quimicaSanguineaToRemove
     * @return Persona
     */
    @Transactional
    public Persona PersonaServiceImpl.removeFromQuimicaSanguinea(Persona persona, Iterable<Long> quimicaSanguineaToRemove) {
        List<QuimicaSanguinea> quimicaSanguinea = getQuimicaSanguineaService().findAll(quimicaSanguineaToRemove);
        persona.removeFromQuimicaSanguinea(quimicaSanguinea);
        return getPersonaRepository().save(persona);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param persona
     * @param biometriaHematica
     * @return Persona
     */
    @Transactional
    public Persona PersonaServiceImpl.setBiometriaHematica(Persona persona, Iterable<Long> biometriaHematica) {
        List<BiometriaHematica> items = getBiometriaHematicaService().findAll(biometriaHematica);
        Set<BiometriaHematica> currents = persona.getBiometriaHematica();
        Set<BiometriaHematica> toRemove = new HashSet<BiometriaHematica>();
        for (Iterator<BiometriaHematica> iterator = currents.iterator(); iterator.hasNext();) {
            BiometriaHematica nextBiometriaHematica = iterator.next();
            if (items.contains(nextBiometriaHematica)) {
                items.remove(nextBiometriaHematica);
            } else {
                toRemove.add(nextBiometriaHematica);
            }
        }
        persona.removeFromBiometriaHematica(toRemove);
        persona.addToBiometriaHematica(items);
        // Force the version update of the parent side to know that the parent has changed
        // because it has new books assigned
        persona.setVersion(persona.getVersion() + 1);
        return getPersonaRepository().save(persona);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param persona
     * @param examenGeneralOrina
     * @return Persona
     */
    @Transactional
    public Persona PersonaServiceImpl.setExamenGeneralOrina(Persona persona, Iterable<Long> examenGeneralOrina) {
        List<ExamenGeneralOrina> items = getExamenGeneralOrinaService().findAll(examenGeneralOrina);
        Set<ExamenGeneralOrina> currents = persona.getExamenGeneralOrina();
        Set<ExamenGeneralOrina> toRemove = new HashSet<ExamenGeneralOrina>();
        for (Iterator<ExamenGeneralOrina> iterator = currents.iterator(); iterator.hasNext();) {
            ExamenGeneralOrina nextExamenGeneralOrina = iterator.next();
            if (items.contains(nextExamenGeneralOrina)) {
                items.remove(nextExamenGeneralOrina);
            } else {
                toRemove.add(nextExamenGeneralOrina);
            }
        }
        persona.removeFromExamenGeneralOrina(toRemove);
        persona.addToExamenGeneralOrina(items);
        // Force the version update of the parent side to know that the parent has changed
        // because it has new books assigned
        persona.setVersion(persona.getVersion() + 1);
        return getPersonaRepository().save(persona);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param persona
     * @param lecturaComposicionCorporal
     * @return Persona
     */
    @Transactional
    public Persona PersonaServiceImpl.setLecturaComposicionCorporal(Persona persona, Iterable<Long> lecturaComposicionCorporal) {
        List<LecturaComposicionCorporal> items = getLecturaComposicionCorporalService().findAll(lecturaComposicionCorporal);
        Set<LecturaComposicionCorporal> currents = persona.getLecturaComposicionCorporal();
        Set<LecturaComposicionCorporal> toRemove = new HashSet<LecturaComposicionCorporal>();
        for (Iterator<LecturaComposicionCorporal> iterator = currents.iterator(); iterator.hasNext();) {
            LecturaComposicionCorporal nextLecturaComposicionCorporal = iterator.next();
            if (items.contains(nextLecturaComposicionCorporal)) {
                items.remove(nextLecturaComposicionCorporal);
            } else {
                toRemove.add(nextLecturaComposicionCorporal);
            }
        }
        persona.removeFromLecturaComposicionCorporal(toRemove);
        persona.addToLecturaComposicionCorporal(items);
        // Force the version update of the parent side to know that the parent has changed
        // because it has new books assigned
        persona.setVersion(persona.getVersion() + 1);
        return getPersonaRepository().save(persona);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param persona
     * @param quimicaSanguinea
     * @return Persona
     */
    @Transactional
    public Persona PersonaServiceImpl.setQuimicaSanguinea(Persona persona, Iterable<Long> quimicaSanguinea) {
        List<QuimicaSanguinea> items = getQuimicaSanguineaService().findAll(quimicaSanguinea);
        Set<QuimicaSanguinea> currents = persona.getQuimicaSanguinea();
        Set<QuimicaSanguinea> toRemove = new HashSet<QuimicaSanguinea>();
        for (Iterator<QuimicaSanguinea> iterator = currents.iterator(); iterator.hasNext();) {
            QuimicaSanguinea nextQuimicaSanguinea = iterator.next();
            if (items.contains(nextQuimicaSanguinea)) {
                items.remove(nextQuimicaSanguinea);
            } else {
                toRemove.add(nextQuimicaSanguinea);
            }
        }
        persona.removeFromQuimicaSanguinea(toRemove);
        persona.addToQuimicaSanguinea(items);
        // Force the version update of the parent side to know that the parent has changed
        // because it has new books assigned
        persona.setVersion(persona.getVersion() + 1);
        return getPersonaRepository().save(persona);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param persona
     */
    @Transactional
    public void PersonaServiceImpl.delete(Persona persona) {
        // Clear bidirectional one-to-many parent relationship with BiometriaHematica
        for (BiometriaHematica item : persona.getBiometriaHematica()) {
            item.setPersona(null);
        }
        
        // Clear bidirectional one-to-many parent relationship with ExamenGeneralOrina
        for (ExamenGeneralOrina item : persona.getExamenGeneralOrina()) {
            item.setPersona(null);
        }
        
        // Clear bidirectional one-to-many parent relationship with LecturaComposicionCorporal
        for (LecturaComposicionCorporal item : persona.getLecturaComposicionCorporal()) {
            item.setPersona(null);
        }
        
        // Clear bidirectional one-to-many parent relationship with QuimicaSanguinea
        for (QuimicaSanguinea item : persona.getQuimicaSanguinea()) {
            item.setPersona(null);
        }
        
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
