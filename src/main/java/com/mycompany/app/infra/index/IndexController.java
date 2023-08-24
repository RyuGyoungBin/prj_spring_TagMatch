package com.mycompany.app.infra.index;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mycompany.app.train.Train;
import com.mycompany.app.train.TrainProc;

@Controller
public class IndexController {


	@RequestMapping ("/index")
	public String index() {
		
		return "/usr/infra/index/index";
	}
	
	@RequestMapping("/bookingUsrView")
	public String bookingUsr(Model model , Train train) throws Exception {
		TrainProc.train(model);
		TrainProc.trainStation(model,train);
		return "/usr/infra/index/bookingUsrView";
	}
	
	
	
	
	

}
 