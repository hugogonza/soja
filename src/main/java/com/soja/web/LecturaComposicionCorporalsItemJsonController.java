package com.soja.web;
import com.soja.domain.LecturaComposicionCorporal;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.controller.annotations.responses.json.RooJSON;

/**
 * = LecturaComposicionCorporalsItemJsonController
 TODO Auto-generated class documentation
 *
 */
@RooController(entity = LecturaComposicionCorporal.class, pathPrefix = "/api", type = ControllerType.ITEM)
@RooJSON
public class LecturaComposicionCorporalsItemJsonController {
}
