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
	
	@RequestMapping("/indexUsrSignUp")
	public String indexUsrSignUp() {
		return "/usr/infra/index/indexUsrSignUp";
	}

	@RequestMapping("/indexUsrMyPage")
	public String indexUsrMyPage() {
		return "/usr/infra/index/indexUsrMyPage";
	}

	



}
