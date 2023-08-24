package com.mycompany.app.spot;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mycompany.app.hotel.Hotel;



@Controller
public class SpotController {
	
	@Autowired
	SpotServiceImpl service;
	private HttpSession httpSession;

	
	@RequestMapping ("/spotXdmList")
	public String spotXdmList(@ModelAttribute("vo") SpotVo vo, Model model) {
		
		vo.setParamsPaging(service.selectOneCount(vo));
		
		if(vo.getTotalRows() > 0) {
			List<Spot> list = service.selectList(vo);
			model.addAttribute("list", list);
		} else {
//			by pass
		}
		return "/xdm/spot/spotXdmList";
	}
	
	@RequestMapping("/spotXdmForm")
	public String spotXdmForm(SpotVo vo, Model model) {
		Spot spot = service.selectOne(vo);
		List<Spot> uploaded = service.selectListUploaded(vo);
		model.addAttribute("item", spot);
		model.addAttribute("listUploaded", uploaded);
		return "/xdm/spot/spotXdmForm";
	}
	
	@RequestMapping("/indexUsrTicket")
	public String indexUsrTicket(@ModelAttribute("vo") SpotVo vo, Model model) {
		
		vo.setParamsPaging(service.selectOneCount(vo));
		
		if(vo.getTotalRows() > 0) {
			List<Spot> list = service.selectList(vo);
			List<Spot> spotImg = service.selectListUploaded(vo); 
			model.addAttribute("list", list);
			model.addAttribute("listUploaded",spotImg);
//			model.addAttribute("vo", vo);
		} else {
//			by pass
		}
		
		return "/usr/infra/index/indexUsrTicket";
	}
	
	
	@RequestMapping("/indexUsrTicketDetailInfo")
	public String indexUsrTiketMoreInformation(SpotVo vo, Model model) {
		
		Spot spot = service.selectOne(vo);
		List<Spot> spotImg = service.selectListUploaded(vo); 
		model.addAttribute("spot",spot);
		model.addAttribute("listUploaded",spotImg);
		return "/usr/infra/index/indexUsrTicketDetailInfo";
		
	}
	
	@RequestMapping("/detailInfo01")
	public String detaillnfo01() {
		return "/usr/infra/index/detailInfo01";
	}
	
	@RequestMapping("/indexUsrLogin")
	public String indexUsrLogin() {
		return "/usr/infra/member/indexUsrLogin";
	}
	@RequestMapping("/indexUsrSignUp")
	public String indexUsrSignUp() {
		return "/usr/infra/member/indexUsrSignUp";
	}

	@RequestMapping("/indexUsrMypage")
	public String indexUsrMyPage() {
		return "/usr/infra/index/indexUsrMypage";
	}
	
	
	
	@RequestMapping("/spotXdmUpdate")
	public String spotXdmUpdate(Spot dto) throws Exception {

		// service 호출
		service.update(dto);

		return "redirect: /spotXdmList";
	}
	
	@RequestMapping("/spotXdmDelete")
	public String spotXdmDelete(Spot dto) {

		// service 호출 
		service.delete(dto);
		
		return "redirect: /spotXdmList";
	}
	
	@RequestMapping("/spotXdmInsert")
	public String spotXdmInsert(Spot dto) throws Exception {

		// service 호출
		service.insert(dto);
		
		return "redirect: /spotXdmList";
	}
	
	@RequestMapping("/spotXdmUelete")
	public String spotXdmUelete(Spot dto) { 	

		// service 호출
		service.uelete(dto);
		
		return "redirect: /spotXdmList";
	}
	
}
