package com.mycompany.app.home;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class HomeController {

	@RequestMapping("/home")
	public String home() {
		System.out.println("asdf");
		return "/home";
	}	
		@RequestMapping("/login")
		public String login() {
			return "/usr/infra/index/indexUsrView";
	}
		@RequestMapping("/memberShip")
		public String memberShip() {
			return "/usr/infra/index/indexUsrSingUp";
		}
}
