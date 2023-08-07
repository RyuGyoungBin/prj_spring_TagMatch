package com.mycompany.app.hotel;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HotelController {

	@Autowired
	HotelServiceImpl hotelService;
	
	@RequestMapping("/hotelXdmList")
	public String hotelXdmList(HotelVo vo, Model model) {
		List<Hotel> list = hotelService.selectList(vo);
		model.addAttribute("list", list);
		return "xdm/hotel/hotelXdmList";
	}
	
}
