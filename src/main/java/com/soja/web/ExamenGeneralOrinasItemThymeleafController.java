package com.soja.web;
import com.soja.domain.ExamenGeneralOrina;
import io.springlets.web.mvc.util.concurrency.ConcurrencyManager;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.thymeleaf.annotations.RooThymeleaf;

/**
 * = ExamenGeneralOrinasItemThymeleafController
 TODO Auto-generated class documentation
 *
 */
@RooController(entity = ExamenGeneralOrina.class, type = ControllerType.ITEM)
@RooThymeleaf
public class ExamenGeneralOrinasItemThymeleafController implements ConcurrencyManager<ExamenGeneralOrina> {
}
