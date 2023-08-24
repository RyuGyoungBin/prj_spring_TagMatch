package com.mycompany.app.infra.index;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mycompany.app.train.Train;
import com.mycompany.app.train.TrainProc;

@Controller
public class IndexController {


	@RequestMapping ("/index")
	public String index() {
		
		return "/usr/infra/index/index";
	}
	
	@RequestMapping("/bookingUsrView")
	public String bookingUsr(Model model) throws Exception {
		TrainProc.train(model);
		return "/usr/infra/index/bookingUsrView";
	}
	
	@RequestMapping("/trainStation")
	@ResponseBody
	public  Map<String, List<Train>> trainStation(Train train, Model model) throws Exception {
		 Map<String, List<Train>> resultMap = new HashMap<>();
		resultMap.put("rtTrain", TrainProc.trainStation(train, model));
		return resultMap;
	}
	
	
	
	
	

}
 