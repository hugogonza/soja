package com.soja.web;
import com.soja.domain.BiometriaHematica;
import io.springlets.web.mvc.util.concurrency.ConcurrencyManager;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.thymeleaf.annotations.RooThymeleaf;

/**
 * = BiometriaHematicasItemThymeleafController
 TODO Auto-generated class documentation
 *
 */
@RooController(entity = BiometriaHematica.class, type = ControllerType.ITEM)
@RooThymeleaf
public class BiometriaHematicasItemThymeleafController implements ConcurrencyManager<BiometriaHematica> {
}
