package com.soja.service.api;
import com.soja.domain.BiometriaHematica;
import io.springlets.data.web.validation.ValidatorService;
import io.springlets.format.EntityResolver;
import org.springframework.roo.addon.layers.service.annotations.RooService;

/**
 * = BiometriaHematicaService
 TODO Auto-generated class documentation
 *
 */
@RooService(entity = BiometriaHematica.class)
public interface BiometriaHematicaService extends EntityResolver<BiometriaHematica, Long>, ValidatorService<BiometriaHematica> {
}
