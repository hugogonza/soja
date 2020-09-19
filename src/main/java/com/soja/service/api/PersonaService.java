package com.soja.service.api;
import com.soja.domain.Persona;
import io.springlets.data.web.validation.ValidatorService;
import io.springlets.format.EntityResolver;
import org.springframework.roo.addon.layers.service.annotations.RooService;

/**
 * = PersonaService
 TODO Auto-generated class documentation
 *
 */
@RooService(entity = Persona.class)
public interface PersonaService extends EntityResolver<Persona, Long>, ValidatorService<Persona> {
}
