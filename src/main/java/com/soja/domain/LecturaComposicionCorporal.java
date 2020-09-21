package com.soja.domain;
import org.springframework.roo.addon.javabean.annotations.RooEquals;
import org.springframework.roo.addon.javabean.annotations.RooJavaBean;
import org.springframework.roo.addon.javabean.annotations.RooToString;
import org.springframework.roo.addon.jpa.annotations.entity.RooJpaEntity;
import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;
import java.math.BigDecimal;
import javax.validation.constraints.Digits;
import javax.validation.constraints.NotNull;
import org.springframework.format.annotation.NumberFormat;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import java.util.Calendar;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.springframework.format.annotation.DateTimeFormat;
import io.springlets.format.EntityFormat;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

/**
 * = LecturaComposicionCorporal
 TODO Auto-generated class documentation
 *
 */
@RooJavaBean
@RooToString
@RooJpaEntity(table = "lectura_composicion_corporal")
@RooEquals(isJpaEntity = true)
public class LecturaComposicionCorporal {

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "lectura_composicion_corporal_id")
    private Long id;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @Version
    @Column(name = "VERSION")
    private Long version;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @NotNull
    @Column(name = "estatura")
    @Digits(integer = 1, fraction = 2)
    @NumberFormat
    private BigDecimal estatura;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @NotNull
    @Column(name = "peso")
    @Digits(integer = 3, fraction = 2)
    @NumberFormat
    private BigDecimal peso;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @NotNull
    @Column(name = "imc")
    @Digits(integer = 2, fraction = 2)
    @NumberFormat
    private BigDecimal imc;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @NotNull
    @Column(name = "porcentaje_masa_corporal")
    @Min(0L)
    @Max(100L)
    @NumberFormat
    private BigDecimal porcentajeMasaCorporal;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @NotNull
    @Column(name = "masa_magra")
    @NumberFormat
    private BigDecimal masaMagra;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @NotNull
    @Column(name = "porcentaje_agua_corporal")
    @Min(0L)
    @Max(100L)
    @NumberFormat
    private BigDecimal porcentajeAguaCorporal;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @NotNull
    @Column(name = "grasa_visceral")
    @NumberFormat
    private Integer grasaVisceral;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @NotNull
    @Column(name = "circunferencia_cintura")
    @Digits(integer = 3, fraction = 2)
    @NumberFormat
    private BigDecimal circunferenciaCintura;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @NotNull
    @Column(name = "circunferencia_cadera")
    @Digits(integer = 3, fraction = 2)
    @NumberFormat
    private BigDecimal circunferenciaCadera;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @NotNull
    @Column(name = "indice_cintura_cadera")
    @Digits(integer = 3, fraction = 2)
    @NumberFormat
    private BigDecimal indiceCinturaCadera;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @NotNull
    @Column(name = "circunferencia_muneca")
    @Digits(integer = 2, fraction = 2)
    @NumberFormat
    private BigDecimal circunferenciaMuneca;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @NotNull
    @Column(name = "fecha_hora_evaluacion")
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Calendar fechaHoraEvaluacion;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "persona_id")
    @EntityFormat
    private Persona persona;
}
