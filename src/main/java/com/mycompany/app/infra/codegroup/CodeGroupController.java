package com.mycompany.app.infra.codegroup;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CodeGroupController {
	
	@Autowired
	CodeGroupServiceImpl service;
	
	@RequestMapping ("/codeGroupXdmList")
	public String codeGroupXdmList(CodeGroupVo vo, Model model) {
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
	
}
