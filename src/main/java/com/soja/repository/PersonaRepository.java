package com.soja.repository;
import com.soja.domain.Persona;
import io.springlets.data.jpa.repository.DetachableJpaRepository;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepository;

/**
 * = PersonaRepository
 TODO Auto-generated class documentation
 *
 */
@RooJpaRepository(entity = Persona.class)
public interface PersonaRepository extends DetachableJpaRepository<Persona, Long>, PersonaRepositoryCustom {
}
