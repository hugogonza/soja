// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.soja.web;

import com.soja.domain.BiometriaHematica;
import com.soja.service.api.BiometriaHematicaService;
import com.soja.web.BiometriaHematicasItemJsonController;
import io.springlets.web.NotFoundException;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.mvc.method.annotation.MvcUriComponentsBuilder;
import org.springframework.web.util.UriComponents;

privileged aspect BiometriaHematicasItemJsonController_Roo_JSON {
    
    declare @type: BiometriaHematicasItemJsonController: @RestController;
    
    declare @type: BiometriaHematicasItemJsonController: @RequestMapping(value = "/api/biometriahematicas/{biometriaHematica}", name = "BiometriaHematicasItemJsonController", produces = MediaType.APPLICATION_JSON_VALUE);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private BiometriaHematicaService BiometriaHematicasItemJsonController.biometriaHematicaService;
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param biometriaHematicaService
     */
    @Autowired
    public BiometriaHematicasItemJsonController.new(BiometriaHematicaService biometriaHematicaService) {
        this.biometriaHematicaService = biometriaHematicaService;
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @return BiometriaHematicaService
     */
    public BiometriaHematicaService BiometriaHematicasItemJsonController.getBiometriaHematicaService() {
        return biometriaHematicaService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param biometriaHematicaService
     */
    public void BiometriaHematicasItemJsonController.setBiometriaHematicaService(BiometriaHematicaService biometriaHematicaService) {
        this.biometriaHematicaService = biometriaHematicaService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return BiometriaHematica
     */
    @ModelAttribute
    public BiometriaHematica BiometriaHematicasItemJsonController.getBiometriaHematica(@PathVariable("biometriaHematica") Long id) {
        BiometriaHematica biometriaHematica = biometriaHematicaService.findOne(id);
        if (biometriaHematica == null) {
            throw new NotFoundException(String.format("BiometriaHematica with identifier '%s' not found",id));
        }
        return biometriaHematica;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param biometriaHematica
     * @return ResponseEntity
     */
    @GetMapping(name = "show")
    public ResponseEntity<?> BiometriaHematicasItemJsonController.show(@ModelAttribute BiometriaHematica biometriaHematica) {
        return ResponseEntity.ok(biometriaHematica);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param biometriaHematica
     * @return UriComponents
     */
    public static UriComponents BiometriaHematicasItemJsonController.showURI(BiometriaHematica biometriaHematica) {
        return MvcUriComponentsBuilder
            .fromMethodCall(
                MvcUriComponentsBuilder.on(BiometriaHematicasItemJsonController.class).show(biometriaHematica))
            .buildAndExpand(biometriaHematica.getId()).encode();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param storedBiometriaHematica
     * @param biometriaHematica
     * @param result
     * @return ResponseEntity
     */
    @PutMapping(name = "update")
    public ResponseEntity<?> BiometriaHematicasItemJsonController.update(@ModelAttribute BiometriaHematica storedBiometriaHematica, @Valid @RequestBody BiometriaHematica biometriaHematica, BindingResult result) {
        
        if (result.hasErrors()) {
            return ResponseEntity.status(HttpStatus.CONFLICT).body(result);
        }
        biometriaHematica.setId(storedBiometriaHematica.getId());
        getBiometriaHematicaService().save(biometriaHematica);
        return ResponseEntity.ok().build();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param biometriaHematica
     * @return ResponseEntity
     */
    @DeleteMapping(name = "delete")
    public ResponseEntity<?> BiometriaHematicasItemJsonController.delete(@ModelAttribute BiometriaHematica biometriaHematica) {
        getBiometriaHematicaService().delete(biometriaHematica);
        return ResponseEntity.ok().build();
    }
    
}
