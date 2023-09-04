package com.mycompany.app.kakao;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mycompany.app.hotel.Hotel;
import com.mycompany.app.spot.Spot;
import com.mycompany.app.train.Train;


@Controller
public class Kakaopay {
	
	
	String tid;
	String partner_order_id = "";
	String partner_user_id = ""; 
	String[] concertAddressSeat_seqArray;
	
	@RequestMapping("/kakao/pay")
	@ResponseBody
	public String kakaopay(HttpSession httpSession, Hotel hotel, Spot spot, Train train) {
		String item = "기차여행의 패키지 투어여행";
		
		
		Integer total_amount;
		Integer hotelPrice = hotel.getPrice();
		Integer spotPrice = spot.getAdultPrice() + spot.getChildPrice();
		Integer trainPrice = train.getPrice();
		total_amount = hotelPrice +spotPrice+trainPrice;
		partner_order_id = "_order";
		partner_user_id = (String) httpSession.getAttribute("sessionId");
		hotel.setMember_seq((String) httpSession.getAttribute("sessionSeq"));
		spot.setMember_seq((String) httpSession.getAttribute("sessionSeq"));
		train.setMember_seq((String) httpSession.getAttribute("sessionSeq"));
		
		try {
			String item_name = URLEncoder.encode(item, "UTF-8");
			System.out.println("item_name : "+item_name);
			URL url = new URL("https://kapi.kakao.com/v1/payment/ready");
			HttpURLConnection httpUrl = (HttpURLConnection) url.openConnection();
			httpUrl.setRequestMethod("POST");
			httpUrl.setRequestProperty("Authorization", "KakaoAK 13274d287cbe15fa7a36f98743face20");
			httpUrl.setRequestProperty("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
			httpUrl.setDoOutput(true);
			String parameter = "cid=TC0ONETIME&partner_order_id="+partner_order_id+"&partner_user_id="+partner_user_id+"&item_name="+item_name+"&quantity=1&total_amount="+total_amount+"&tax_free_amount=0&approval_url=http://localhost//kakao/pay/approval&fail_url=http://localhost/index&cancel_url=http://localhost/index";
			OutputStream output = httpUrl.getOutputStream();
			DataOutputStream dataOutput = new DataOutputStream(output);
			dataOutput.writeBytes(parameter);
			dataOutput.flush();
			dataOutput.close();
			
			int result = httpUrl.getResponseCode();
			
			InputStream inputStream;
			if(result == 200) {
				inputStream = httpUrl.getInputStream();
			} else {
				inputStream = httpUrl.getErrorStream();
			}
			InputStreamReader reader = new InputStreamReader(inputStream);
			BufferedReader buffer = new BufferedReader(reader);
			
			String token = buffer.readLine();
			String[] array = token.split(",");
			String[] tidArray = array[0].split(":");
			String tidFin = tidArray[1].substring(1, tidArray[1].length()-1);
			tid = tidFin;
			hotel.setTid(tid);
			spot.setTid(tid);
			train.setTid(tid);
			
			return token;
		} catch (MalformedURLException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return "{\"result\":\"NO\"}";
	}
	
	
	@RequestMapping("/kakao/pay/approval")
	public String kakaopay_approval(@RequestParam("pg_token") String pgToken){
		System.out.println("tid : "+tid);
		System.out.println("partner_order_id : "+partner_order_id);
		System.out.println("partner_user_id : "+partner_user_id);
		try {
			URL url = new URL("https://kapi.kakao.com/v1/payment/approve");
			HttpURLConnection httpUrl = (HttpURLConnection) url.openConnection();
			httpUrl.setRequestMethod("POST");
			httpUrl.setRequestProperty("Authorization", "KakaoAK 13274d287cbe15fa7a36f98743face20");
			httpUrl.setRequestProperty("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
			httpUrl.setDoOutput(true);
			String parameter = "cid=TC0ONETIME&tid="+tid+"&partner_order_id="+partner_order_id+"&partner_user_id="+partner_user_id+"&pg_token="+pgToken;
			OutputStream output = httpUrl.getOutputStream();
			DataOutputStream dataOutput = new DataOutputStream(output);
			dataOutput.writeBytes(parameter);
			dataOutput.flush();
			dataOutput.close();
			
			int result = httpUrl.getResponseCode();
			
			InputStream inputStream;
			if(result == 200) {
				inputStream = httpUrl.getInputStream();
			} else {
				inputStream = httpUrl.getErrorStream();
			}
			InputStreamReader reader = new InputStreamReader(inputStream);
			BufferedReader buffer = new BufferedReader(reader);
			
			// 결제 테이블 등록
			
			// 좌석 정보 업데이트
			
			
			return "/usr/infra/subpages/close";
		} catch (MalformedURLException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return "{\"result\":\"NO\"}";
	}
	
//	@RequestMapping("/kakao/pay/cancel")
//	public String kakaopay_cancel(HttpSession httpSession){
//		tid = vo.getTid();
//		Integer cancel_amount;
//		cancel_amount = vo.getTotalPrice();
//		String memberSeq = (String) httpSession.getAttribute("sessionSeq");
//		String[] concertAddressSeatSeq = dto.getConcertAddressSeat_seqArray();
//		dto.setConcertAddressSeat_seqArray(concertAddressSeatSeq);
//		String[] concertTicketSeqArray = dto.getConcertTicket_seqArray();
//		dto.setConcertTicket_seqArray(concertTicketSeqArray);
//		System.out.println(dto.getConcertAddressSeat_seqArray());
//		System.out.println("tid : " + tid);
//		System.out.println("cancel_amount : "+cancel_amount);
//		try {
//			URL url = new URL("https://kapi.kakao.com/v1/payment/cancel");
//			HttpURLConnection httpUrl = (HttpURLConnection) url.openConnection();
//			httpUrl.setRequestMethod("POST");
//			httpUrl.setRequestProperty("Authorization", "KakaoAK 13274d287cbe15fa7a36f98743face20");
//			httpUrl.setRequestProperty("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
//			httpUrl.setDoOutput(true);
//			String parameter = "cid=TC0ONETIME&tid="+tid+"&cancel_amount="+cancel_amount+"&cancel_tax_free_amount=0";
//			OutputStream output = httpUrl.getOutputStream();
//			DataOutputStream dataOutput = new DataOutputStream(output);
//			dataOutput.writeBytes(parameter);
//			dataOutput.flush();
//			dataOutput.close();
//			
//			int result = httpUrl.getResponseCode();
//			
//			InputStream inputStream;
//			if(result == 200) {
//				inputStream = httpUrl.getInputStream();
//			} else {
//				inputStream = httpUrl.getErrorStream();
//			}
//			InputStreamReader reader = new InputStreamReader(inputStream);
//			BufferedReader buffer = new BufferedReader(reader);
//			
//			// 결제 테이블 등록
//			// 좌석 정보 업데이트
//			
//			
//			return "redirect:/mymenuUsrView?memberSeq="+memberSeq;
//		} catch (MalformedURLException e) {
//			e.printStackTrace();
//		} catch (IOException e) {
//			e.printStackTrace();
//		}
//		
//		return "{\"result\":\"NO\"}";
//	}
}
