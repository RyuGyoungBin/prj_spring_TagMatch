package com.mycompany.app.info;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class InfoController {
	
	@Autowired
	InfoServiceImpl service;
	
	@RequestMapping ("/infoXdmList")
	public String infoXdmList(@ModelAttribute("vo")InfoVo vo, Model model) {
		List<Info> list = service.selectList(vo);
		model.addAttribute("list", list);
		return "/xdm/info/infoXdmList";
	}
	@RequestMapping("/infoXdmForm")
	public String infoXdmForm(InfoVo vo, Model model) {
		Info item = service.selectOne(vo);
		model.addAttribute("list", item);
		return "/xdm/info/infoXdmForm";
	}
	
	@RequestMapping("/infoXdmInsert")
	public String infoXdmInsert(Info dto) {
		service.insert(dto);
		return "redirect:/infoXdmList";
	}
	
	@RequestMapping("/infoXdmUpdate")
	public String infoXdmUpdate(Info dto) {
		service.update(dto);
		return "redirect:/infoXdmList";
	}
	
	@RequestMapping("/infoXdmDelete")
	public String infoXdmDelete(Info dto) {
		service.delete(dto);
		return "redirect:/infoXdmList";
	}
	
	@RequestMapping("/infoXdmDelNy")
	public String infoXdmDelNy(Info dto) {
		service.uelete(dto);
		return "redirect:/infoXdmList";
	}
	
}