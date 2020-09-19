package com.soja.web;
import com.soja.domain.Persona;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.controller.annotations.responses.json.RooJSON;

/**
 * = PersonaeItemJsonController
 TODO Auto-generated class documentation
 *
 */
@RooController(entity = Persona.class, pathPrefix = "/api", type = ControllerType.ITEM)
@RooJSON
public class PersonaeItemJsonController {
}
