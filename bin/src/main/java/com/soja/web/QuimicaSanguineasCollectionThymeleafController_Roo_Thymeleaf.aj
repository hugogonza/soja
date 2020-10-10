// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.soja.web;

import ar.com.fdvs.dj.core.DynamicJasperHelper;
import ar.com.fdvs.dj.core.layout.ClassicLayoutManager;
import ar.com.fdvs.dj.domain.builders.ColumnBuilderException;
import ar.com.fdvs.dj.domain.builders.FastReportBuilder;
import com.soja.domain.QuimicaSanguinea;
import com.soja.service.api.QuimicaSanguineaService;
import com.soja.web.QuimicaSanguineasCollectionThymeleafController;
import com.soja.web.QuimicaSanguineasItemThymeleafController;
import com.soja.web.QuimicaSanguineasItemThymeleafLinkFactory;
import com.soja.web.reports.ExportingErrorException;
import com.soja.web.reports.JasperReportsCsvExporter;
import com.soja.web.reports.JasperReportsExporter;
import com.soja.web.reports.JasperReportsPdfExporter;
import com.soja.web.reports.JasperReportsXlsExporter;
import io.springlets.data.domain.GlobalSearch;
import io.springlets.data.web.datatables.ConvertedDatatablesData;
import io.springlets.data.web.datatables.Datatables;
import io.springlets.data.web.datatables.DatatablesColumns;
import io.springlets.data.web.datatables.DatatablesPageable;
import io.springlets.data.web.select2.Select2DataSupport;
import io.springlets.data.web.select2.Select2DataWithConversion;
import io.springlets.data.web.validation.GenericValidator;
import io.springlets.web.mvc.util.ControllerMethodLinkBuilderFactory;
import io.springlets.web.mvc.util.MethodLinkBuilderFactory;
import java.io.IOException;
import java.math.BigDecimal;
import java.util.Calendar;
import java.util.Collection;
import java.util.List;
import java.util.Locale;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;
import net.sf.jasperreports.engine.JRDataSource;
import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.data.JRBeanCollectionDataSource;
import org.apache.commons.lang3.StringUtils;
import org.joda.time.format.DateTimeFormat;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.core.convert.ConversionService;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.web.PageableDefault;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.util.UriComponents;

