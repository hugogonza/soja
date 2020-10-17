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
import io.springlets.format.EntityFormat;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import java.util.Calendar;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import org.springframework.format.annotation.DateTimeFormat;
import java.math.BigDecimal;
import javax.validation.constraints.Digits;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import org.springframework.format.annotation.NumberFormat;

/**
 * = BiometriaHematica
 TODO Auto-generated class documentation
 *
 */
@RooJavaBean
@RooToString
@RooJpaEntity(table = "biometria_hematica")
@RooEquals(isJpaEntity = true)
public class BiometriaHematica {

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "biometria_hematica_id")
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
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "persona_id")
    @EntityFormat
    private Persona persona;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @NotNull
    @Column(name = "fecha")
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Calendar fecha;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @NotNull
    @Column(name = "eritrocitos")
    @Min(0L)
    @Max(99L)
    @Digits(integer = 2, fraction = 2)
    private BigDecimal eritrocitos;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @NotNull
    @Column(name = "hemoglobina")
    @Min(0L)
    @Max(99L)
    @Digits(integer = 2, fraction = 2)
    private BigDecimal hemoglobina;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @NotNull
    @Column(name = "hematrocito")
    @Min(0L)
    @Max(99L)
    @Digits(integer = 2, fraction = 2)
    private BigDecimal hematrocito;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @NotNull
    @Column(name = "amplitud_de_distribucion_eritrocitaria_rdw_cv")
    @Min(0L)
    @Max(99L)
    @Digits(integer = 2, fraction = 2)
    private BigDecimal amplitud_de_distribucion_eritrocitaria_rdw_cv;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @NotNull
    @Column(name = "amplitud_de_distribucion_eritrocitaria_rdw_sd")
    @Min(0L)
    @Max(99L)
    @Digits(integer = 2, fraction = 2)
    private BigDecimal amplitud_de_distribucion_eritrocitaria_rdw_sd;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @NotNull
    @Column(name = "velocidad_de_sedimentacion_globular")
    @Min(0L)
    @Max(99L)
    @Digits(integer = 2, fraction = 2)
    private BigDecimal velocidad_de_sedimentacion_globular;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @NotNull
    @Column(name = "volumen_corpuscular_medio")
    @Min(0L)
    @Max(99L)
    @Digits(integer = 2, fraction = 2)
    private BigDecimal volumen_corpuscular_medio;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @NotNull
    @Column(name = "hemoglobina_corpuscular_media")
    @Min(0L)
    @Max(99L)
    @Digits(integer = 2, fraction = 2)
    private BigDecimal hemoglobina_corpuscular_media;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @NotNull
    @Column(name = "concentracion_media_de_hemoglobina_corpuscular")
    @Min(0L)
    @Max(99L)
    @Digits(integer = 2, fraction = 2)
    private BigDecimal concentracion_media_de_hemoglobina_corpuscular;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @NotNull
    @Column(name = "leucocitos")
    @Min(0L)
    @Max(99L)
    @Digits(integer = 2, fraction = 2)
    private BigDecimal leucocitos;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @NotNull
    @Column(name = "linfocitos")
    @Min(0L)
    @Max(99L)
    @Digits(integer = 2, fraction = 2)
    private BigDecimal linfocitos;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @NotNull
    @Column(name = "monocitos")
    @Min(0L)
    @Max(99L)
    @Digits(integer = 2, fraction = 2)
    private BigDecimal monocitos;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @NotNull
    @Column(name = "neutrofilos")
    @Min(0L)
    @Max(99L)
    @Digits(integer = 2, fraction = 2)
    private BigDecimal neutrofilos;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @NotNull
    @Column(name = "eosinofilos")
    @Min(0L)
    @Max(99L)
    @Digits(integer = 2, fraction = 2)
    private BigDecimal eosinofilos;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @NotNull
    @Column(name = "basofilos")
    @Min(0L)
    @Max(99L)
    @Digits(integer = 2, fraction = 2)
    private BigDecimal basofilos;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @NotNull
    @Column(name = "plaquetas")
    @Min(0L)
    @Max(999L)
    @Digits(integer = 3, fraction = 2)
    private BigDecimal plaquetas;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @NotNull
    @Column(name = "volumen_plaquetario_medio")
    @Min(0L)
    @Max(99L)
    @Digits(integer = 2, fraction = 2)
    private BigDecimal volumen_plaquetario_medio;
}
