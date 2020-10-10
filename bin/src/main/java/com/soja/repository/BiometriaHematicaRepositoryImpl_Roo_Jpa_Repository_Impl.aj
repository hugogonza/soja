// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.soja.repository;

import com.querydsl.core.types.Path;
import com.querydsl.jpa.JPQLQuery;
import com.soja.domain.BiometriaHematica;
import com.soja.domain.Persona;
import com.soja.domain.QBiometriaHematica;
import com.soja.repository.BiometriaHematicaRepositoryImpl;
import io.springlets.data.domain.GlobalSearch;
import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt.AttributeMappingBuilder;
import java.util.List;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.Assert;

privileged aspect BiometriaHematicaRepositoryImpl_Roo_Jpa_Repository_Impl {
    
    declare @type: BiometriaHematicaRepositoryImpl: @Transactional(readOnly = true);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String BiometriaHematicaRepositoryImpl.PERSONA = "persona";
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<BiometriaHematica> BiometriaHematicaRepositoryImpl.findAll(GlobalSearch globalSearch, Pageable pageable) {
        
        QBiometriaHematica biometriaHematica = QBiometriaHematica.biometriaHematica;
        
        JPQLQuery<BiometriaHematica> query = from(biometriaHematica);
        
        Path<?>[] paths = new Path<?>[] {biometriaHematica.persona};        
        applyGlobalSearch(globalSearch, query, paths);
        
        AttributeMappingBuilder mapping = buildMapper()
			.map(PERSONA, biometriaHematica.persona);
        
        applyPagination(pageable, query, mapping);
        applyOrderById(query);
        
        return loadPage(query, pageable, biometriaHematica);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<BiometriaHematica> BiometriaHematicaRepositoryImpl.findAllByIdsIn(List<Long> ids, GlobalSearch globalSearch, Pageable pageable) {
        
        QBiometriaHematica biometriaHematica = QBiometriaHematica.biometriaHematica;
        
        JPQLQuery<BiometriaHematica> query = from(biometriaHematica);
        
        Path<?>[] paths = new Path<?>[] {biometriaHematica.persona};        
        applyGlobalSearch(globalSearch, query, paths);
        
        // Also, filter by the provided ids
        query.where(biometriaHematica.id.in(ids));
        
        AttributeMappingBuilder mapping = buildMapper()
			.map(PERSONA, biometriaHematica.persona);
        
        applyPagination(pageable, query, mapping);
        applyOrderById(query);
        
        return loadPage(query, pageable, biometriaHematica);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param persona
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<BiometriaHematica> BiometriaHematicaRepositoryImpl.findByPersona(Persona persona, GlobalSearch globalSearch, Pageable pageable) {
        
        QBiometriaHematica biometriaHematica = QBiometriaHematica.biometriaHematica;
        
        JPQLQuery<BiometriaHematica> query = from(biometriaHematica);
        
        Assert.notNull(persona, "persona is required");
        
        query.where(biometriaHematica.persona.eq(persona));
        Path<?>[] paths = new Path<?>[] {biometriaHematica.persona};        
        applyGlobalSearch(globalSearch, query, paths);
        
        AttributeMappingBuilder mapping = buildMapper()
			.map(PERSONA, biometriaHematica.persona);
        
        applyPagination(pageable, query, mapping);
        applyOrderById(query);
        
        return loadPage(query, pageable, biometriaHematica);
    }
    
}