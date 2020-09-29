package com.soja.web;
import com.soja.domain.ExamenGeneralOrina;
import com.soja.service.api.ExamenGeneralOrinaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.jackson.JsonObjectDeserializer;
import org.springframework.context.annotation.Lazy;
import org.springframework.core.convert.ConversionService;
import org.springframework.roo.addon.web.mvc.controller.annotations.config.RooDeserializer;

/**
 * = ExamenGeneralOrinaDeserializer
 TODO Auto-generated class documentation
 *
 */
@RooDeserializer(entity = ExamenGeneralOrina.class)
public class ExamenGeneralOrinaDeserializer extends JsonObjectDeserializer<ExamenGeneralOrina> {

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private ExamenGeneralOrinaService examenGeneralOrinaService;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private ConversionService conversionService;

    /**
     * TODO Auto-generated constructor documentation
     *
     * @param examenGeneralOrinaService
     * @param conversionService
     */
    @Autowired
    public ExamenGeneralOrinaDeserializer(@Lazy ExamenGeneralOrinaService examenGeneralOrinaService, ConversionService conversionService) {
        this.examenGeneralOrinaService = examenGeneralOrinaService;
        this.conversionService = conversionService;
    }
}
