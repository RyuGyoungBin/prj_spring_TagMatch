package com.mycompany.app.hotel;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mycompany.app.feedback.Feedback;
import com.mycompany.app.feedback.FeedbackServiceImpl;
import com.mycompany.app.feedback.FeedbackVo;
import com.mycompany.app.info.Info;
import com.mycompany.app.info.InfoServiceImpl;
import com.mycompany.app.info.InfoVo;
import com.mycompany.app.infra.member.Member;
import com.mycompany.app.infra.member.MemberVo;
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
		Integer StarRatingMin = (vo.getStarRatingVo() == null ? null:Integer.parseInt(vo.getStarRatingVo().split(";")[0]));
		Integer StarRatingMax = (vo.getStarRatingVo() == null ? null:Integer.parseInt(vo.getStarRatingVo().split(";")[1]));
		System.out.println(StarRatingMin);
		System.out.println(StarRatingMax);
		if(StarRatingMin != null) {
			vo.setStarRatingMax(StarRatingMax);
			vo.setStarRatingMin(StarRatingMin);
		}
		vo.setStarRatingVo(vo.getStarRatingVo());
		vo.setHotelType(vo.getHotelType());
		vo.setSido(vo.getSido());
		System.out.println(vo.getSido());
		vo.setParamsPaging(hotelService.selectOneRatingCount(vo));
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
	public String roomDetailInfo01(HotelVo vo,InfoVo infoVo, @ModelAttribute("feedbackVo") FeedbackVo feedbackVo, Model model) {
		
		Hotel hotel = hotelService.selectRatingOne(vo);
		List<Hotel> hotelImg = hotelService.selectUploaded(vo);
		List<Info> info = infoService.selectHotel(infoVo);
		List<Hotel> hotelRoom = hotelService.selectHotelRoom(vo);
		model.addAttribute("listUploaded", hotelImg);
		model.addAttribute("hotel", hotel);
		model.addAttribute("info", info);
		model.addAttribute("room", hotelRoom);
		
		feedbackVo.setFeedbackType(1);
		System.out.println(feedbackVo.getFeedbackType());
		 feedbackVo.setParamsPaging(feedbackService.selectOneCount(feedbackVo));
		  
		  if(feedbackVo.getTotalRows() > 0) { 
			List<Feedback> feedback = feedbackService.selectList(feedbackVo);
			model.addAttribute("feedback", feedback);
		  } else {
			  
		  }
		
		return "/usr/infra/subpages/roomDetailInfo";
	}
	
	@RequestMapping("/home")
	public String home() {
		return "/home";
	}
	
	@RequestMapping("/hotelUsr")
	@ResponseBody
	public Map<String, Object> hotelUsr(HotelVo vo , HttpSession session, Feedback dto) {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		vo.setMemberSeq((String)session.getAttribute("sessionSeq"));
		List<Hotel> rtUsr = hotelService.selectHotelUsr(vo);
		
		if(rtUsr.size() > 0) {
			returnMap.put("rtUsr", "rtUsr");
			returnMap.put("rt", "success");
			dto.setType_seq(rtUsr.get(0).getSeq());
			dto.setMemberSeq((String)session.getAttribute("sessionSeq"));
			System.out.println("member "+dto.getMemberSeq());
			feedbackService.insert(dto);
		} else {
			returnMap.put("rt","fail");
		}
		
		return returnMap;
	}
}
