// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.soja.web;

import com.soja.Genero;
import com.soja.domain.Persona;
import com.soja.service.api.PersonaService;
import com.soja.web.PersonaeCollectionThymeleafController;
import com.soja.web.PersonaeItemThymeleafController;
import com.soja.web.PersonaeItemThymeleafLinkFactory;
import io.springlets.data.web.validation.GenericValidator;
import io.springlets.web.NotFoundException;
import io.springlets.web.mvc.util.ControllerMethodLinkBuilderFactory;
import io.springlets.web.mvc.util.MethodLinkBuilderFactory;
import io.springlets.web.mvc.util.concurrency.ConcurrencyCallback;
import io.springlets.web.mvc.util.concurrency.ConcurrencyManager;
import io.springlets.web.mvc.util.concurrency.ConcurrencyTemplate;
import java.util.Arrays;
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

privileged aspect PersonaeItemThymeleafController_Roo_Thymeleaf {
    
    declare @type: PersonaeItemThymeleafController: @Controller;
    
    declare @type: PersonaeItemThymeleafController: @RequestMapping(value = "/personae/{persona}", name = "PersonaeItemThymeleafController", produces = MediaType.TEXT_HTML_VALUE);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private PersonaService PersonaeItemThymeleafController.personaService;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private MessageSource PersonaeItemThymeleafController.messageSource;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private MethodLinkBuilderFactory<PersonaeItemThymeleafController> PersonaeItemThymeleafController.itemLink;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private MethodLinkBuilderFactory<PersonaeCollectionThymeleafController> PersonaeItemThymeleafController.collectionLink;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private final ConcurrencyTemplate<Persona> PersonaeItemThymeleafController.concurrencyTemplate = new ConcurrencyTemplate<Persona>(this);
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param personaService
     * @param messageSource
     * @param linkBuilder
     */
    @Autowired
    public PersonaeItemThymeleafController.new(PersonaService personaService, MessageSource messageSource, ControllerMethodLinkBuilderFactory linkBuilder) {
        setPersonaService(personaService);
        setMessageSource(messageSource);
        setItemLink(linkBuilder.of(PersonaeItemThymeleafController.class));
        setCollectionLink(linkBuilder.of(PersonaeCollectionThymeleafController.class));
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @return PersonaService
     */
    public PersonaService PersonaeItemThymeleafController.getPersonaService() {
        return personaService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param personaService
     */
    public void PersonaeItemThymeleafController.setPersonaService(PersonaService personaService) {
        this.personaService = personaService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return MessageSource
     */
    public MessageSource PersonaeItemThymeleafController.getMessageSource() {
        return messageSource;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param messageSource
     */
    public void PersonaeItemThymeleafController.setMessageSource(MessageSource messageSource) {
        this.messageSource = messageSource;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return MethodLinkBuilderFactory
     */
    public MethodLinkBuilderFactory<PersonaeItemThymeleafController> PersonaeItemThymeleafController.getItemLink() {
        return itemLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param itemLink
     */
    public void PersonaeItemThymeleafController.setItemLink(MethodLinkBuilderFactory<PersonaeItemThymeleafController> itemLink) {
        this.itemLink = itemLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return MethodLinkBuilderFactory
     */
    public MethodLinkBuilderFactory<PersonaeCollectionThymeleafController> PersonaeItemThymeleafController.getCollectionLink() {
        return collectionLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param collectionLink
     */
    public void PersonaeItemThymeleafController.setCollectionLink(MethodLinkBuilderFactory<PersonaeCollectionThymeleafController> collectionLink) {
        this.collectionLink = collectionLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @param locale
     * @param method
     * @return Persona
     */
    @ModelAttribute
    public Persona PersonaeItemThymeleafController.getPersona(@PathVariable("persona") Long id, Locale locale, HttpMethod method) {
        Persona persona = null;
        if (HttpMethod.PUT.equals(method)) {
            persona = personaService.findOneForUpdate(id);
        } else {
            persona = personaService.findOne(id);
        }
        
        if (persona == null) {
            String message = messageSource.getMessage("error_NotFound", new Object[] {"Persona", id}, "The record couldn't be found", locale);
            throw new NotFoundException(message);
        }
        return persona;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param persona
     * @param model
     * @return ModelAndView
     */
    @GetMapping(name = "show")
    public ModelAndView PersonaeItemThymeleafController.show(@ModelAttribute Persona persona, Model model) {
        model.addAttribute("persona", persona);
        return new ModelAndView("personae/show");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param persona
     * @param model
     * @return ModelAndView
     */
    @GetMapping(value = "/inline", name = "showInline")
    public ModelAndView PersonaeItemThymeleafController.showInline(@ModelAttribute Persona persona, Model model) {
        model.addAttribute("persona", persona);
        return new ModelAndView("personae/showInline :: inline-content");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param model
     */
    public void PersonaeItemThymeleafController.populateFormats(Model model) {
        model.addAttribute("application_locale", LocaleContextHolder.getLocale().getLanguage());
        model.addAttribute("fechaNacimiento_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param model
     */
    public void PersonaeItemThymeleafController.populateForm(Model model) {
        populateFormats(model);
        model.addAttribute("genero", Arrays.asList(Genero.values()));
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return ConcurrencyTemplate
     */
    public ConcurrencyTemplate<Persona> PersonaeItemThymeleafController.getConcurrencyTemplate() {
        return concurrencyTemplate;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return String
     */
    public String PersonaeItemThymeleafController.getModelName() {
        return "persona";
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return String
     */
    public String PersonaeItemThymeleafController.getEditViewPath() {
        return "personae/edit";
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param record
     * @return Integer
     */
    public Integer PersonaeItemThymeleafController.getLastVersion(Persona record) {
        Long versionValue = getPersonaService().findOne(record.getId()).getVersion();
        return versionValue != null ? versionValue.intValue() : null;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entity
     * @param model
     * @return ModelAndView
     */
    public ModelAndView PersonaeItemThymeleafController.populateAndGetFormView(Persona entity, Model model) {
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
    @InitBinder("persona")
    public void PersonaeItemThymeleafController.initPersonaBinder(WebDataBinder binder) {
        binder.setDisallowedFields("id");
        // Register validators
        GenericValidator validator = new GenericValidator(Persona.class, getPersonaService());
        binder.addValidators(validator);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param persona
     * @param model
     * @return ModelAndView
     */
    @GetMapping(value = "/edit-form", name = "editForm")
    public ModelAndView PersonaeItemThymeleafController.editForm(@ModelAttribute Persona persona, Model model) {
        populateForm(model);
        
        model.addAttribute("persona", persona);
        return new ModelAndView("personae/edit");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param persona
     * @param result
     * @param version
     * @param concurrencyControl
     * @param model
     * @return ModelAndView
     */
    @PutMapping(name = "update")
    public ModelAndView PersonaeItemThymeleafController.update(@Valid @ModelAttribute Persona persona, BindingResult result, @RequestParam("version") Long version, @RequestParam(value = "concurrency", required = false, defaultValue = "") String concurrencyControl, Model model) {
        // Check if provided form contain errors
        if (result.hasErrors()) {
            populateForm(model);
            return new ModelAndView(getEditViewPath());
        }
        // Create Concurrency Spring Template to ensure that the following code will manage the
        // possible concurrency exceptions that appears and execute the provided coded inside the Spring template.
        // If some concurrency exception appears the template will manage it.
        Persona savedPersona = getConcurrencyTemplate().execute(persona, model, new ConcurrencyCallback<Persona>() {
            @Override
            public Persona doInConcurrency(Persona persona) throws Exception {
                return getPersonaService().save(persona);
            }
        });
        UriComponents showURI = getItemLink().to(PersonaeItemThymeleafLinkFactory.SHOW).with("persona", savedPersona.getId()).toUri();
        return new ModelAndView("redirect:" + showURI.toUriString());
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param persona
     * @return ResponseEntity
     */
    @ResponseBody
    @DeleteMapping(name = "delete")
    public ResponseEntity<?> PersonaeItemThymeleafController.delete(@ModelAttribute Persona persona) {
        getPersonaService().delete(persona);
        return ResponseEntity.ok().build();
    }
    
}
