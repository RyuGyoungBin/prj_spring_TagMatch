package com.mycompany.app.korea;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class MegaController {

	@RequestMapping("/indexUsrTiket")
	public String indexUsrTiket() {
		return "/usr/infra/index/indexUsrTiket";
	}
	
	@RequestMapping("/login")
	public String login() {
		return "/usr/infra/index/indexUsrView";
	}
	@RequestMapping("/memberShip")
	public String memberShip() {
		return "/usr/infra/index/indexUsrSingUp";
	}
	
	@RequestMapping("indexUsrTiketMoreInformation")
	public String indexUsrTiketMoreInformation() {
		return "/usr/infra/index/indexUsrTiketMoreInformation";
	}
	

}
