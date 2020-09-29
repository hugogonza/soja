package com.soja.web;
import com.soja.domain.QuimicaSanguinea;
import com.soja.service.api.QuimicaSanguineaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.jackson.JsonObjectDeserializer;
import org.springframework.context.annotation.Lazy;
import org.springframework.core.convert.ConversionService;
import org.springframework.roo.addon.web.mvc.controller.annotations.config.RooDeserializer;

/**
 * = QuimicaSanguineaDeserializer
 TODO Auto-generated class documentation
 *
 */
@RooDeserializer(entity = QuimicaSanguinea.class)
public class QuimicaSanguineaDeserializer extends JsonObjectDeserializer<QuimicaSanguinea> {

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private QuimicaSanguineaService quimicaSanguineaService;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private ConversionService conversionService;

    /**
     * TODO Auto-generated constructor documentation
     *
     * @param quimicaSanguineaService
     * @param conversionService
     */
    @Autowired
    public QuimicaSanguineaDeserializer(@Lazy QuimicaSanguineaService quimicaSanguineaService, ConversionService conversionService) {
        this.quimicaSanguineaService = quimicaSanguineaService;
        this.conversionService = conversionService;
    }
}
