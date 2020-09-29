package com.soja.repository;
import com.soja.domain.BiometriaHematica;
import io.springlets.data.jpa.repository.DetachableJpaRepository;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepository;

/**
 * = BiometriaHematicaRepository
 TODO Auto-generated class documentation
 *
 */
@RooJpaRepository(entity = BiometriaHematica.class)
public interface BiometriaHematicaRepository extends DetachableJpaRepository<BiometriaHematica, Long>, BiometriaHematicaRepositoryCustom {
}
