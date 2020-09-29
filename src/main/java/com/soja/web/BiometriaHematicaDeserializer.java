package com.soja.web;
import com.soja.domain.BiometriaHematica;
import com.soja.service.api.BiometriaHematicaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.jackson.JsonObjectDeserializer;
import org.springframework.context.annotation.Lazy;
import org.springframework.core.convert.ConversionService;
import org.springframework.roo.addon.web.mvc.controller.annotations.config.RooDeserializer;

/**
 * = BiometriaHematicaDeserializer
 TODO Auto-generated class documentation
 *
 */
@RooDeserializer(entity = BiometriaHematica.class)
public class BiometriaHematicaDeserializer extends JsonObjectDeserializer<BiometriaHematica> {

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private BiometriaHematicaService biometriaHematicaService;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private ConversionService conversionService;

    /**
     * TODO Auto-generated constructor documentation
     *
     * @param biometriaHematicaService
     * @param conversionService
     */
    @Autowired
    public BiometriaHematicaDeserializer(@Lazy BiometriaHematicaService biometriaHematicaService, ConversionService conversionService) {
        this.biometriaHematicaService = biometriaHematicaService;
        this.conversionService = conversionService;
    }
}
