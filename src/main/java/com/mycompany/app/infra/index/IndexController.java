package com.mycompany.app.infra.index;

import org.springframework.web.bind.annotation.RequestMapping;

public class IndexController {


	@RequestMapping ("/index")
	public String index() {
		
		return "/usr/infra/index/index";
	}

}
