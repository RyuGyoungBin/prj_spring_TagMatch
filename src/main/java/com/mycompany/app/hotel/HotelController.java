package com.mycompany.app.hotel;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mycompany.app.feedback.Feedback;
import com.mycompany.app.feedback.FeedbackServiceImpl;
import com.mycompany.app.feedback.FeedbackVo;
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
	
	@Autowired
	FeedbackServiceImpl feedbackService;
	
	@RequestMapping("/hotelUsrList")
	public String hotelList(@ModelAttribute("vo") HotelVo vo, Model model) throws Exception {
		
			vo.setParamsPaging(hotelService.selectOneCount(vo));
			if(vo.getTotalRows() > 0) {
			List<Hotel> list = hotelService.selectRating(vo);
			TrainProc.train(model);
			model.addAttribute("list", list);
			} else {
				
			}
		return "/usr/infra/subpages/hotelUsrList";
	}
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
		List<Hotel> uploaded = hotelService.selectUploadedOne(vo);
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
	public String hotelXdmUpdate(Hotel dto) throws Exception {
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
	public String roomDetailInfo01(HotelVo vo,InfoVo infoVo, FeedbackVo feedbackVo, Model model) {
		System.out.println("feedback : "+feedbackVo.getFeedbackType());
		System.out.println("seq : "+vo.getSeq());
		Hotel hotel = hotelService.selectRatingOne(vo);
		List<Hotel> hotelImg = hotelService.selectUploaded(vo);
		List<Info> info = infoService.selectHotel(infoVo);
		List<Hotel> hotelRoom = hotelService.selectHotelRoom(vo);
		List<Feedback> feedback = feedbackService.selectList(feedbackVo);
		
		model.addAttribute("listUploaded", hotelImg);
		model.addAttribute("hotel", hotel);
		model.addAttribute("info", info);
		model.addAttribute("room", hotelRoom);
		model.addAttribute("feedback", feedback);
		return "/usr/infra/subpages/roomDetailInfo";
	}
	
	@RequestMapping("/home")
	public String home() {
		return "/home";
	}
}
