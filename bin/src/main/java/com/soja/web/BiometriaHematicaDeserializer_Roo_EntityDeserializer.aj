// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.soja.web;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.ObjectCodec;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonNode;
import com.soja.domain.BiometriaHematica;
import com.soja.service.api.BiometriaHematicaService;
import com.soja.web.BiometriaHematicaDeserializer;
import io.springlets.web.NotFoundException;
import java.io.IOException;
import org.springframework.boot.jackson.JsonComponent;
import org.springframework.core.convert.ConversionService;

privileged aspect BiometriaHematicaDeserializer_Roo_EntityDeserializer {
    
    declare @type: BiometriaHematicaDeserializer: @JsonComponent;
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return BiometriaHematicaService
     */
    public BiometriaHematicaService BiometriaHematicaDeserializer.getBiometriaHematicaService() {
        return biometriaHematicaService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param biometriaHematicaService
     */
    public void BiometriaHematicaDeserializer.setBiometriaHematicaService(BiometriaHematicaService biometriaHematicaService) {
        this.biometriaHematicaService = biometriaHematicaService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return ConversionService
     */
    public ConversionService BiometriaHematicaDeserializer.getConversionService() {
        return conversionService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param conversionService
     */
    public void BiometriaHematicaDeserializer.setConversionService(ConversionService conversionService) {
        this.conversionService = conversionService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param jsonParser
     * @param context
     * @param codec
     * @param tree
     * @return BiometriaHematica
     * @throws IOException
     */
    public BiometriaHematica BiometriaHematicaDeserializer.deserializeObject(JsonParser jsonParser, DeserializationContext context, ObjectCodec codec, JsonNode tree) throws IOException {
        String idText = tree.asText();
        Long id = conversionService.convert(idText, Long.class);
        BiometriaHematica biometriaHematica = biometriaHematicaService.findOne(id);
        if (biometriaHematica == null) {
            throw new NotFoundException("BiometriaHematica not found");
        }
        return biometriaHematica;
    }
    
}
