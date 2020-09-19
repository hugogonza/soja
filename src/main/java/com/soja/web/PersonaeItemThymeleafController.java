package com.soja.web;
import com.soja.domain.Persona;
import io.springlets.web.mvc.util.concurrency.ConcurrencyManager;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.thymeleaf.annotations.RooThymeleaf;

/**
 * = PersonaeItemThymeleafController
 TODO Auto-generated class documentation
 *
 */
@RooController(entity = Persona.class, type = ControllerType.ITEM)
@RooThymeleaf
public class PersonaeItemThymeleafController implements ConcurrencyManager<Persona> {
}
