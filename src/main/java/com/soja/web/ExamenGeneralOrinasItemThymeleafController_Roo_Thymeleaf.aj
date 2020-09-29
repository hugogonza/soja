// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.soja.web;

import com.soja.domain.ExamenGeneralOrina;
import com.soja.service.api.ExamenGeneralOrinaService;
import com.soja.web.ExamenGeneralOrinasCollectionThymeleafController;
import com.soja.web.ExamenGeneralOrinasItemThymeleafController;
import com.soja.web.ExamenGeneralOrinasItemThymeleafLinkFactory;
import io.springlets.data.web.validation.GenericValidator;
import io.springlets.web.NotFoundException;
import io.springlets.web.mvc.util.ControllerMethodLinkBuilderFactory;
import io.springlets.web.mvc.util.MethodLinkBuilderFactory;
import io.springlets.web.mvc.util.concurrency.ConcurrencyCallback;
import io.springlets.web.mvc.util.concurrency.ConcurrencyManager;
import io.springlets.web.mvc.util.concurrency.ConcurrencyTemplate;
import java.util.Locale;
import javax.validation.Valid;
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

privileged aspect ExamenGeneralOrinasItemThymeleafController_Roo_Thymeleaf {
    
    declare @type: ExamenGeneralOrinasItemThymeleafController: @Controller;
    
    declare @type: ExamenGeneralOrinasItemThymeleafController: @RequestMapping(value = "/examengeneralorinas/{examenGeneralOrina}", name = "ExamenGeneralOrinasItemThymeleafController", produces = MediaType.TEXT_HTML_VALUE);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private ExamenGeneralOrinaService ExamenGeneralOrinasItemThymeleafController.examenGeneralOrinaService;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private MessageSource ExamenGeneralOrinasItemThymeleafController.messageSource;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private MethodLinkBuilderFactory<ExamenGeneralOrinasItemThymeleafController> ExamenGeneralOrinasItemThymeleafController.itemLink;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private MethodLinkBuilderFactory<ExamenGeneralOrinasCollectionThymeleafController> ExamenGeneralOrinasItemThymeleafController.collectionLink;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private final ConcurrencyTemplate<ExamenGeneralOrina> ExamenGeneralOrinasItemThymeleafController.concurrencyTemplate = new ConcurrencyTemplate<ExamenGeneralOrina>(this);
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param examenGeneralOrinaService
     * @param messageSource
     * @param linkBuilder
     */
    @Autowired
    public ExamenGeneralOrinasItemThymeleafController.new(ExamenGeneralOrinaService examenGeneralOrinaService, MessageSource messageSource, ControllerMethodLinkBuilderFactory linkBuilder) {
        setExamenGeneralOrinaService(examenGeneralOrinaService);
        setMessageSource(messageSource);
        setItemLink(linkBuilder.of(ExamenGeneralOrinasItemThymeleafController.class));
        setCollectionLink(linkBuilder.of(ExamenGeneralOrinasCollectionThymeleafController.class));
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @return ExamenGeneralOrinaService
     */
    public ExamenGeneralOrinaService ExamenGeneralOrinasItemThymeleafController.getExamenGeneralOrinaService() {
        return examenGeneralOrinaService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param examenGeneralOrinaService
     */
    public void ExamenGeneralOrinasItemThymeleafController.setExamenGeneralOrinaService(ExamenGeneralOrinaService examenGeneralOrinaService) {
        this.examenGeneralOrinaService = examenGeneralOrinaService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return MessageSource
     */
    public MessageSource ExamenGeneralOrinasItemThymeleafController.getMessageSource() {
        return messageSource;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param messageSource
     */
    public void ExamenGeneralOrinasItemThymeleafController.setMessageSource(MessageSource messageSource) {
        this.messageSource = messageSource;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return MethodLinkBuilderFactory
     */
    public MethodLinkBuilderFactory<ExamenGeneralOrinasItemThymeleafController> ExamenGeneralOrinasItemThymeleafController.getItemLink() {
        return itemLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param itemLink
     */
    public void ExamenGeneralOrinasItemThymeleafController.setItemLink(MethodLinkBuilderFactory<ExamenGeneralOrinasItemThymeleafController> itemLink) {
        this.itemLink = itemLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return MethodLinkBuilderFactory
     */
    public MethodLinkBuilderFactory<ExamenGeneralOrinasCollectionThymeleafController> ExamenGeneralOrinasItemThymeleafController.getCollectionLink() {
        return collectionLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param collectionLink
     */
    public void ExamenGeneralOrinasItemThymeleafController.setCollectionLink(MethodLinkBuilderFactory<ExamenGeneralOrinasCollectionThymeleafController> collectionLink) {
        this.collectionLink = collectionLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @param locale
     * @param method
     * @return ExamenGeneralOrina
     */
    @ModelAttribute
    public ExamenGeneralOrina ExamenGeneralOrinasItemThymeleafController.getExamenGeneralOrina(@PathVariable("examenGeneralOrina") Long id, Locale locale, HttpMethod method) {
        ExamenGeneralOrina examenGeneralOrina = null;
        if (HttpMethod.PUT.equals(method)) {
            examenGeneralOrina = examenGeneralOrinaService.findOneForUpdate(id);
        } else {
            examenGeneralOrina = examenGeneralOrinaService.findOne(id);
        }
        
        if (examenGeneralOrina == null) {
            String message = messageSource.getMessage("error_NotFound", new Object[] {"ExamenGeneralOrina", id}, "The record couldn't be found", locale);
            throw new NotFoundException(message);
        }
        return examenGeneralOrina;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param examenGeneralOrina
     * @param model
     * @return ModelAndView
     */
    @GetMapping(name = "show")
    public ModelAndView ExamenGeneralOrinasItemThymeleafController.show(@ModelAttribute ExamenGeneralOrina examenGeneralOrina, Model model) {
        model.addAttribute("examenGeneralOrina", examenGeneralOrina);
        return new ModelAndView("examengeneralorinas/show");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param examenGeneralOrina
     * @param model
     * @return ModelAndView
     */
    @GetMapping(value = "/inline", name = "showInline")
    public ModelAndView ExamenGeneralOrinasItemThymeleafController.showInline(@ModelAttribute ExamenGeneralOrina examenGeneralOrina, Model model) {
        model.addAttribute("examenGeneralOrina", examenGeneralOrina);
        return new ModelAndView("examengeneralorinas/showInline :: inline-content");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param model
     */
    public void ExamenGeneralOrinasItemThymeleafController.populateFormats(Model model) {
        model.addAttribute("application_locale", LocaleContextHolder.getLocale().getLanguage());
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param model
     */
    public void ExamenGeneralOrinasItemThymeleafController.populateForm(Model model) {
        populateFormats(model);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return ConcurrencyTemplate
     */
    public ConcurrencyTemplate<ExamenGeneralOrina> ExamenGeneralOrinasItemThymeleafController.getConcurrencyTemplate() {
        return concurrencyTemplate;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return String
     */
    public String ExamenGeneralOrinasItemThymeleafController.getModelName() {
        return "examenGeneralOrina";
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return String
     */
    public String ExamenGeneralOrinasItemThymeleafController.getEditViewPath() {
        return "examengeneralorinas/edit";
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param record
     * @return Integer
     */
    public Integer ExamenGeneralOrinasItemThymeleafController.getLastVersion(ExamenGeneralOrina record) {
        Long versionValue = getExamenGeneralOrinaService().findOne(record.getId()).getVersion();
        return versionValue != null ? versionValue.intValue() : null;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entity
     * @param model
     * @return ModelAndView
     */
    public ModelAndView ExamenGeneralOrinasItemThymeleafController.populateAndGetFormView(ExamenGeneralOrina entity, Model model) {
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
    @InitBinder("examenGeneralOrina")
    public void ExamenGeneralOrinasItemThymeleafController.initExamenGeneralOrinaBinder(WebDataBinder binder) {
        binder.setDisallowedFields("id");
        // Register validators
        GenericValidator validator = new GenericValidator(ExamenGeneralOrina.class, getExamenGeneralOrinaService());
        binder.addValidators(validator);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param examenGeneralOrina
     * @param model
     * @return ModelAndView
     */
    @GetMapping(value = "/edit-form", name = "editForm")
    public ModelAndView ExamenGeneralOrinasItemThymeleafController.editForm(@ModelAttribute ExamenGeneralOrina examenGeneralOrina, Model model) {
        populateForm(model);
        
        model.addAttribute("examenGeneralOrina", examenGeneralOrina);
        return new ModelAndView("examengeneralorinas/edit");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param examenGeneralOrina
     * @param result
     * @param version
     * @param concurrencyControl
     * @param model
     * @return ModelAndView
     */
    @PutMapping(name = "update")
    public ModelAndView ExamenGeneralOrinasItemThymeleafController.update(@Valid @ModelAttribute ExamenGeneralOrina examenGeneralOrina, BindingResult result, @RequestParam("version") Long version, @RequestParam(value = "concurrency", required = false, defaultValue = "") String concurrencyControl, Model model) {
        // Check if provided form contain errors
        if (result.hasErrors()) {
            populateForm(model);
            return new ModelAndView(getEditViewPath());
        }
        // Create Concurrency Spring Template to ensure that the following code will manage the
        // possible concurrency exceptions that appears and execute the provided coded inside the Spring template.
        // If some concurrency exception appears the template will manage it.
        ExamenGeneralOrina savedExamenGeneralOrina = getConcurrencyTemplate().execute(examenGeneralOrina, model, new ConcurrencyCallback<ExamenGeneralOrina>() {
            @Override
            public ExamenGeneralOrina doInConcurrency(ExamenGeneralOrina examenGeneralOrina) throws Exception {
                return getExamenGeneralOrinaService().save(examenGeneralOrina);
            }
        });
        UriComponents showURI = getItemLink().to(ExamenGeneralOrinasItemThymeleafLinkFactory.SHOW).with("examenGeneralOrina", savedExamenGeneralOrina.getId()).toUri();
        return new ModelAndView("redirect:" + showURI.toUriString());
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param examenGeneralOrina
     * @return ResponseEntity
     */
    @ResponseBody
    @DeleteMapping(name = "delete")
    public ResponseEntity<?> ExamenGeneralOrinasItemThymeleafController.delete(@ModelAttribute ExamenGeneralOrina examenGeneralOrina) {
        getExamenGeneralOrinaService().delete(examenGeneralOrina);
        return ResponseEntity.ok().build();
    }
    
}
