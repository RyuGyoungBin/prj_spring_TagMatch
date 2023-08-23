package com.mycompany.app.hotel;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mycompany.app.info.Info;
import com.mycompany.app.info.InfoServiceImpl;
import com.mycompany.app.info.InfoVo;
import com.mycompany.app.train.TrainProc;

@Controller
public class HotelController {

	@Autowired
	HotelServiceImpl hotelService;
	
	@Autowired
	InfoServiceImpl infoService;
	
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
	public String hotelXdmForm(HotelVo vo, Model model, InfoVo infoVo) {

		Hotel hotel = hotelService.selectOne(vo); 
		List<Hotel> uploaded = hotelService.selectUploaded(vo);
		model.addAttribute("item", hotel);
		model.addAttribute("listUploaded", uploaded);
		return "xdm/hotel/hotelXdmForm";
	}
	
	@RequestMapping("hotelXdmInsert")
	public String hotelXdmInsert(Hotel dto) throws Exception {
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
	
	@RequestMapping("hotelXdmUelete")
	public String hotelXdmUelete(Hotel dto) {
		hotelService.uelete(dto);
		return "redirect:/hotelXdmList";
	}
	
	@RequestMapping ("/roomDetailInfo")
	public String roomDetailInfo01(HotelVo vo, Model model,InfoVo infoVo) {
		Hotel hotel = hotelService.selectOne(vo);
		List<Hotel> hotelImg = hotelService.selectUploaded(vo);
		List<Info> info = infoService.selectHotel(infoVo);
		
		model.addAttribute("listUploaded", hotelImg);
		model.addAttribute("hotel", hotel);
		model.addAttribute("info", info);
		return "/usr/infra/subpages/roomDetailInfo01";
	}
	
	@RequestMapping("/hotel")
	public String hotelList(@ModelAttribute("vo") HotelVo vo, Model model) throws Exception {
		
			vo.setParamsPaging(hotelService.selectOneCount(vo));
			if(vo.getTotalRows() > 0) {
			List<Hotel> list = hotelService.selectList(vo);
			TrainProc.train(model);
			model.addAttribute("list", list);
			} else {
				
			}
		return "/usr/infra/subpages/hotel02";
	}
	@RequestMapping("/home")
	public String home() {
		return "/home";
	}
}
