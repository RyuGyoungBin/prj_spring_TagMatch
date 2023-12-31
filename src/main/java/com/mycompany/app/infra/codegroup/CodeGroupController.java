package com.mycompany.app.infra.codegroup;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CodeGroupController {
	
	@Autowired
	CodeGroupServiceImpl service;
	
	@RequestMapping ("/codeGroupXdmList")
	public String codeGroupXdmList(@ModelAttribute("vo")CodeGroupVo vo, Model model) {
		List<CodeGroup> list = service.selectList(vo);
		model.addAttribute("list", list);
		return "/xdm/infra/codegroup/codeGroupXdmList";
	}
	@RequestMapping("/codeGroupXdmForm")
	public String codeGroupXdmForm(CodeGroupVo vo, Model model) {
		CodeGroup item = service.selectOne(vo);
		model.addAttribute("list", item);
		return "/xdm/infra/codegroup/codeGroupXdmForm";
	}
	
	@RequestMapping("/codeGroupXdmInsert")
	public String codeGroupXdmInsert(CodeGroup dto) {
		service.insert(dto);
		return "redirect:/codeGroupXdmList";
	}
	
	@RequestMapping("/codeGroupXdmUpdate")
	public String codeGroupXdmUpdate(CodeGroup dto) {
		service.update(dto);
		return "redirect:/codeGroupXdmList";
	}
	
	@RequestMapping("/codeGroupXdmDelete")
	public String codeGroupXdmDelete(CodeGroup dto) {
		service.delete(dto);
		return "redirect:/codeGroupXdmList";
	}
	
	@RequestMapping("/codeGroupXdmDelNy")
	public String codeGroupXdmDelNy(CodeGroup dto) {
		service.uelete(dto);
		return "redirect:/codeGroupXdmList";
	}
	
}
