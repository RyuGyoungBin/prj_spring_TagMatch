package com.mycompany.app.korea;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class MegaController {
	
	
	@RequestMapping("/indexUsrTicket")
	public String indexUsrTicket() {
		return "/usr/infra/index/indexUsrTicket";
	}
	
	
	@RequestMapping("/indexUsrTicketDetailInfo")
	public String indexUsrTiketMoreInformation() {
		return "/usr/infra/index/indexUsrTicketDetailInfo";
	}
	
	@RequestMapping("/detailInfo01")
	public String detaillnfo01() {
		return "/usr/infra/index/detailInfo01";
	}
	
	@RequestMapping("/indexUsrLogin")
	public String indexUsrLogin() {
		return "/usr/infra/index/indexUsrLogin";
	}
	@RequestMapping("/indexUsrSginUp")
	public String indexUsrSignUp() {
		return "/usr/infra/index/indexUsrSginUp";
	}

	@RequestMapping("/indexUsrMypage")
	public String indexUsrMypage() {
		return "/usr/infra/index/indexUsrMypage";
	}
	
	

	



}
