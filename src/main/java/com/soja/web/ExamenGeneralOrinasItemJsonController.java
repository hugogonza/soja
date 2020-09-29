package com.soja.web;
import com.soja.domain.ExamenGeneralOrina;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.controller.annotations.responses.json.RooJSON;

/**
 * = ExamenGeneralOrinasItemJsonController
 TODO Auto-generated class documentation
 *
 */
@RooController(entity = ExamenGeneralOrina.class, pathPrefix = "/api", type = ControllerType.ITEM)
@RooJSON
public class ExamenGeneralOrinasItemJsonController {
}
