package com.soja.domain;

import static com.querydsl.core.types.PathMetadataFactory.*;

import com.querydsl.core.types.dsl.*;

import com.querydsl.core.types.PathMetadata;
import javax.annotation.Generated;
import com.querydsl.core.types.Path;


/**
 * QPersona is a Querydsl query type for Persona
 */
@Generated("com.querydsl.codegen.EntitySerializer")
public class QPersona extends EntityPathBase<Persona> {

    private static final long serialVersionUID = -944402640L;

    public static final QPersona persona = new QPersona("persona");

    public final StringPath alias = createString("alias");

    public final NumberPath<Integer> edad = createNumber("edad", Integer.class);

    public final StringPath genero = createString("genero");

    public final NumberPath<Long> id = createNumber("id", Long.class);

    public final NumberPath<Integer> version = createNumber("version", Integer.class);

    public QPersona(String variable) {
        super(Persona.class, forVariable(variable));
    }

    public QPersona(Path<? extends Persona> path) {
        super(path.getType(), path.getMetadata());
    }

    public QPersona(PathMetadata metadata) {
        super(Persona.class, metadata);
    }

}

