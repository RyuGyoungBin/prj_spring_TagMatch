package com.mycompany.app.song;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SongController {

	@RequestMapping ("/hotelSeoul")
	public String hotelSeoul() {
		
		
		return "/usr/infra/subpages/hotelSeoul";
	}
	
	
	@RequestMapping ("/pensionSeoul")
	public String pensionSeoul() {
		
		
		return "/usr/infra/subpages/pensionSeoul";
	}

}
