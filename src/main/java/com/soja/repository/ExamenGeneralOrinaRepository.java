package com.soja.repository;
import com.soja.domain.ExamenGeneralOrina;
import io.springlets.data.jpa.repository.DetachableJpaRepository;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepository;

/**
 * = ExamenGeneralOrinaRepository
 TODO Auto-generated class documentation
 *
 */
@RooJpaRepository(entity = ExamenGeneralOrina.class)
public interface ExamenGeneralOrinaRepository extends DetachableJpaRepository<ExamenGeneralOrina, Long>, ExamenGeneralOrinaRepositoryCustom {
}
