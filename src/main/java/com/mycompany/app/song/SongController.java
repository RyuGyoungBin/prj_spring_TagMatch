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
	
	@RequestMapping ("/detailInfo01")
	public String detailInfo01() {
		
		return "/usr/infra/subpages/detailInfo01";
	}
	@RequestMapping ("/detailInfo02")
	public String detailInfo02() {
		
		return "/usr/infra/subpages/detailInfo02";
	}

	@RequestMapping ("/detailInfo03")
	public String detailInfo03() {
		
		return "/usr/infra/subpages/detailInfo03";
	}


}
