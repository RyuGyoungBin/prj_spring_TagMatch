package com.mycompany.app.gyoung;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class YouController {

	@RequestMapping("/bookingUsrView")
	public String bookingUsr() {
		return "/usr/infra/index/bookingUsrView";
	}
	
	@RequestMapping("/test")
	public String test() {
		return "/usr/infra/index/indexUsrTiket";
	}
}
