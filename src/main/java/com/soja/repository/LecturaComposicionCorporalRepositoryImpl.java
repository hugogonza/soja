package com.soja.repository;

import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepositoryCustomImpl;
import com.soja.domain.LecturaComposicionCorporal;

/**
 * = LecturaComposicionCorporalRepositoryImpl
 *
 * Implementation of LecturaComposicionCorporalRepositoryCustom
 *
 */
@RooJpaRepositoryCustomImpl(repository = LecturaComposicionCorporalRepositoryCustom.class)
public class LecturaComposicionCorporalRepositoryImpl extends QueryDslRepositorySupportExt<LecturaComposicionCorporal> implements LecturaComposicionCorporalRepositoryCustom{

    /**
     * Default constructor
     */
    LecturaComposicionCorporalRepositoryImpl() {
        super(LecturaComposicionCorporal.class);
    }
}