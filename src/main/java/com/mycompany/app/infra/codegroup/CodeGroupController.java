package com.mycompany.app.infra.codegroup;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CodeGroupController {
	@RequestMapping ("/codeGroupXdmList")
	public String codeGroupXdmList() {
		
		return "/xdm/infra/codegroup/codeGroupXdmList";
	}
	
}
