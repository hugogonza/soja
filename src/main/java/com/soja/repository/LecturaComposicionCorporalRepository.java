package com.soja.repository;
import com.soja.domain.LecturaComposicionCorporal;
import io.springlets.data.jpa.repository.DetachableJpaRepository;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepository;

/**
 * = LecturaComposicionCorporalRepository
 TODO Auto-generated class documentation
 *
 */
@RooJpaRepository(entity = LecturaComposicionCorporal.class)
public interface LecturaComposicionCorporalRepository extends DetachableJpaRepository<LecturaComposicionCorporal, Long>, LecturaComposicionCorporalRepositoryCustom {
}
