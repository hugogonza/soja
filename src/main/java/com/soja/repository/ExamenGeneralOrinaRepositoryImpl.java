package com.soja.repository;

import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepositoryCustomImpl;
import com.soja.domain.ExamenGeneralOrina;

/**
 * = ExamenGeneralOrinaRepositoryImpl
 *
 * Implementation of ExamenGeneralOrinaRepositoryCustom
 *
 */
@RooJpaRepositoryCustomImpl(repository = ExamenGeneralOrinaRepositoryCustom.class)
public class ExamenGeneralOrinaRepositoryImpl extends QueryDslRepositorySupportExt<ExamenGeneralOrina> implements ExamenGeneralOrinaRepositoryCustom{

    /**
     * Default constructor
     */
    ExamenGeneralOrinaRepositoryImpl() {
        super(ExamenGeneralOrina.class);
    }
}