package com.soja.web;
import com.soja.domain.LecturaComposicionCorporal;
import com.soja.service.api.LecturaComposicionCorporalService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.jackson.JsonObjectDeserializer;
import org.springframework.context.annotation.Lazy;
import org.springframework.core.convert.ConversionService;
import org.springframework.roo.addon.web.mvc.controller.annotations.config.RooDeserializer;

/**
 * = LecturaComposicionCorporalDeserializer
 TODO Auto-generated class documentation
 *
 */
@RooDeserializer(entity = LecturaComposicionCorporal.class)
public class LecturaComposicionCorporalDeserializer extends JsonObjectDeserializer<LecturaComposicionCorporal> {

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private LecturaComposicionCorporalService lecturaComposicionCorporalService;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private ConversionService conversionService;

    /**
     * TODO Auto-generated constructor documentation
     *
     * @param lecturaComposicionCorporalService
     * @param conversionService
     */
    @Autowired
    public LecturaComposicionCorporalDeserializer(@Lazy LecturaComposicionCorporalService lecturaComposicionCorporalService, ConversionService conversionService) {
        this.lecturaComposicionCorporalService = lecturaComposicionCorporalService;
        this.conversionService = conversionService;
    }
}
