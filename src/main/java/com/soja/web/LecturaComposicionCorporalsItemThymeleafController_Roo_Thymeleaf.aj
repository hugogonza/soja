// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.soja.web;

import com.soja.domain.LecturaComposicionCorporal;
import com.soja.service.api.LecturaComposicionCorporalService;
import com.soja.web.LecturaComposicionCorporalsCollectionThymeleafController;
import com.soja.web.LecturaComposicionCorporalsItemThymeleafController;
import com.soja.web.LecturaComposicionCorporalsItemThymeleafLinkFactory;
import io.springlets.data.web.validation.GenericValidator;
import io.springlets.web.NotFoundException;
import io.springlets.web.mvc.util.ControllerMethodLinkBuilderFactory;
import io.springlets.web.mvc.util.MethodLinkBuilderFactory;
import io.springlets.web.mvc.util.concurrency.ConcurrencyCallback;
import io.springlets.web.mvc.util.concurrency.ConcurrencyManager;
import io.springlets.web.mvc.util.concurrency.ConcurrencyTemplate;
import java.util.Locale;
import javax.validation.Valid;
import org.joda.time.format.DateTimeFormat;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.http.HttpMethod;
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
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.util.UriComponents;

privileged aspect LecturaComposicionCorporalsItemThymeleafController_Roo_Thymeleaf {
    
    declare @type: LecturaComposicionCorporalsItemThymeleafController: @Controller;
    
    declare @type: LecturaComposicionCorporalsItemThymeleafController: @RequestMapping(value = "/lecturacomposicioncorporals/{lecturaComposicionCorporal}", name = "LecturaComposicionCorporalsItemThymeleafController", produces = MediaType.TEXT_HTML_VALUE);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private LecturaComposicionCorporalService LecturaComposicionCorporalsItemThymeleafController.lecturaComposicionCorporalService;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private MessageSource LecturaComposicionCorporalsItemThymeleafController.messageSource;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private MethodLinkBuilderFactory<LecturaComposicionCorporalsItemThymeleafController> LecturaComposicionCorporalsItemThymeleafController.itemLink;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private MethodLinkBuilderFactory<LecturaComposicionCorporalsCollectionThymeleafController> LecturaComposicionCorporalsItemThymeleafController.collectionLink;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private final ConcurrencyTemplate<LecturaComposicionCorporal> LecturaComposicionCorporalsItemThymeleafController.concurrencyTemplate = new ConcurrencyTemplate<LecturaComposicionCorporal>(this);
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param lecturaComposicionCorporalService
     * @param messageSource
     * @param linkBuilder
     */
    @Autowired
    public LecturaComposicionCorporalsItemThymeleafController.new(LecturaComposicionCorporalService lecturaComposicionCorporalService, MessageSource messageSource, ControllerMethodLinkBuilderFactory linkBuilder) {
        setLecturaComposicionCorporalService(lecturaComposicionCorporalService);
        setMessageSource(messageSource);
        setItemLink(linkBuilder.of(LecturaComposicionCorporalsItemThymeleafController.class));
        setCollectionLink(linkBuilder.of(LecturaComposicionCorporalsCollectionThymeleafController.class));
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @return LecturaComposicionCorporalService
     */
    public LecturaComposicionCorporalService LecturaComposicionCorporalsItemThymeleafController.getLecturaComposicionCorporalService() {
        return lecturaComposicionCorporalService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param lecturaComposicionCorporalService
     */
    public void LecturaComposicionCorporalsItemThymeleafController.setLecturaComposicionCorporalService(LecturaComposicionCorporalService lecturaComposicionCorporalService) {
        this.lecturaComposicionCorporalService = lecturaComposicionCorporalService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return MessageSource
     */
    public MessageSource LecturaComposicionCorporalsItemThymeleafController.getMessageSource() {
        return messageSource;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param messageSource
     */
    public void LecturaComposicionCorporalsItemThymeleafController.setMessageSource(MessageSource messageSource) {
        this.messageSource = messageSource;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return MethodLinkBuilderFactory
     */
    public MethodLinkBuilderFactory<LecturaComposicionCorporalsItemThymeleafController> LecturaComposicionCorporalsItemThymeleafController.getItemLink() {
        return itemLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param itemLink
     */
    public void LecturaComposicionCorporalsItemThymeleafController.setItemLink(MethodLinkBuilderFactory<LecturaComposicionCorporalsItemThymeleafController> itemLink) {
        this.itemLink = itemLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return MethodLinkBuilderFactory
     */
    public MethodLinkBuilderFactory<LecturaComposicionCorporalsCollectionThymeleafController> LecturaComposicionCorporalsItemThymeleafController.getCollectionLink() {
        return collectionLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param collectionLink
     */
    public void LecturaComposicionCorporalsItemThymeleafController.setCollectionLink(MethodLinkBuilderFactory<LecturaComposicionCorporalsCollectionThymeleafController> collectionLink) {
        this.collectionLink = collectionLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @param locale
     * @param method
     * @return LecturaComposicionCorporal
     */
    @ModelAttribute
    public LecturaComposicionCorporal LecturaComposicionCorporalsItemThymeleafController.getLecturaComposicionCorporal(@PathVariable("lecturaComposicionCorporal") Long id, Locale locale, HttpMethod method) {
        LecturaComposicionCorporal lecturaComposicionCorporal = null;
        if (HttpMethod.PUT.equals(method)) {
            lecturaComposicionCorporal = lecturaComposicionCorporalService.findOneForUpdate(id);
        } else {
            lecturaComposicionCorporal = lecturaComposicionCorporalService.findOne(id);
        }
        
        if (lecturaComposicionCorporal == null) {
            String message = messageSource.getMessage("error_NotFound", new Object[] {"LecturaComposicionCorporal", id}, "The record couldn't be found", locale);
            throw new NotFoundException(message);
        }
        return lecturaComposicionCorporal;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param lecturaComposicionCorporal
     * @param model
     * @return ModelAndView
     */
    @GetMapping(name = "show")
    public ModelAndView LecturaComposicionCorporalsItemThymeleafController.show(@ModelAttribute LecturaComposicionCorporal lecturaComposicionCorporal, Model model) {
        model.addAttribute("lecturaComposicionCorporal", lecturaComposicionCorporal);
        return new ModelAndView("lecturacomposicioncorporals/show");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param lecturaComposicionCorporal
     * @param model
     * @return ModelAndView
     */
    @GetMapping(value = "/inline", name = "showInline")
    public ModelAndView LecturaComposicionCorporalsItemThymeleafController.showInline(@ModelAttribute LecturaComposicionCorporal lecturaComposicionCorporal, Model model) {
        model.addAttribute("lecturaComposicionCorporal", lecturaComposicionCorporal);
        return new ModelAndView("lecturacomposicioncorporals/showInline :: inline-content");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param model
     */
    public void LecturaComposicionCorporalsItemThymeleafController.populateFormats(Model model) {
        model.addAttribute("application_locale", LocaleContextHolder.getLocale().getLanguage());
        model.addAttribute("fechaHoraEvaluacion_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param model
     */
    public void LecturaComposicionCorporalsItemThymeleafController.populateForm(Model model) {
        populateFormats(model);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return ConcurrencyTemplate
     */
    public ConcurrencyTemplate<LecturaComposicionCorporal> LecturaComposicionCorporalsItemThymeleafController.getConcurrencyTemplate() {
        return concurrencyTemplate;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return String
     */
    public String LecturaComposicionCorporalsItemThymeleafController.getModelName() {
        return "lecturaComposicionCorporal";
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return String
     */
    public String LecturaComposicionCorporalsItemThymeleafController.getEditViewPath() {
        return "lecturacomposicioncorporals/edit";
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param record
     * @return Integer
     */
    public Integer LecturaComposicionCorporalsItemThymeleafController.getLastVersion(LecturaComposicionCorporal record) {
        Long versionValue = getLecturaComposicionCorporalService().findOne(record.getId()).getVersion();
        return versionValue != null ? versionValue.intValue() : null;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entity
     * @param model
     * @return ModelAndView
     */
    public ModelAndView LecturaComposicionCorporalsItemThymeleafController.populateAndGetFormView(LecturaComposicionCorporal entity, Model model) {
        // Populate the form with all the necessary elements
        populateForm(model);
        // Add concurrency attribute to the model to show the concurrency form
        // in the current edit view
        model.addAttribute("concurrency", true);
        // Add the new version value to the model.
        model.addAttribute("newVersion", getLastVersion(entity));
        // Add the current pet values to maintain the values introduced by the user
        model.addAttribute(getModelName(), entity);
        // Return the edit view path
        return new org.springframework.web.servlet.ModelAndView(getEditViewPath(), model.asMap());
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param binder
     */
    @InitBinder("lecturaComposicionCorporal")
    public void LecturaComposicionCorporalsItemThymeleafController.initLecturaComposicionCorporalBinder(WebDataBinder binder) {
        binder.setDisallowedFields("id");
        // Register validators
        GenericValidator validator = new GenericValidator(LecturaComposicionCorporal.class, getLecturaComposicionCorporalService());
        binder.addValidators(validator);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param lecturaComposicionCorporal
     * @param model
     * @return ModelAndView
     */
    @GetMapping(value = "/edit-form", name = "editForm")
    public ModelAndView LecturaComposicionCorporalsItemThymeleafController.editForm(@ModelAttribute LecturaComposicionCorporal lecturaComposicionCorporal, Model model) {
        populateForm(model);
        
        model.addAttribute("lecturaComposicionCorporal", lecturaComposicionCorporal);
        return new ModelAndView("lecturacomposicioncorporals/edit");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param lecturaComposicionCorporal
     * @param result
     * @param version
     * @param concurrencyControl
     * @param model
     * @return ModelAndView
     */
    @PutMapping(name = "update")
    public ModelAndView LecturaComposicionCorporalsItemThymeleafController.update(@Valid @ModelAttribute LecturaComposicionCorporal lecturaComposicionCorporal, BindingResult result, @RequestParam("version") Long version, @RequestParam(value = "concurrency", required = false, defaultValue = "") String concurrencyControl, Model model) {
        // Check if provided form contain errors
        if (result.hasErrors()) {
            populateForm(model);
            return new ModelAndView(getEditViewPath());
        }
        // Create Concurrency Spring Template to ensure that the following code will manage the
        // possible concurrency exceptions that appears and execute the provided coded inside the Spring template.
        // If some concurrency exception appears the template will manage it.
        LecturaComposicionCorporal savedLecturaComposicionCorporal = getConcurrencyTemplate().execute(lecturaComposicionCorporal, model, new ConcurrencyCallback<LecturaComposicionCorporal>() {
            @Override
            public LecturaComposicionCorporal doInConcurrency(LecturaComposicionCorporal lecturaComposicionCorporal) throws Exception {
                return getLecturaComposicionCorporalService().save(lecturaComposicionCorporal);
            }
        });
        UriComponents showURI = getItemLink().to(LecturaComposicionCorporalsItemThymeleafLinkFactory.SHOW).with("lecturaComposicionCorporal", savedLecturaComposicionCorporal.getId()).toUri();
        return new ModelAndView("redirect:" + showURI.toUriString());
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param lecturaComposicionCorporal
     * @return ResponseEntity
     */
    @ResponseBody
    @DeleteMapping(name = "delete")
    public ResponseEntity<?> LecturaComposicionCorporalsItemThymeleafController.delete(@ModelAttribute LecturaComposicionCorporal lecturaComposicionCorporal) {
        getLecturaComposicionCorporalService().delete(lecturaComposicionCorporal);
        return ResponseEntity.ok().build();
    }
    
}
