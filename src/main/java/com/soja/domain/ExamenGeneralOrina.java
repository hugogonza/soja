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
import com.soja.ColorOrina;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import com.soja.AspectoOrina;
import java.math.BigDecimal;
import javax.validation.constraints.Digits;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import org.springframework.format.annotation.NumberFormat;
import com.soja.TipoCristales;
import com.soja.CantidadCristales;
import com.soja.HayEnOrina;
import com.soja.HayBacterias;

/**
 * = ExamenGeneralOrina
 TODO Auto-generated class documentation
 *
 */
@RooJavaBean
@RooToString
@RooJpaEntity(table = "examen_general_orina")
@RooEquals(isJpaEntity = true)
public class ExamenGeneralOrina {

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "examen_general_orina_id")
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
    @Column(name = "color")
    @Enumerated(EnumType.STRING)
    private ColorOrina Color;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @NotNull
    @Column(name = "aspecto")
    @Enumerated(EnumType.STRING)
    private AspectoOrina Aspecto;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @NotNull
    @Column(name = "ph")
    @Min(0L)
    @Max(99L)
    @Digits(integer = 2, fraction = 2)
    private BigDecimal ph;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @NotNull
    @Column(name = "densidad")
    @Min(0L)
    @Max(99L)
    @Digits(integer = 2, fraction = 3)
    private BigDecimal densidad;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @NotNull
    @Column(name = "proteinas")
    @Min(0L)
    @Max(999L)
    @Digits(integer = 3, fraction = 2)
    private BigDecimal proteinas;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @NotNull
    @Column(name = "hemoglobina")
    @Min(0L)
    @Max(999L)
    @Digits(integer = 3, fraction = 2)
    private BigDecimal hemoglobina;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @NotNull
    @Column(name = "glucosa")
    @Min(0L)
    @Max(999L)
    @Digits(integer = 3, fraction = 2)
    private BigDecimal glucosa;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @NotNull
    @Column(name = "urobilinogeno")
    @Min(0L)
    @Max(999L)
    @Digits(integer = 3, fraction = 2)
    private BigDecimal urobilinogeno;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @NotNull
    @Column(name = "bilirrubina")
    @Min(0L)
    @Max(999L)
    @Digits(integer = 3, fraction = 2)
    private BigDecimal bilirrubina;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @NotNull
    @Column(name = "cuerpos_cetonicos")
    @Min(0L)
    @Max(999L)
    @Digits(integer = 3, fraction = 2)
    private BigDecimal cuerpos_cetonicos;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @NotNull
    @Column(name = "nitritos")
    @Min(0L)
    @Max(999L)
    @Digits(integer = 3, fraction = 2)
    @NumberFormat
    private BigDecimal nitritos;
    
    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @NotNull
    @Column(name = "leucocitos")
    @Min(0L)
    @Max(999L)
    @Digits(integer = 3, fraction = 2)
    private BigDecimal leucocitos;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @NotNull
    @Column(name = "celulas_epiteliales_a")
    @Min(0L)
    @Max(99L)
    @Digits(integer = 2, fraction = 2)
    private BigDecimal celulas_epiteliales_a;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @NotNull
    @Column(name = "celulas_epiteliales_b")
    @Min(0L)
    @Max(99L)
    @Digits(integer = 2, fraction = 2)
    private BigDecimal celulas_epiteliales_b;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @NotNull
    @Column(name = "leucocitos_a")
    @Min(0L)
    @Max(99L)
    @Digits(integer = 2, fraction = 2)
    private BigDecimal leucocitos_a;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @NotNull
    @Column(name = "leucocitos_b")
    @Min(0L)
    @Max(99L)
    @Digits(integer = 2, fraction = 2)
    private BigDecimal leucocitos_b;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @NotNull
    @Column(name = "eritrocitos_a")
    @Min(0L)
    @Max(99L)
    @Digits(integer = 2, fraction = 2)
    private BigDecimal eritrocitos_a;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @NotNull
    @Column(name = "eritrocitos_b")
    @Min(0L)
    @Max(99L)
    @Digits(integer = 2, fraction = 2)
    private BigDecimal eritrocitos_b;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @NotNull
    @Column(name = "cilindros_hialinos_a")
    @Min(0L)
    @Max(99L)
    @Digits(integer = 2, fraction = 2)
    private BigDecimal cilindros_hialinos_a;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @NotNull
    @Column(name = "cilindros_hialinos_b")
    @Min(0L)
    @Max(99L)
    @Digits(integer = 2, fraction = 2)
    private BigDecimal cilindros_hialinos_b;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @NotNull
    @Column(name = "cilindros_epiteliales_a")
    @Min(0L)
    @Max(99L)
    @Digits(integer = 2, fraction = 2)
    private BigDecimal cilindros_epiteliales_a;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @NotNull
    @Column(name = "cilindros_epiteliales_b")
    @Min(0L)
    @Max(99L)
    @Digits(integer = 2, fraction = 2)
    private BigDecimal cilindros_epiteliales_b;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @NotNull
    @Column(name = "tipo_cristales")
    @Enumerated(EnumType.STRING)
    private TipoCristales tipo_cristales;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @NotNull
    @Column(name = "cristales_cantidad")
    @Enumerated(EnumType.STRING)
    private CantidadCristales cristales_cantidad;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @NotNull
    @Column(name = "levaduras")
    @Enumerated(EnumType.STRING)
    private HayEnOrina levaduras;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @NotNull
    @Column(name = "bacterias")
    @Enumerated(EnumType.STRING)
    private HayBacterias bacterias;
}
