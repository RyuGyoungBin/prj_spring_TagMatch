package com.mycompany.app.song;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SongController {
	
	@RequestMapping ("/hotel02")
	public String hotel02() {
		
		return "/usr/infra/subpages/hotel02";
	}
	
	@RequestMapping ("/pension02")
	public String pension02() {
		
		return "/usr/infra/subpages/pension02";
	}
	
	@RequestMapping ("/condo02")
	public String condo02() {
		
		return "/usr/infra/subpages/condo02";
	}
	
	@RequestMapping ("/roomDetailInfo02")
	public String roomDetailInfo02() {
		
		return "/usr/infra/subpages/roomDetailInfo02";
	}

	@RequestMapping ("/roomDetailInfo03")
	public String roomDetailInfo03() {
		
		return "/usr/infra/subpages/roomDetailInfo03";
	}
	
	@RequestMapping ("/registerUsrForm")
	public String registerUsrForm() {
		return "/usr/infra/member/registerUsrForm";
	}


}
