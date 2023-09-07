package com.mycompany.app.infra.index;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mycompany.app.hotel.Hotel;
import com.mycompany.app.hotel.HotelServiceImpl;
import com.mycompany.app.hotel.HotelVo;
import com.mycompany.app.spot.Spot;
import com.mycompany.app.spot.SpotServiceImpl;
import com.mycompany.app.spot.SpotVo;
import com.mycompany.app.train.Train;
import com.mycompany.app.train.TrainProc;

@Controller
public class IndexController {

	
	@Autowired
	HotelServiceImpl hotelService;
	@Autowired
	SpotServiceImpl spotService;

	

	@RequestMapping("/index")
	public String index(@ModelAttribute("vo") HotelVo vo, Model model) {
		
		vo.setParamsPaging(hotelService.selectOneCount(vo));
		
		if(vo.getTotalRows() > 0) {
			List<Hotel> list = hotelService.selectList(vo);
			List<Hotel> listUploaded = hotelService.selectUploaded(vo);
			

			model.addAttribute("list", list);
			model.addAttribute("listUploaded", listUploaded);
		} else {
//			by pass
		}
		
		return "/usr/infra/index/index";
	}
	
	@RequestMapping("/bookingUsrView")
	public String bookingUsr(Model model, HotelVo hotelvo, SpotVo spotvo) throws Exception {
		List<Hotel> hotel = hotelService.selectRating(hotelvo);
		List<Spot> spot = spotService.selectRating(spotvo);
		TrainProc.train(model);
		model.addAttribute("hotel", hotel);
		model.addAttribute("spot", spot);
		return "/usr/infra/index/bookingUsrView";
	}
	
	@RequestMapping("/spotModal")
	@ResponseBody
	public  Map<String, Spot> selectRatingOne(SpotVo vo){
		 Map<String, Spot> resultMap = new HashMap<>();
		 Spot spot = spotService.selectRatingOne(vo);
		resultMap.put("spot",spot);
		return resultMap;
	}
	
	@RequestMapping("/hotelModal")
	@ResponseBody
	public  Map<String, Map> selectRatingOne(HotelVo vo){
		
		 Map <String, Map> map = new HashMap<>();
		 Map<String, Hotel> resultMap = new HashMap<>();
		 Map<String, List<Hotel> > listHotel = new HashMap<>();
		 
		 
		 Hotel hotel = hotelService.selectRatingOne(vo);
		 List<Hotel> hotelRoom = hotelService.selectHotelRoom(vo); 
		 
		 resultMap.put("hotel",hotel);
		 listHotel.put("hotelRoom",hotelRoom);
		 
		 map.put("hotelMap" , resultMap);
		 map.put("hotelList" , listHotel);

		return map;
	}
	
	@RequestMapping("/trainStation")
	@ResponseBody
	public  Map<String, List<Train>> trainStation(Train train, Model model) throws Exception {
		 Map<String, List<Train>> resultMap = new HashMap<>();
		resultMap.put("rtTrain", TrainProc.trainStation(train, model));
		return resultMap;
	}
	
	@RequestMapping("/trainStationYY")
	@ResponseBody
	public  Map<String, List<Train>> trainStationYY(Train train, Model model) throws Exception {
		 Map<String, List<Train>> resultMap = new HashMap<>();
		resultMap.put("rtTrain", TrainProc.trainStationYY(train, model));
		return resultMap;
	}
	
	@RequestMapping("/trainStationXX")
	@ResponseBody
	public  Map<String, List<Train>> trainStationXX(Train train, Model model) throws Exception {
		 Map<String, List<Train>> resultMap = new HashMap<>();
		resultMap.put("rtTrain2", TrainProc.trainStationYY(train, model));
		return resultMap;
	}

	@RequestMapping("/loginXdmForm")
	public String loginXdmForm() {
		return "xdm/infra/index/loginXdmForm";
	}
	
	@RequestMapping("/indexUsrMypage")
	public String indexUsrMypage() {
		
		return "usr/infra/index/indexUsrMypage";
	}
	

}
 