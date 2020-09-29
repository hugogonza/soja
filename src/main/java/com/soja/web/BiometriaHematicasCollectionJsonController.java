package com.soja.web;
import com.soja.domain.BiometriaHematica;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.controller.annotations.responses.json.RooJSON;

/**
 * = BiometriaHematicasCollectionJsonController
 TODO Auto-generated class documentation
 *
 */
@RooController(entity = BiometriaHematica.class, pathPrefix = "/api", type = ControllerType.COLLECTION)
@RooJSON
public class BiometriaHematicasCollectionJsonController {
}
