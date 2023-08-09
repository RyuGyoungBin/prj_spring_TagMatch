package com.mycompany.app.spot;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

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
//			model.addAttribute("vo", vo);
		} else {
//			by pass
		}
		
		return "/xdm/spot/spotXdmList";
	}
	
	@RequestMapping("/spotXdmForm")
	public String spotXdmForm(SpotVo vo, Model model) {
		Spot item = service.selectOne(vo);
		model.addAttribute("list", item);
		return "/xdm/spot/spotXdmForm";
	}
	
	
	
	
	
	@RequestMapping("/spotUpdt")
	public String spotUpdt(Spot dto) throws Exception {
		
		
		
		// service 호출
		service.update(dto);

		return "redirect: /spotXdmList";
	}
	
	@RequestMapping("/spotDel")
	public String spotDel(Spot dto) {

		// service 호출
		service.delete(dto);
		
		return "redirect: /spotXdmList";
	}
	
	@RequestMapping("/spotAdd")
	public String spotAdd(Spot dto) throws Exception {

		// service 호출
		service.insert(dto);
		
		return "redirect: /spotXdmList";
	}
	
	@RequestMapping("/spotUel")
	public String spotUel(Spot dto) { 	

		// service 호출
		service.uelete(dto);
		
		return "redirect: /spotXdmList";
	}
	
}
