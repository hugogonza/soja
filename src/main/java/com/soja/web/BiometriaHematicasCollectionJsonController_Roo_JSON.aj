// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.soja.web;

import com.soja.domain.BiometriaHematica;
import com.soja.service.api.BiometriaHematicaService;
import com.soja.web.BiometriaHematicasCollectionJsonController;
import com.soja.web.BiometriaHematicasItemJsonController;
import io.springlets.data.domain.GlobalSearch;
import java.util.Collection;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.mvc.method.annotation.MvcUriComponentsBuilder;
import org.springframework.web.util.UriComponents;

privileged aspect BiometriaHematicasCollectionJsonController_Roo_JSON {
    
    declare @type: BiometriaHematicasCollectionJsonController: @RestController;
    
    declare @type: BiometriaHematicasCollectionJsonController: @RequestMapping(value = "/api/biometriahematicas", name = "BiometriaHematicasCollectionJsonController", produces = MediaType.APPLICATION_JSON_VALUE);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private BiometriaHematicaService BiometriaHematicasCollectionJsonController.biometriaHematicaService;
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param biometriaHematicaService
     */
    @Autowired
    public BiometriaHematicasCollectionJsonController.new(BiometriaHematicaService biometriaHematicaService) {
        this.biometriaHematicaService = biometriaHematicaService;
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @return BiometriaHematicaService
     */
    public BiometriaHematicaService BiometriaHematicasCollectionJsonController.getBiometriaHematicaService() {
        return biometriaHematicaService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param biometriaHematicaService
     */
    public void BiometriaHematicasCollectionJsonController.setBiometriaHematicaService(BiometriaHematicaService biometriaHematicaService) {
        this.biometriaHematicaService = biometriaHematicaService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return ResponseEntity
     */
    @GetMapping(name = "list")
    public ResponseEntity<Page<BiometriaHematica>> BiometriaHematicasCollectionJsonController.list(GlobalSearch globalSearch, Pageable pageable) {
        
        Page<BiometriaHematica> biometriaHematicas = getBiometriaHematicaService().findAll(globalSearch, pageable);
        return ResponseEntity.ok(biometriaHematicas);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return UriComponents
     */
    public static UriComponents BiometriaHematicasCollectionJsonController.listURI() {
        return MvcUriComponentsBuilder
            .fromMethodCall(
                MvcUriComponentsBuilder.on(BiometriaHematicasCollectionJsonController.class).list(null, null))
            .build().encode();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param biometriaHematica
     * @param result
     * @return ResponseEntity
     */
    @PostMapping(name = "create")
    public ResponseEntity<?> BiometriaHematicasCollectionJsonController.create(@Valid @RequestBody BiometriaHematica biometriaHematica, BindingResult result) {
        
        if (biometriaHematica.getId() != null || biometriaHematica.getVersion() != null) {        
            return ResponseEntity.status(HttpStatus.CONFLICT).build();
        }
        
        if (result.hasErrors()) {
            return ResponseEntity.status(HttpStatus.CONFLICT).body(result);
        }
        
        BiometriaHematica newBiometriaHematica = getBiometriaHematicaService().save(biometriaHematica);
        UriComponents showURI = BiometriaHematicasItemJsonController.showURI(newBiometriaHematica);
        
        return ResponseEntity.created(showURI.toUri()).build();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param biometriaHematicas
     * @param result
     * @return ResponseEntity
     */
    @PostMapping(value = "/batch", name = "createBatch")
    public ResponseEntity<?> BiometriaHematicasCollectionJsonController.createBatch(@Valid @RequestBody Collection<BiometriaHematica> biometriaHematicas, BindingResult result) {
        
        if (result.hasErrors()) {
            return ResponseEntity.status(HttpStatus.CONFLICT).body(result);
        }
        
        getBiometriaHematicaService().save(biometriaHematicas);
        
        return ResponseEntity.created(listURI().toUri()).build();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param biometriaHematicas
     * @param result
     * @return ResponseEntity
     */
    @PutMapping(value = "/batch", name = "updateBatch")
    public ResponseEntity<?> BiometriaHematicasCollectionJsonController.updateBatch(@Valid @RequestBody Collection<BiometriaHematica> biometriaHematicas, BindingResult result) {
        
        if (result.hasErrors()) {
            return ResponseEntity.status(HttpStatus.CONFLICT).body(result);
        }
        
        getBiometriaHematicaService().save(biometriaHematicas);
        
        return ResponseEntity.ok().build();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @return ResponseEntity
     */
    @DeleteMapping(value = "/batch/{ids}", name = "deleteBatch")
    public ResponseEntity<?> BiometriaHematicasCollectionJsonController.deleteBatch(@PathVariable("ids") Collection<Long> ids) {
        
        getBiometriaHematicaService().delete(ids);
        
        return ResponseEntity.ok().build();
    }
    
}
