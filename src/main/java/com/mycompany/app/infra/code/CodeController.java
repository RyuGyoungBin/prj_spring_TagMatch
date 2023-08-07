package com.mycompany.app.infra.code;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mycompany.app.infra.codegroup.CodeGroup;
import com.mycompany.app.infra.codegroup.CodeGroupService;
import com.mycompany.app.infra.codegroup.CodeGroupVo;
@Controller
public class CodeController {
	
	@Autowired
	CodeServiceImpl codeService;
	@Autowired
	CodeGroupService codeGroupService;

	@RequestMapping(value = "/codeXdmList")
	public String codeXdmLIst(@ModelAttribute("vo") CodeVo vo, CodeGroupVo groupVo, Model model) {

		vo.setName(vo.getName() == null ? "": vo.getName());

		vo.setParamsPaging(codeService.selectOneCount(vo));

		if(vo.getTotalRows() > 0) {
			List<Code> list = codeService.selectList(vo);
			model.addAttribute("list", list);
		} else {
//			by pass
		}

		List<CodeGroup> groupList = codeGroupService.selectList(groupVo);
		model.addAttribute("groupList", groupList);
//		model.addAttribute("vo", vo);
		return "xdm/infra/code/codeXdmList";
	}
	
	@RequestMapping("/codeXdmForm")
	public String codeXdmForm(CodeVo vo, CodeGroupVo codeGroupVo, Model model) {
		Code list = codeService.selectOne(vo);
		List<CodeGroup> group = codeGroupService.selectList(codeGroupVo);
		model.addAttribute("list", list);
		model.addAttribute("group", group);
		return "xdm/infra/code/codeXdmForm";
	}
}

