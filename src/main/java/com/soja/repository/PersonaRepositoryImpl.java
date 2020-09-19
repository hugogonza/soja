package com.soja.repository;

import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepositoryCustomImpl;
import com.soja.domain.Persona;

/**
 * = PersonaRepositoryImpl
 *
 * Implementation of PersonaRepositoryCustom
 *
 */
@RooJpaRepositoryCustomImpl(repository = PersonaRepositoryCustom.class)
public class PersonaRepositoryImpl extends QueryDslRepositorySupportExt<Persona> implements PersonaRepositoryCustom{

    /**
     * Default constructor
     */
    PersonaRepositoryImpl() {
        super(Persona.class);
    }
}