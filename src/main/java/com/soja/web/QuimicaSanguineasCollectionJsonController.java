package com.soja.web;
import com.soja.domain.QuimicaSanguinea;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.controller.annotations.responses.json.RooJSON;

/**
 * = QuimicaSanguineasCollectionJsonController
 TODO Auto-generated class documentation
 *
 */
@RooController(entity = QuimicaSanguinea.class, pathPrefix = "/api", type = ControllerType.COLLECTION)
@RooJSON
public class QuimicaSanguineasCollectionJsonController {
}
