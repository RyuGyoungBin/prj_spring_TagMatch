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

	@RequestMapping("/feedbackXdmUpdate")
	public String feedbackXdmUpdate(Feedback dto) throws Exception {

		// service 호출
		service.update(dto);

		return "redirect: /feedbackXdmList";
	}

	@RequestMapping("/feedbackXdmDelete")
	public String feedbackXdmDelete(Feedback dto) {

		// service 호출 
		service.delete(dto);
		
		return "redirect: /feedbackXdmList";
	}

	@RequestMapping("/feedbackXdmInsert")
	public String feedbackXdmInsert(Feedback dto) throws Exception {

		// service 호출
	    int result = service.insertFeedback(dto);

	    if (result > 0) {
	        // 데이터 삽입 성공
	        return "redirect:/feedbackXdmList";
	    } else {
//	        // 데이터 삽입 실패
//	    	// 데이터 삽입 실패 시 에러 메시지를 세션에 저장하고 리다이렉트
//	        httpSession.setAttribute("errorMsg", "등록 실패");
	    }
	    
	    return "redirect:/feedbackXdmList"; // 또는 다른 적절한 처리
		

	}

	@RequestMapping("/feedbackXdmUelete")
	public String feedbackXdmUelete(Feedback dto) {

		// service 호출
		service.uelete(dto);

		return "redirect: /feedbackXdmList";
	}
}