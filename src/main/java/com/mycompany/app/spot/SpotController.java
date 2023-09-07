package com.mycompany.app.spot;

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
import com.mycompany.app.train.TrainProc;



@Controller
public class SpotController {
	
	@Autowired
	SpotServiceImpl service;
	private HttpSession httpSession;
	
	@Autowired
	FeedbackServiceImpl feedbackService;
	
	@Autowired
	InfoServiceImpl infoService;

	
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
		List<Spot> uploaded = service.selectUploadedOne(vo);
		model.addAttribute("item", spot);
		model.addAttribute("listUploaded", uploaded);
		return "/xdm/spot/spotXdmForm";
	}
	
	@RequestMapping("/indexUsrTicket")
	public String indexUsrTicket(@ModelAttribute("vo") SpotVo vo,Model model) throws Exception {
		Integer StarRatingMin = (vo.getStarRatingVo() == null ? null:Integer.parseInt(vo.getStarRatingVo().split(";")[0]));
		Integer StarRatingMax = (vo.getStarRatingVo() == null ? null:Integer.parseInt(vo.getStarRatingVo().split(";")[1]));
		System.out.println(StarRatingMin);
		System.out.println(StarRatingMax);
		if(StarRatingMin != null) {
			vo.setStarRatingMax(StarRatingMax);
			vo.setStarRatingMin(StarRatingMin);
		}
		vo.setStarRatingVo(vo.getStarRatingVo());
		vo.setParamsPaging(service.selectCount(vo));
		
		
		if(vo.getTotalRows() > 0) {
			List<Spot> list = service.selectRating(vo);
			List<Spot> spotImg = service.selectListUploaded(vo); 
			TrainProc.train(model);
			model.addAttribute("list", list);
			model.addAttribute("listUploaded",spotImg);
//			model.addAttribute("vo", vo);
		} else {
//			by pass
		}
		 
		return "/usr/infra/index/indexUsrTicket";
	}
	
	
	@RequestMapping("/indexUsrTicketDetailInfo")
	public String indexUsrTiketMoreInformation(SpotVo vo, FeedbackVo feedbackVo, InfoVo infoVo,  Model model) {
		System.out.println("feedback : "+feedbackVo.getFeedbackType());
		System.out.println("seq : "+vo.getSeq());
		Spot spot = service.selectRatingOne(vo);
		List<Spot> spotImg = service.selectListUploaded(vo); 
		List<Info>info = infoService.selectSpot(infoVo);
		List<Feedback>feedback = feedbackService.selectList(feedbackVo);
		model.addAttribute("spot",spot);
		model.addAttribute("listUploaded",spotImg);
		model.addAttribute("info",info);
		model.addAttribute("feedback",feedback);
		return "/usr/infra/index/indexUsrTicketDetailInfo";
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
	
//	 @RequestMapping(value = "/upload", method = RequestMethod.GET)
//	    public String showUploadForm() {
//	        return "uploadForm";
//	    }
//
//	    @RequestMapping(value = "/upload", method = RequestMethod.POST)
//	    public String handleFileUpload(@RequestParam("file") MultipartFile file, Model model) {
//	        if (!file.isEmpty()) {
//	            try {
//	                byte[] bytes = file.getBytes();
//	                String fileName = file.getOriginalFilename();
//	                // 이미지 파일을 서버의 지정된 위치에 저장합니다.
//	                // ...
//	                model.addAttribute("message", "파일 업로드 성공: " + fileName);
//	            } catch (Exception e) {
//	                model.addAttribute("message", "파일 업로드 실패: " + e.getMessage());
//	            }
//	        } else {
//	            model.addAttribute("message", "파일이 비어 있습니다.");
//	        }
//	        return "uploadResult";
//	    }

	@RequestMapping("/spotUsr")
	@ResponseBody
	public Map <String,Object> spotUsr (SpotVo vo, HttpSession httpSession, Feedback dto ) { 	
		Map<String,Object> returnMap = new HashMap<String, Object>();
		vo.setMemberSeq((String)httpSession.getAttribute("sessionSeq"));
		List<Spot> spotUsr = service.spotUsr(vo);
		
		if(spotUsr.size() > 0){
		  	returnMap.put("spotUsr", spotUsr);
		  	returnMap.put("rt", "success");
		  	dto.setMemberSeq((String)httpSession.getAttribute("sessionSeq"));
//		  	dto.setType_seq(spotUsr.get(0).getSeq());
		  	System.out.println("a1"+spotUsr.get(0).getSeq());
		  	 System.out.println("member"+dto.getMemberSeq());
		  	 feedbackService.insert(dto);
		  }else {
			  returnMap.put("rt","fail");
		  }
		  return returnMap;
	  }
}
