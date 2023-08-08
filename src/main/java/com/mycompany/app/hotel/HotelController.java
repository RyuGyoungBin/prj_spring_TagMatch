package com.mycompany.app.hotel;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HotelController {

	@Autowired
	HotelServiceImpl hotelService;
	
	@RequestMapping("/hotelXdmList")
	public String hotelXdmList(@ModelAttribute("vo") HotelVo vo, Model model) {
		
		vo.setParamsPaging(hotelService.selectOneCount(vo));
		
		if(vo.getTotalRows() > 0) {
			List<Hotel> list = hotelService.selectList(vo);
			model.addAttribute("list", list);
		} else {
//			by pass
		}
		return "xdm/hotel/hotelXdmList";
	}
	
	@RequestMapping("/hotelXdmForm")
	public String hotelXdmForm(HotelVo vo, Model model) {

		Hotel hotel = hotelService.selectOne(vo); 
		model.addAttribute("item", hotel);

		return "xdm/hotel/hotelXdmForm";
	}
	
	@RequestMapping("hotelXdmInsert")
	public String hotelXdmInsert(Hotel dto) {
		hotelService.insert(dto);
		return "redirect:/hotelXdmList";
	}
	
	@RequestMapping("hotelXdmUpdate")
	public String hotelXdmUpdate(Hotel dto) {
		hotelService.update(dto);
		return "redirect:/hotelXdmList";
	}
	
	@RequestMapping("hotelXdmDelete")
	public String hotelXdmDelete(Hotel dto) {
		hotelService.delete(dto);
		return "redirect:/hotelXdmList";
	}
	
}
