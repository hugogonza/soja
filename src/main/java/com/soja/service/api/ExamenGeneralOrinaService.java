package com.soja.service.api;
import com.soja.domain.ExamenGeneralOrina;
import io.springlets.data.web.validation.ValidatorService;
import io.springlets.format.EntityResolver;
import org.springframework.roo.addon.layers.service.annotations.RooService;

/**
 * = ExamenGeneralOrinaService
 TODO Auto-generated class documentation
 *
 */
@RooService(entity = ExamenGeneralOrina.class)
public interface ExamenGeneralOrinaService extends EntityResolver<ExamenGeneralOrina, Long>, ValidatorService<ExamenGeneralOrina> {
}
