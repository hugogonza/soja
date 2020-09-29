package com.soja.web;
import com.soja.domain.ExamenGeneralOrina;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.controller.annotations.responses.json.RooJSON;

/**
 * = ExamenGeneralOrinasCollectionJsonController
 TODO Auto-generated class documentation
 *
 */
@RooController(entity = ExamenGeneralOrina.class, pathPrefix = "/api", type = ControllerType.COLLECTION)
@RooJSON
public class ExamenGeneralOrinasCollectionJsonController {
}