privileged aspect QuimicaSanguineasCollectionThymeleafController_Roo_Thymeleaf {
    
    declare @type: QuimicaSanguineasCollectionThymeleafController: @Controller;
    
    declare @type: QuimicaSanguineasCollectionThymeleafController: @RequestMapping(value = "/quimicasanguineas", name = "QuimicaSanguineasCollectionThymeleafController", produces = MediaType.TEXT_HTML_VALUE);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private QuimicaSanguineaService QuimicaSanguineasCollectionThymeleafController.quimicaSanguineaService;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private MessageSource QuimicaSanguineasCollectionThymeleafController.messageSource;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private MethodLinkBuilderFactory<QuimicaSanguineasItemThymeleafController> QuimicaSanguineasCollectionThymeleafController.itemLink;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private MethodLinkBuilderFactory<QuimicaSanguineasCollectionThymeleafController> QuimicaSanguineasCollectionThymeleafController.collectionLink;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private ConversionService QuimicaSanguineasCollectionThymeleafController.conversionService;
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param quimicaSanguineaService
     * @param conversionService
     * @param messageSource
     * @param linkBuilder
     */
    @Autowired
    public QuimicaSanguineasCollectionThymeleafController.new(QuimicaSanguineaService quimicaSanguineaService, ConversionService conversionService, MessageSource messageSource, ControllerMethodLinkBuilderFactory linkBuilder) {
        setQuimicaSanguineaService(quimicaSanguineaService);
        setConversionService(conversionService);
        setMessageSource(messageSource);
        setItemLink(linkBuilder.of(QuimicaSanguineasItemThymeleafController.class));
        setCollectionLink(linkBuilder.of(QuimicaSanguineasCollectionThymeleafController.class));
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @return QuimicaSanguineaService
     */
    public QuimicaSanguineaService QuimicaSanguineasCollectionThymeleafController.getQuimicaSanguineaService() {
        return quimicaSanguineaService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param quimicaSanguineaService
     */
    public void QuimicaSanguineasCollectionThymeleafController.setQuimicaSanguineaService(QuimicaSanguineaService quimicaSanguineaService) {
        this.quimicaSanguineaService = quimicaSanguineaService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return MessageSource
     */
    public MessageSource QuimicaSanguineasCollectionThymeleafController.getMessageSource() {
        return messageSource;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param messageSource
     */
    public void QuimicaSanguineasCollectionThymeleafController.setMessageSource(MessageSource messageSource) {
        this.messageSource = messageSource;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return MethodLinkBuilderFactory
     */
    public MethodLinkBuilderFactory<QuimicaSanguineasItemThymeleafController> QuimicaSanguineasCollectionThymeleafController.getItemLink() {
        return itemLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param itemLink
     */
    public void QuimicaSanguineasCollectionThymeleafController.setItemLink(MethodLinkBuilderFactory<QuimicaSanguineasItemThymeleafController> itemLink) {
        this.itemLink = itemLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return MethodLinkBuilderFactory
     */
    public MethodLinkBuilderFactory<QuimicaSanguineasCollectionThymeleafController> QuimicaSanguineasCollectionThymeleafController.getCollectionLink() {
        return collectionLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param collectionLink
     */
    public void QuimicaSanguineasCollectionThymeleafController.setCollectionLink(MethodLinkBuilderFactory<QuimicaSanguineasCollectionThymeleafController> collectionLink) {
        this.collectionLink = collectionLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return ConversionService
     */
    public ConversionService QuimicaSanguineasCollectionThymeleafController.getConversionService() {
        return conversionService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param conversionService
     */
    public void QuimicaSanguineasCollectionThymeleafController.setConversionService(ConversionService conversionService) {
        this.conversionService = conversionService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param model
     * @return ModelAndView
     */
    @GetMapping(name = "list")
    public ModelAndView QuimicaSanguineasCollectionThymeleafController.list(Model model) {
        return new ModelAndView("quimicasanguineas/list");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param datatablesColumns
     * @param search
     * @param pageable
     * @param draw
     * @return ResponseEntity
     */
    @GetMapping(produces = Datatables.MEDIA_TYPE, name = "datatables", value = "/dt")
    @ResponseBody
    public ResponseEntity<ConvertedDatatablesData<QuimicaSanguinea>> QuimicaSanguineasCollectionThymeleafController.datatables(DatatablesColumns datatablesColumns, GlobalSearch search, DatatablesPageable pageable, @RequestParam("draw") Integer draw) {
        Page<QuimicaSanguinea> quimicaSanguineas = getQuimicaSanguineaService().findAll(search, pageable);
        long totalQuimicaSanguineasCount = quimicaSanguineas.getTotalElements();
        if (search != null && StringUtils.isNotBlank(search.getText())) {
            totalQuimicaSanguineasCount = getQuimicaSanguineaService().count();
        }
        ConvertedDatatablesData<QuimicaSanguinea> datatablesData = new ConvertedDatatablesData<QuimicaSanguinea>(quimicaSanguineas, totalQuimicaSanguineasCount, draw, getConversionService(), datatablesColumns);
        return ResponseEntity.ok(datatablesData);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @param datatablesColumns
     * @param search
     * @param pageable
     * @param draw
     * @return ResponseEntity
     */
    @GetMapping(produces = Datatables.MEDIA_TYPE, name = "datatablesByIdsIn", value = "/dtByIdsIn")
    @ResponseBody
    public ResponseEntity<ConvertedDatatablesData<QuimicaSanguinea>> QuimicaSanguineasCollectionThymeleafController.datatablesByIdsIn(@RequestParam("ids") List<Long> ids, DatatablesColumns datatablesColumns, GlobalSearch search, DatatablesPageable pageable, @RequestParam("draw") Integer draw) {
        Page<QuimicaSanguinea> quimicaSanguineas = getQuimicaSanguineaService().findAllByIdsIn(ids, search, pageable);
        long totalQuimicaSanguineasCount = quimicaSanguineas.getTotalElements();
        if (search != null && StringUtils.isNotBlank(search.getText())) {
            totalQuimicaSanguineasCount = getQuimicaSanguineaService().count();
        }
        ConvertedDatatablesData<QuimicaSanguinea> datatablesData = new ConvertedDatatablesData<QuimicaSanguinea>(quimicaSanguineas, totalQuimicaSanguineasCount, draw, getConversionService(), datatablesColumns);
        return ResponseEntity.ok(datatablesData);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param search
     * @param pageable
     * @param locale
     * @return ResponseEntity
     */
    @GetMapping(produces = MediaType.APPLICATION_JSON_VALUE, name = "select2", value = "/s2")
    @ResponseBody
    public ResponseEntity<Select2DataSupport<QuimicaSanguinea>> QuimicaSanguineasCollectionThymeleafController.select2(GlobalSearch search, Pageable pageable, Locale locale) {
        Page<QuimicaSanguinea> quimicaSanguineas = getQuimicaSanguineaService().findAll(search, pageable);
        String idExpression = "#{id}";
        Select2DataSupport<QuimicaSanguinea> select2Data = new Select2DataWithConversion<QuimicaSanguinea>(quimicaSanguineas, idExpression, getConversionService());
        return ResponseEntity.ok(select2Data);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param binder
     */
    @InitBinder("quimicaSanguinea")
    public void QuimicaSanguineasCollectionThymeleafController.initQuimicaSanguineaBinder(WebDataBinder binder) {
        binder.setDisallowedFields("id");
        // Register validators
        GenericValidator validator = new GenericValidator(QuimicaSanguinea.class, getQuimicaSanguineaService());
        binder.addValidators(validator);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param model
     */
    public void QuimicaSanguineasCollectionThymeleafController.populateFormats(Model model) {
        model.addAttribute("application_locale", LocaleContextHolder.getLocale().getLanguage());
        model.addAttribute("fecha_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param model
     */
    public void QuimicaSanguineasCollectionThymeleafController.populateForm(Model model) {
        populateFormats(model);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param quimicaSanguinea
     * @param result
     * @param model
     * @return ModelAndView
     */
    @PostMapping(name = "create")
    public ModelAndView QuimicaSanguineasCollectionThymeleafController.create(@Valid @ModelAttribute QuimicaSanguinea quimicaSanguinea, BindingResult result, Model model) {
        if (result.hasErrors()) {
            populateForm(model);
            
            return new ModelAndView("quimicasanguineas/create");
        }
        QuimicaSanguinea newQuimicaSanguinea = getQuimicaSanguineaService().save(quimicaSanguinea);
        UriComponents showURI = getItemLink().to(QuimicaSanguineasItemThymeleafLinkFactory.SHOW).with("quimicaSanguinea", newQuimicaSanguinea.getId()).toUri();
        return new ModelAndView("redirect:" + showURI.toUriString());
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param model
     * @return ModelAndView
     */
    @GetMapping(value = "/create-form", name = "createForm")
    public ModelAndView QuimicaSanguineasCollectionThymeleafController.createForm(Model model) {
        populateForm(model);
        
        model.addAttribute("quimicaSanguinea", new QuimicaSanguinea());
        return new ModelAndView("quimicasanguineas/create");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @return ResponseEntity
     */
    @DeleteMapping(value = "/batch/{ids}", name = "deleteBatch")
    @ResponseBody
    public ResponseEntity<?> QuimicaSanguineasCollectionThymeleafController.deleteBatch(@PathVariable("ids") Collection<Long> ids) {
        
        getQuimicaSanguineaService().delete(ids);
        
        return ResponseEntity.ok().build();
    }
    
    /**
     * Method that obtains the filtered and ordered records using the Datatables information and 
     * export them to a new report file. (It ignores the current pagination).
     * 
     * To generate the report file it uses the `DynamicJasper` library
     * (http://dynamicjasper.com). This library allows developers to generate reports dynamically
     * without use an specific template to each entity.
     * 
     * To customize the appearance of ALL generated reports, you could customize the 
     * "export_default.jrxml" template located in "src/main/resources/templates/reports/". However,
     * if you want to customize the appearance of this specific report, you could create a new
     * ".jrxml" file and provide it to the library replacing the `builder.setTemplateFile();`
     * operation used in this implementation.
     * 
     * @param search GlobalSearch that contains the filter provided by the Datatables component.
     * @param pageable Pageable that contains the Sort info provided by the Datatabes component.
     * @param datatablesColumns Columns displayed in the Datatables component.
     * @param response The HttpServletResponse.
     * @param exporter An specific JasperReportsExporter to be used during export process.
     * @param fileName The final filename to use.
     * @param locale The current Locale in the view context.
     */
    public void QuimicaSanguineasCollectionThymeleafController.export(GlobalSearch search, @PageableDefault(size = 2147483647) Pageable pageable, String[] datatablesColumns, HttpServletResponse response, JasperReportsExporter exporter, String fileName, Locale locale) {
        // Obtain the filtered and ordered elements
        Page<QuimicaSanguinea> quimicaSanguineas = getQuimicaSanguineaService().findAll(search, pageable);
        
        // Prevent generation of reports with empty data
        if (quimicaSanguineas == null || quimicaSanguineas.getContent().isEmpty()) {
            return;
        }
        
        // Creates a new ReportBuilder using DynamicJasper library
        FastReportBuilder builder = new FastReportBuilder();
        
        // IMPORTANT: By default, this application uses "export_default.jrxml"
        // to generate all reports. If you want to customize this specific report,
        // create a new ".jrxml" template and customize it. (Take in account the 
        // DynamicJasper restrictions: 
        // http://dynamicjasper.com/2010/10/06/how-to-use-custom-jrxml-templates/)
        builder.setTemplateFile("templates/reports/export_default.jrxml");
        
        // The generated report will display the same columns as the Datatables component.
        // However, this is not mandatory. You could edit this code if you want to ignore
        // the provided datatablesColumns
        if (datatablesColumns != null) {
            for (String column : datatablesColumns) {
                // Delegates in addColumnToReportBuilder to include each datatables column
                // to the report builder
                addColumnToReportBuilder(column, builder, locale, fileName);
            }
        }
        
        // This property resizes the columns to use full width page.
        // Set false value if you want to use the specific width of each column.
        builder.setUseFullPageWidth(true);
        
        // Creates a new Jasper Reports Datasource using the obtained elements
        JRDataSource ds = new JRBeanCollectionDataSource(quimicaSanguineas.getContent());
        
        // Generates the JasperReport
        JasperPrint jp;
        try {
            jp = DynamicJasperHelper.generateJasperPrint(builder.build(), new ClassicLayoutManager(), ds);
        }
        catch (JRException e) {
            String errorMessage = getMessageSource().getMessage("error_exportingErrorException", 
                new Object[] {StringUtils.substringAfterLast(fileName, ".").toUpperCase()}, 
                String.format("Error while exporting data to StringUtils file", StringUtils.
                    substringAfterLast(fileName, ".").toUpperCase()), locale);
            throw new ExportingErrorException(errorMessage);
        }
        
        // Converts the JaspertReport element to a ByteArrayOutputStream and
        // write it into the response stream using the provided JasperReportExporter
        try {
            exporter.export(jp, fileName, response);
        }
        catch (JRException e) {
            String errorMessage = getMessageSource().getMessage("error_exportingErrorException", 
                new Object[] {StringUtils.substringAfterLast(fileName, ".").toUpperCase()}, 
                String.format("Error while exporting data to StringUtils file", StringUtils.
                    substringAfterLast(fileName, ".").toUpperCase()), locale);
            throw new ExportingErrorException(errorMessage);
        }
        catch (IOException e) {
            String errorMessage = getMessageSource().getMessage("error_exportingErrorException", 
                new Object[] {StringUtils.substringAfterLast(fileName, ".").toUpperCase()}, 
                String.format("Error while exporting data to StringUtils file", StringUtils.
                    substringAfterLast(fileName, ".").toUpperCase()), locale);
            throw new ExportingErrorException(errorMessage);
        }
    }
    
    /**
     * It delegates in the `export` method providing the necessary information
     * to generate a CSV report.
     * 
     * @param search The GlobalSearch that contains the filter provided by the Datatables component
     * @param pageable The Pageable that contains the Sort info provided by the Datatabes component
     * @param datatablesColumns The Columns displayed in the Datatables component
     * @param response The HttpServletResponse
     * @return ResponseEntity
     */
    @GetMapping(name = "exportCsv", value = "/export/csv")
    @ResponseBody
    public ResponseEntity<?> QuimicaSanguineasCollectionThymeleafController.exportCsv(GlobalSearch search, @PageableDefault(size = 2147483647) Pageable pageable, @RequestParam("datatablesColumns") String[] datatablesColumns, HttpServletResponse response, Locale locale) {
        export(search, pageable, datatablesColumns, response, new JasperReportsCsvExporter(), "quimicaSanguineas_report.csv", locale);
        return ResponseEntity.ok().build();
    }
    
    /**
     * It delegates in the `export` method providing the necessary information
     * to generate a PDF report.
     * 
     * @param search The GlobalSearch that contains the filter provided by the Datatables component
     * @param pageable The Pageable that contains the Sort info provided by the Datatabes component
     * @param datatablesColumns The Columns displayed in the Datatables component
     * @param response The HttpServletResponse
     * @return ResponseEntity
     */
    @GetMapping(name = "exportPdf", value = "/export/pdf")
    @ResponseBody
    public ResponseEntity<?> QuimicaSanguineasCollectionThymeleafController.exportPdf(GlobalSearch search, @PageableDefault(size = 2147483647) Pageable pageable, @RequestParam("datatablesColumns") String[] datatablesColumns, HttpServletResponse response, Locale locale) {
        export(search, pageable, datatablesColumns, response, new JasperReportsPdfExporter(), "quimicaSanguineas_report.pdf", locale);
        return ResponseEntity.ok().build();
    }
    
    /**
     * It delegates in the `export` method providing the necessary information
     * to generate a XLS report.
     * 
     * @param search The GlobalSearch that contains the filter provided by the Datatables component
     * @param pageable The Pageable that contains the Sort info provided by the Datatabes component
     * @param datatablesColumns The Columns displayed in the Datatables component
     * @param response The HttpServletResponse
     * @return ResponseEntity
     */
    @GetMapping(name = "exportXls", value = "/export/xls")
    @ResponseBody
    public ResponseEntity<?> QuimicaSanguineasCollectionThymeleafController.exportXls(GlobalSearch search, @PageableDefault(size = 2147483647) Pageable pageable, @RequestParam("datatablesColumns") String[] datatablesColumns, HttpServletResponse response, Locale locale) {
        export(search, pageable, datatablesColumns, response, new JasperReportsXlsExporter(), "quimicaSanguineas_report.xls", locale);
        return ResponseEntity.ok().build();
    }
    
    /**
     * This method contains all the entity fields that are able to be displayed in a 
     * report. The developer could add a new column to the report builder providing the 
     * field name and the builder where the new field will be added as column.
     * 
     * @param columnName the field name to show as column
     * @param builder The builder where the new field will be added as column.
     */
    public void QuimicaSanguineasCollectionThymeleafController.addColumnToReportBuilder(String columnName, FastReportBuilder builder, Locale locale, String fileName) {
        try {
        if (columnName.equals("id")) {
            builder.addColumn(getMessageSource().getMessage("label_quimicasanguinea_id", null, "Id", locale), "id", Long.class.getName(), 50);
        }
        else if (columnName.equals("version")) {
            builder.addColumn(getMessageSource().getMessage("label_quimicasanguinea_version", null, "Version", locale), "version", Long.class.getName(), 100);
        }
        else if (columnName.equals("fecha")) {
            builder.addColumn(getMessageSource().getMessage("label_quimicasanguinea_fecha", null, "Fecha", locale), "fecha", Calendar.class.getName(), 100);
        }
        else if (columnName.equals("glucosa")) {
            builder.addColumn(getMessageSource().getMessage("label_quimicasanguinea_glucosa", null, "Glucosa", locale), "glucosa", BigDecimal.class.getName(), 100);
        }
        else if (columnName.equals("amilasa")) {
            builder.addColumn(getMessageSource().getMessage("label_quimicasanguinea_amilasa", null, "Amilasa", locale), "amilasa", BigDecimal.class.getName(), 100);
        }
        else if (columnName.equals("lipasa")) {
            builder.addColumn(getMessageSource().getMessage("label_quimicasanguinea_lipasa", null, "Lipasa", locale), "lipasa", BigDecimal.class.getName(), 100);
        }
        else if (columnName.equals("creatinina")) {
            builder.addColumn(getMessageSource().getMessage("label_quimicasanguinea_creatinina", null, "Creatinina", locale), "creatinina", BigDecimal.class.getName(), 100);
        }
        else if (columnName.equals("urea")) {
            builder.addColumn(getMessageSource().getMessage("label_quimicasanguinea_urea", null, "Urea", locale), "urea", BigDecimal.class.getName(), 100);
        }
        else if (columnName.equals("nitrogeno_ureico")) {
            builder.addColumn(getMessageSource().getMessage("label_quimicasanguinea_nitrogeno_ureico", null, "Nitrogeno _ Ureico", locale), "nitrogeno_ureico", BigDecimal.class.getName(), 100);
        }
        else if (columnName.equals("acido_urico")) {
            builder.addColumn(getMessageSource().getMessage("label_quimicasanguinea_acido_urico", null, "Acido _ Urico", locale), "acido_urico", BigDecimal.class.getName(), 100);
        }
        else if (columnName.equals("bilirrubina_directa")) {
            builder.addColumn(getMessageSource().getMessage("label_quimicasanguinea_bilirrubina_directa", null, "Bilirrubina _ Directa", locale), "bilirrubina_directa", BigDecimal.class.getName(), 100);
        }
        else if (columnName.equals("bilirrubina_indirecta")) {
            builder.addColumn(getMessageSource().getMessage("label_quimicasanguinea_bilirrubina_indirecta", null, "Bilirrubina _ Indirecta", locale), "bilirrubina_indirecta", BigDecimal.class.getName(), 100);
        }
        else if (columnName.equals("bilirrubina_total")) {
            builder.addColumn(getMessageSource().getMessage("label_quimicasanguinea_bilirrubina_total", null, "Bilirrubina _ Total", locale), "bilirrubina_total", BigDecimal.class.getName(), 100);
        }
        else if (columnName.equals("aspartato_amino_transferasa_ast_tgo")) {
            builder.addColumn(getMessageSource().getMessage("label_quimicasanguinea_aspartato_amino_transferasa_ast_tgo", null, "Aspartato _ Amino _ Transferasa _ Ast _ Tgo", locale), "aspartato_amino_transferasa_ast_tgo", BigDecimal.class.getName(), 100);
        }
        else if (columnName.equals("alanina_amino_transferasa_alt_tgp")) {
            builder.addColumn(getMessageSource().getMessage("label_quimicasanguinea_alanina_amino_transferasa_alt_tgp", null, "Alanina _ Amino _ Transferasa _ Alt _ Tgp", locale), "alanina_amino_transferasa_alt_tgp", BigDecimal.class.getName(), 100);
        }
        else if (columnName.equals("fosfatasa_alcalina")) {
            builder.addColumn(getMessageSource().getMessage("label_quimicasanguinea_fosfatasa_alcalina", null, "Fosfatasa _ Alcalina", locale), "fosfatasa_alcalina", BigDecimal.class.getName(), 100);
        }
        else if (columnName.equals("proteinas_totales")) {
            builder.addColumn(getMessageSource().getMessage("label_quimicasanguinea_proteinas_totales", null, "Proteinas _ Totales", locale), "proteinas_totales", BigDecimal.class.getName(), 100);
        }
        else if (columnName.equals("albumina")) {
            builder.addColumn(getMessageSource().getMessage("label_quimicasanguinea_albumina", null, "Albumina", locale), "albumina", BigDecimal.class.getName(), 100);
        }
        else if (columnName.equals("globulina")) {
            builder.addColumn(getMessageSource().getMessage("label_quimicasanguinea_globulina", null, "Globulina", locale), "globulina", BigDecimal.class.getName(), 100);
        }
        else if (columnName.equals("relacion_a_g")) {
            builder.addColumn(getMessageSource().getMessage("label_quimicasanguinea_relacion_a_g", null, "Relacion _ A _ G", locale), "relacion_a_g", BigDecimal.class.getName(), 100);
        }
        else if (columnName.equals("gama_glutamil_transpeptidasa_ggt")) {
            builder.addColumn(getMessageSource().getMessage("label_quimicasanguinea_gama_glutamil_transpeptidasa_ggt", null, "Gama _ Glutamil _ Transpeptidasa _ Ggt", locale), "gama_glutamil_transpeptidasa_ggt", BigDecimal.class.getName(), 100);
        }
        else if (columnName.equals("lactato_deshidrogenasa_ldh")) {
            builder.addColumn(getMessageSource().getMessage("label_quimicasanguinea_lactato_deshidrogenasa_ldh", null, "Lactato _ Deshidrogenasa _ Ldh", locale), "lactato_deshidrogenasa_ldh", BigDecimal.class.getName(), 100);
        }
        else if (columnName.equals("triacilgliceroles")) {
            builder.addColumn(getMessageSource().getMessage("label_quimicasanguinea_triacilgliceroles", null, "Triacilgliceroles", locale), "triacilgliceroles", BigDecimal.class.getName(), 100);
        }
        else if (columnName.equals("colesterol")) {
            builder.addColumn(getMessageSource().getMessage("label_quimicasanguinea_colesterol", null, "Colesterol", locale), "colesterol", BigDecimal.class.getName(), 100);
        }
        else if (columnName.equals("hdl_colesterol")) {
            builder.addColumn(getMessageSource().getMessage("label_quimicasanguinea_hdl_colesterol", null, "Hdl _ Colesterol", locale), "hdl_colesterol", BigDecimal.class.getName(), 100);
        }
        else if (columnName.equals("ldl_colesterol")) {
            builder.addColumn(getMessageSource().getMessage("label_quimicasanguinea_ldl_colesterol", null, "Ldl _ Colesterol", locale), "ldl_colesterol", BigDecimal.class.getName(), 100);
        }
        else if (columnName.equals("vldl")) {
            builder.addColumn(getMessageSource().getMessage("label_quimicasanguinea_vldl", null, "Vldl", locale), "vldl", BigDecimal.class.getName(), 100);
        }
        else if (columnName.equals("lipidos_totales")) {
            builder.addColumn(getMessageSource().getMessage("label_quimicasanguinea_lipidos_totales", null, "Lipidos _ Totales", locale), "lipidos_totales", BigDecimal.class.getName(), 100);
        }
        else if (columnName.equals("indice_aterogenico")) {
            builder.addColumn(getMessageSource().getMessage("label_quimicasanguinea_indice_aterogenico", null, "Indice _ Aterogenico", locale), "indice_aterogenico", BigDecimal.class.getName(), 100);
        }
        else if (columnName.equals("calcio")) {
            builder.addColumn(getMessageSource().getMessage("label_quimicasanguinea_calcio", null, "Calcio", locale), "calcio", BigDecimal.class.getName(), 100);
        }
        else if (columnName.equals("fosforo")) {
            builder.addColumn(getMessageSource().getMessage("label_quimicasanguinea_fosforo", null, "Fosforo", locale), "fosforo", BigDecimal.class.getName(), 100);
        }
        else if (columnName.equals("magnesio")) {
            builder.addColumn(getMessageSource().getMessage("label_quimicasanguinea_magnesio", null, "Magnesio", locale), "magnesio", BigDecimal.class.getName(), 100);
        }
        else if (columnName.equals("hierro")) {
            builder.addColumn(getMessageSource().getMessage("label_quimicasanguinea_hierro", null, "Hierro", locale), "hierro", BigDecimal.class.getName(), 100);
        }
        else if (columnName.equals("sodio")) {
            builder.addColumn(getMessageSource().getMessage("label_quimicasanguinea_sodio", null, "Sodio", locale), "sodio", BigDecimal.class.getName(), 100);
        }
        else if (columnName.equals("potasio")) {
            builder.addColumn(getMessageSource().getMessage("label_quimicasanguinea_potasio", null, "Potasio", locale), "potasio", BigDecimal.class.getName(), 100);
        }
        else if (columnName.equals("cloro")) {
            builder.addColumn(getMessageSource().getMessage("label_quimicasanguinea_cloro", null, "Cloro", locale), "cloro", BigDecimal.class.getName(), 100);
        }
        }
        catch (ColumnBuilderException e) {
            String errorMessage = getMessageSource().getMessage("error_exportingErrorException", 
                new Object[] {StringUtils.substringAfterLast(fileName, ".").toUpperCase()}, 
                String.format("Error while exporting data to StringUtils file", StringUtils.
                    substringAfterLast(fileName, ".").toUpperCase()), locale);
            throw new ExportingErrorException(errorMessage);
        }
        catch (ClassNotFoundException e) {
            String errorMessage = getMessageSource().getMessage("error_exportingErrorException", 
                new Object[] {StringUtils.substringAfterLast(fileName, ".").toUpperCase()}, 
                String.format("Error while exporting data to StringUtils file", StringUtils.
                    substringAfterLast(fileName, ".").toUpperCase()), locale);
            throw new ExportingErrorException(errorMessage);
        }
    }
    
}
