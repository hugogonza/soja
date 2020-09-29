package com.soja.web;
import com.soja.domain.QuimicaSanguinea;
import io.springlets.web.mvc.util.concurrency.ConcurrencyManager;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.thymeleaf.annotations.RooThymeleaf;

/**
 * = QuimicaSanguineasItemThymeleafController
 TODO Auto-generated class documentation
 *
 */
@RooController(entity = QuimicaSanguinea.class, type = ControllerType.ITEM)
@RooThymeleaf
public class QuimicaSanguineasItemThymeleafController implements ConcurrencyManager<QuimicaSanguinea> {
}
