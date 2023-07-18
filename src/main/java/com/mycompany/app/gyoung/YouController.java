package com.mycompany.app.gyoung;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class YouController {

	@RequestMapping("/indexUsrView")
	public String indexUsrView() {
		return "/usr/infra/index/indexUsrView";
	}
	
	@RequestMapping("/test")
	public String test() {
		return "/usr/infra/index/test";
	}
}
