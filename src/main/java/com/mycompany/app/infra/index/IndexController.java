package com.mycompany.app.infra.index;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {


	@RequestMapping ("/index")
	public String index() {
		
		return "/usr/infra/index/index";
	}

}
