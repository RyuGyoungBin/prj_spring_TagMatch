package com.mycompany.app.feedback;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FeedbackController {

	@Autowired
	FeedbackServiceImpl service;

	@RequestMapping("/feedbackXdmList")
	public String feedbackXdmList(@ModelAttribute("vo") FeedbackVo vo, Model model) {

		
		  vo.setParamsPaging(service.selectOneCount(vo));
		  
		  if(vo.getTotalRows() > 0) { 
			  List<Feedback> list = service.selectList(vo);
			  model.addAttribute("list", list); 
		  } else { 
			  // by pass }
		  }
		 
		return "xdm/feedback/feedbackXdmList";
	}

	@RequestMapping("/feedbackXdmForm")
	public String feedbackXdmForm(FeedbackVo vo, Model model) {
		
		  Feedback feedback = service.selectOne(vo); 
		  model.addAttribute("item", feedback);
		 
		return "xdm/feedback/feedbackXdmForm";
	}

//	@RequestMapping("/feedbackXdmUpdate")
//	public String feedbackXdmUpdate(FeedbackVo dto) throws Exception {
//
//		// service 호출
//		service.update(dto);
//
//		return "redirect: /feedbackXdmList";
//	}
//
//	@RequestMapping("/feedbackXdmDelete")
//	public String feedbackXdmDelete(FeedbackVo dto) {
//
//		// service 호출 
//		service.delete(dto);
//		
//		return "redirect: /feedbackXdmList";
//	}
//
//	@RequestMapping("/feedbackXdmInsert")
//	public String feedbackXdmInsert(FeedbackVo dto) throws Exception {
//
//		// service 호출
//		service.insert(dto);
//		
//		return "redirect: /feedbackXdmList";
//	}
//
//	@RequestMapping("/feedbackXdmUelete")
//	public String feedbackXdmUelete(FeedbackVo dto) {
//
//		// service 호출
//		service.uelete(dto);
//
//		return "redirect: /feedbackXdmList";
//	}
}