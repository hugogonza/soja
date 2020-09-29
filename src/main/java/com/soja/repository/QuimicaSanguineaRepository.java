package com.soja.repository;
import com.soja.domain.QuimicaSanguinea;
import io.springlets.data.jpa.repository.DetachableJpaRepository;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepository;

/**
 * = QuimicaSanguineaRepository
 TODO Auto-generated class documentation
 *
 */
@RooJpaRepository(entity = QuimicaSanguinea.class)
public interface QuimicaSanguineaRepository extends DetachableJpaRepository<QuimicaSanguinea, Long>, QuimicaSanguineaRepositoryCustom {
}
