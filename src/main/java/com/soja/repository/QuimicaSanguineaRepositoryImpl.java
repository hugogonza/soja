package com.soja.repository;

import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepositoryCustomImpl;
import com.soja.domain.QuimicaSanguinea;

/**
 * = QuimicaSanguineaRepositoryImpl
 *
 * Implementation of QuimicaSanguineaRepositoryCustom
 *
 */
@RooJpaRepositoryCustomImpl(repository = QuimicaSanguineaRepositoryCustom.class)
public class QuimicaSanguineaRepositoryImpl extends QueryDslRepositorySupportExt<QuimicaSanguinea> implements QuimicaSanguineaRepositoryCustom{

    /**
     * Default constructor
     */
    QuimicaSanguineaRepositoryImpl() {
        super(QuimicaSanguinea.class);
    }
}