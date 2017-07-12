package controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
@RequestMapping(value="principal")
@Controller
public class PrincipalController {
	
	@RequestMapping(value="principal", method=RequestMethod.GET)
	public String principal(ModelMap map){
		int act = 1;
		map.addAttribute("act", act);
		return "principal/index";
	}
}
