package com.soja.web;
import com.soja.domain.LecturaComposicionCorporal;
import io.springlets.web.mvc.util.concurrency.ConcurrencyManager;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.thymeleaf.annotations.RooThymeleaf;

/**
 * = LecturaComposicionCorporalsItemThymeleafController
 TODO Auto-generated class documentation
 *
 */
@RooController(entity = LecturaComposicionCorporal.class, type = ControllerType.ITEM)
@RooThymeleaf
public class LecturaComposicionCorporalsItemThymeleafController implements ConcurrencyManager<LecturaComposicionCorporal> {
}
