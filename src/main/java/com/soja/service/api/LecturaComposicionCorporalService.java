package com.soja.service.api;
import com.soja.domain.LecturaComposicionCorporal;
import io.springlets.data.web.validation.ValidatorService;
import io.springlets.format.EntityResolver;
import org.springframework.roo.addon.layers.service.annotations.RooService;

/**
 * = LecturaComposicionCorporalService
 TODO Auto-generated class documentation
 *
 */
@RooService(entity = LecturaComposicionCorporal.class)
public interface LecturaComposicionCorporalService extends EntityResolver<LecturaComposicionCorporal, Long>, ValidatorService<LecturaComposicionCorporal> {
}
