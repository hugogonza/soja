package com.soja.repository;

import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepositoryCustomImpl;
import com.soja.domain.BiometriaHematica;

/**
 * = BiometriaHematicaRepositoryImpl
 *
 * Implementation of BiometriaHematicaRepositoryCustom
 *
 */
@RooJpaRepositoryCustomImpl(repository = BiometriaHematicaRepositoryCustom.class)
public class BiometriaHematicaRepositoryImpl extends QueryDslRepositorySupportExt<BiometriaHematica> implements BiometriaHematicaRepositoryCustom{

    /**
     * Default constructor
     */
    BiometriaHematicaRepositoryImpl() {
        super(BiometriaHematica.class);
    }
}