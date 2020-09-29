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
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import org.springframework.format.annotation.NumberFormat;
import io.springlets.format.EntityFormat;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import java.util.Calendar;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.springframework.format.annotation.DateTimeFormat;

/**
 * = QuimicaSanguinea
 TODO Auto-generated class documentation
 *
 */
@RooJavaBean
@RooToString
@RooJpaEntity(table = "quimica_sanguinea")
@RooEquals(isJpaEntity = true)
public class QuimicaSanguinea {

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "quimica_sanguinea_id")
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
    @Column(name = "glucosa")
    @Min(0L)
    @Max(999L)
    @Digits(integer = 3, fraction = 2)
    
    private BigDecimal glucosa;

    /**
     * < a 110 U/L
     */
    @NotNull
    @Column(name = "amilasa")
    @Min(0L)
    @Max(999L)
    @Digits(integer = 3, fraction = 2)
    
    private BigDecimal amilasa;

    /**
     * <= a 60 U/L
     */
    @NotNull
    @Column(name = "lipasa")
    @Min(0L)
    @Max(999L)
    @Digits(integer = 3, fraction = 2)
    
    private BigDecimal lipasa;

    /**
     * 0.9 a 1.3 mg/dl
     */
    @NotNull
    @Column(name = "creatinina")
    @Min(0L)
    @Max(999L)
    @Digits(integer = 3, fraction = 2)
    
    private BigDecimal creatinina;

    /**
     * 10 a 50 mg/dl
     */
    @NotNull
    @Column(name = "urea")
    @Min(0L)
    @Max(999L)
    @Digits(integer = 3, fraction = 2)
    
    private BigDecimal urea;

    /**
     * 4.7 a 23.4 mg/dl
     */
    @NotNull
    @Column(name = "nitrogeno_ureico")
    @Min(0L)
    @Max(999L)
    @Digits(integer = 3, fraction = 2)
    
    private BigDecimal nitrogeno_ureico;

    /**
     * 3.5 a 7.2 mg/dl
     */
    @NotNull
    @Column(name = "acido_urico")
    @Min(0L)
    @Max(999L)
    @Digits(integer = 3, fraction = 2)
    
    private BigDecimal acido_urico;

    /**
     * 0 a 0.2 mg/dl
     */
    @NotNull
    @Column(name = "bilirrubina_directa")
    @Min(0L)
    @Max(99L)
    @Digits(integer = 2, fraction = 2)
    
    private BigDecimal bilirrubina_directa;

    /**
     * 0.1 a 1.0 mg/dl
     */
    @NotNull
    @Column(name = "bilirrubina_indirecta")
    @Min(0L)
    @Max(99L)
    @Digits(integer = 2, fraction = 2)
    
    private BigDecimal bilirrubina_indirecta;

    /**
     * 0.1 a 1.2 mg/dl
     */
    @NotNull
    @Column(name = "bilirrubina_total")
    @Min(0L)
    @Max(99L)
    @Digits(integer = 2, fraction = 2)
    
    private BigDecimal bilirrubina_total;

    /**
     * <= a 32 U/L
     */
    @NotNull
    @Column(name = "aspartato_amino_transferasa_ast_tgo")
    @Min(0L)
    @Max(99L)
    @Digits(integer = 2, fraction = 2)
    
    private BigDecimal aspartato_amino_transferasa_ast_tgo;

    /**
     * <= a 31 U/L
     */
    @NotNull
    @Column(name = "alanina_amino_transferasa_alt_tgp")
    @Min(0L)
    @Max(99L)
    @Digits(integer = 2, fraction = 2)
    
    private BigDecimal alanina_amino_transferasa_alt_tgp;

    /**
     * 98 a 279 U/L
     */
    @NotNull
    @Column(name = "fosfatasa_alcalina")
    @Min(0L)
    @Max(999L)
    @Digits(integer = 3, fraction = 2)
    
    private BigDecimal fosfatasa_alcalina;

    /**
     * 6.1 a 7.9 g/dl
     */
    @NotNull
    @Column(name = "proteinas_totales")
    @Min(0L)
    @Max(999L)
    @Digits(integer = 3, fraction = 2)
    
    private BigDecimal proteinas_totales;

    /**
     * 3.5 a 4.8 g/dl
     */
    @NotNull
    @Column(name = "albumina")
    @Min(0L)
    @Max(99L)
    @Digits(integer = 2, fraction = 2)
    
    private BigDecimal albumina;

    /**
     * 2.6 a 3.1 g/dl
     */
    @NotNull
    @Column(name = "globulina")
    @Min(0L)
    @Max(99L)
    @Digits(integer = 2, fraction = 2)
    
    private BigDecimal globulina;

    /**
     * 1.3 a 2.2
     */
    @NotNull
    @Column(name = "relacion_a_g")
    @Min(0L)
    @Max(99L)
    @Digits(integer = 2, fraction = 2)
    
    private BigDecimal relacion_a_g;

    /**
     * < a 38 U/L
     */
    @NotNull
    @Column(name = "gama_glutamil_transpeptidasa_ggt")
    @Min(0L)
    @Max(999L)
    @Digits(integer = 3, fraction = 2)
    
    private BigDecimal gama_glutamil_transpeptidasa_ggt;

    /**
     * 230 a 460 U/L
     */
    @NotNull
    @Column(name = "lactato_deshidrogenasa_ldh")
    @Min(0L)
    @Max(999L)
    @Digits(integer = 3, fraction = 2)
    
    private BigDecimal lactato_deshidrogenasa_ldh;

    /**
     * <= a 150 mg/dl
     */
    @NotNull
    @Column(name = "triacilgliceroles")
    @Min(0L)
    @Max(999L)
    @Digits(integer = 3, fraction = 2)
    
    private BigDecimal triacilgliceroles;

    /**
     * <= a 200 mg/dl
     */
    @NotNull
    @Column(name = "colesterol")
    @Min(0L)
    @Max(999L)
    @Digits(integer = 3, fraction = 2)
    
    private BigDecimal colesterol;

    /**
     * 30 a 85 mg/dl
     */
    @NotNull
    @Column(name = "hdl_colesterol")
    @Min(0L)
    @Max(999L)
    @Digits(integer = 3, fraction = 2)
    
    private BigDecimal hdl_colesterol;

    /**
     * 83 a 168 mg/dl
     */
    @NotNull
    @Column(name = "ldl_colesterol")
    @Min(0L)
    @Max(999L)
    @Digits(integer = 3, fraction = 2)
    
    private BigDecimal ldl_colesterol;

    /**
     * 10 a 33 mg/dl
     */
    @NotNull
    @Column(name = "vldl")
    @Min(0L)
    @Max(999L)
    @Digits(integer = 3, fraction = 2)
    
    private BigDecimal vldl;

    /**
     * 450 a 900 mg/dl
     */
    @NotNull
    @Column(name = "lipidos_totales")
    @Min(0L)
    @Max(999L)
    @Digits(integer = 3, fraction = 2)
    
    private BigDecimal lipidos_totales;

    /**
     * < a 5
     */
    @NotNull
    @Column(name = "indice_aterogenico")
    @Min(0L)
    @Max(99L)
    @Digits(integer = 2, fraction = 2)
    
    private BigDecimal indice_aterogenico;

    /**
     * 8.8 a 10.2 mg/dl
     */
    @NotNull
    @Column(name = "calcio")
    @Min(0L)
    @Max(99L)
    @Digits(integer = 2, fraction = 2)
    
    private BigDecimal calcio;

    /**
     * 2.5 a 4.8 mg/dl
     */
    @NotNull
    @Column(name = "fosforo")
    @Min(0L)
    @Max(99L)
    @Digits(integer = 2, fraction = 2)
    
    private BigDecimal fosforo;

    /**
     * 1.58 a 2.55 mg/dl
     */
    @NotNull
    @Column(name = "magnesio")
    @Min(0L)
    @Max(99L)
    @Digits(integer = 2, fraction = 2)
    
    private BigDecimal magnesio;

    /**
     * 33 a 193 ug/dl
     */
    @NotNull
    @Column(name = "hierro")
    @Min(0L)
    @Max(99L)
    @Digits(integer = 2, fraction = 2)
    
    private BigDecimal hierro;

    /**
     * 136 a 150 mEq/L
     */
    @NotNull
    @Column(name = "sodio")
    @Min(0L)
    @Max(999L)
    @Digits(integer = 3, fraction = 2)
    
    private BigDecimal sodio;

    /**
     * 3.5 a 5.5 mEq/L
     */
    @NotNull
    @Column(name = "potasio")
    @Min(0L)
    @Max(999L)
    @Digits(integer = 3, fraction = 2)
    
    private BigDecimal potasio;

    /**
     * 95 a 115 mEq/L
     */
    @NotNull
    @Column(name = "cloro")
    @Min(0L)
    @Max(999L)
    @Digits(integer = 3, fraction = 2)
    
    private BigDecimal cloro;
}
