package com.soja.service.api;
import com.soja.domain.QuimicaSanguinea;
import io.springlets.data.web.validation.ValidatorService;
import io.springlets.format.EntityResolver;
import org.springframework.roo.addon.layers.service.annotations.RooService;

/**
 * = QuimicaSanguineaService
 TODO Auto-generated class documentation
 *
 */
@RooService(entity = QuimicaSanguinea.class)
public interface QuimicaSanguineaService extends EntityResolver<QuimicaSanguinea, Long>, ValidatorService<QuimicaSanguinea> {
}
