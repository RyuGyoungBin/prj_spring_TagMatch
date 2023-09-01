package com.mycompany.app.train;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.ui.Model;

import com.fasterxml.jackson.databind.ObjectMapper;

public class TrainProc {
	
	public static void train(Model model) throws Exception {
		
		String apiUrl = "http://apis.data.go.kr/1613000/TrainInfoService/getCtyCodeList?serviceKey=5dx59Iz3XSezPb2EagGTegCQHvL4o%2BP3Er41IuBsQ1nAcKAhlD3zq8Sp2Dh1clbSsNFATVFrRahABEc6qxLc5A%3D%3D&_type=json";
		
		URL url = new URL(apiUrl);
		HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
		httpURLConnection.setRequestMethod("GET");
		
		BufferedReader bufferedReader;
		if (httpURLConnection.getResponseCode() >= 200 && httpURLConnection.getResponseCode() <= 300) {
			bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
		} else {
			bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getErrorStream()));
		}
		
		StringBuilder stringBuilder = new StringBuilder();
		String line;
		while ((line = bufferedReader.readLine()) != null) {
//			System.out.println("line: " + line);
			stringBuilder.append(line);
		}
		
		bufferedReader.close();
		httpURLConnection.disconnect();
		
		ObjectMapper objectMapper = new ObjectMapper();
	      
      Map<String, Object> map = objectMapper.readValue(stringBuilder.toString(), Map.class);
      
//      System.out.println("######## Map");
		for (String key : map.keySet()) {
			String value = String.valueOf(map.get(key));	// ok
//			System.out.println("[key]:" + key + ", [value]:" + value);
		}
//		System.out.println(map.size());
		
		Map<String, Object> response = new HashMap<String, Object>();
		response = (Map<String, Object>) map.get("response");
		
//		System.out.println("######## Response");
		for (String key : response.keySet()) {
			String value = String.valueOf(response.get(key));	// ok
//			System.out.println("[key re]:" + key + ", [value]:" + value);
		}
		
		Map<String, Object> header = new HashMap<String, Object>();
		header = (Map<String, Object>) response.get("header");
		
//		System.out.println("######## Header");
		for (String key : header.keySet()) {
			String value = String.valueOf(header.get(key));	// ok
//			System.out.println("[key]:" + key + ", [value]:" + value);
		}
		
//		System.out.println("header.get(\"resultlCode\"):"+header.get("resultCode"));
//		System.out.println("header.get(\"resultlMsg\"):"+header.get("resultMsg"));
		
		Map<String, Object> body = new HashMap<String, Object>();
		body = (Map<String, Object>) response.get("body");
		
//		System.out.println("######## Body");
		for (String key : body.keySet()) {
			String value = String.valueOf(body.get(key));	// ok
//			System.out.println("[key]:" + key + ", [value]:" + value);
		}
		
		Map<String, Object> items = new HashMap<String, Object>();
		items = (Map<String, Object>) body.get("items");
		
//		System.out.println("######## items");
		for (String key : items.keySet()) {
			String value = String.valueOf(items.get(key));	// ok
//			System.out.println("[key]:" + key + ", [value]:" + value);
		}
		List<Train> item = new ArrayList<Train>();
		item = (List<Train>) items.get("item");
		
//		System.out.println("items.size(): " + items.size());
		
		model.addAttribute("item",item);
	}
	
//	station api 

public static List<Train> trainStation(Train train, Model model) throws Exception {
		String citycode = "";
		citycode = train.getCitycode();
//		System.out.println(citycode);
		String apiUrl = "https://apis.data.go.kr/1613000/TrainInfoService/getCtyAcctoTrainSttnList?serviceKey=5dx59Iz3XSezPb2EagGTegCQHvL4o%2BP3Er41IuBsQ1nAcKAhlD3zq8Sp2Dh1clbSsNFATVFrRahABEc6qxLc5A%3D%3D&numOfRows=10&pageNo=1&_type=json&cityCode="+citycode;
		
		URL url = new URL(apiUrl);
		HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
		httpURLConnection.setRequestMethod("GET");
		
		BufferedReader bufferedReader;
		if (httpURLConnection.getResponseCode() >= 200 && httpURLConnection.getResponseCode() <= 300) {
			bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
		} else {
			bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getErrorStream()));
		}
		
		StringBuilder stringBuilder = new StringBuilder();
		String line;
		while ((line = bufferedReader.readLine()) != null) {
//			System.out.println("line: " + line);
			stringBuilder.append(line);
		}
		
		bufferedReader.close();
		httpURLConnection.disconnect();
		
		ObjectMapper objectMapper = new ObjectMapper();
	      
      Map<String, Object> map = objectMapper.readValue(stringBuilder.toString(), Map.class);
      
//      System.out.println("######## Map");
		for (String key : map.keySet()) {
			String value = String.valueOf(map.get(key));	// ok
//			System.out.println("[key]:" + key + ", [value]:" + value);
		}
//		System.out.println(map.size());
		
		Map<String, Object> response = new HashMap<String, Object>();
		response = (Map<String, Object>) map.get("response");
		
//		System.out.println("######## Response");
		for (String key : response.keySet()) {
			String value = String.valueOf(response.get(key));	// ok
//			System.out.println("[key re]:" + key + ", [value]:" + value);
		}
		
		Map<String, Object> header = new HashMap<String, Object>();
		header = (Map<String, Object>) response.get("header");
		
//		System.out.println("######## Header");
		for (String key : header.keySet()) {
			String value = String.valueOf(header.get(key));	// ok
//			System.out.println("[key]:" + key + ", [value]:" + value);
		}
		
//		System.out.println("header.get(\"resultlCode\"):"+header.get("resultCode"));
//		System.out.println("header.get(\"resultlMsg\"):"+header.get("resultMsg"));
		
		Map<String, Object> body = new HashMap<String, Object>();
		body = (Map<String, Object>) response.get("body");
		
//		System.out.println("######## Body");
		for (String key : body.keySet()) {
			String value = String.valueOf(body.get(key));	// ok
//			System.out.println("[key]:" + key + ", [value]:" + value);
		}
		
		Map<String, Object> items = new HashMap<String, Object>();
		items = (Map<String, Object>) body.get("items");
		
//		System.out.println("######## items");
		for (String key : items.keySet()) {
			String value = String.valueOf(items.get(key));	// ok
//			System.out.println("[key]:" + key + ", [value]:" + value);
		}
		List<Train> item = new ArrayList<Train>();
		item = (List<Train>) items.get("item");
		
//		System.out.println("items.size(): " + items.size());
		return item;
	}

public static List<Train> trainStationYY(Train train, Model model) throws Exception {
	String depPlaceId = train.getDepPlaceId();
	String arrPlaceId = train.getArrPlaceId();
	String[] depPlandTimes = train.getDepPlandTime().split(">");
	String depPlandTime = depPlandTimes[0];
//	System.out.println(depPlandTime);
	
//		LocalTime depPlandTime = LocalTime.now();
//		DateTimeFormatter Time = DateTimeFormatter.ofPattern("HH:MM:SS");
//		System.out.println(Time);
	
//	System.out.println(depPlaceId);
//	System.out.println(arrPlaceId);
	String apiUrl = "http://apis.data.go.kr/1613000/TrainInfoService/getStrtpntAlocFndTrainInfo?serviceKey=5dx59Iz3XSezPb2EagGTegCQHvL4o%2BP3Er41IuBsQ1nAcKAhlD3zq8Sp2Dh1clbSsNFATVFrRahABEc6qxLc5A%3D%3D&numOfRows=10&pageNo=1&_type=json&depPlaceId="+depPlaceId+"&arrPlaceId="+arrPlaceId+"&depPlandTime="+depPlandTime;
	
	URL url = new URL(apiUrl);
	HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
	httpURLConnection.setRequestMethod("GET");
	
	BufferedReader bufferedReader;
	if (httpURLConnection.getResponseCode() >= 200 && httpURLConnection.getResponseCode() <= 300) {
		bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
	} else {
		bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getErrorStream()));
	}
	
	StringBuilder stringBuilder = new StringBuilder();
	String line;
	while ((line = bufferedReader.readLine()) != null) {
//		System.out.println("line: " + line);
		stringBuilder.append(line);
	}
	
	bufferedReader.close();
	httpURLConnection.disconnect();
	
	ObjectMapper objectMapper = new ObjectMapper();
      
  Map<String, Object> map = objectMapper.readValue(stringBuilder.toString(), Map.class);
  
//  System.out.println("######## Map");
	for (String key : map.keySet()) {
		String value = String.valueOf(map.get(key));	// ok
//		System.out.println("[key]:" + key + ", [value]:" + value);
	}
//	System.out.println(map.size());
	
	Map<String, Object> response = new HashMap<String, Object>();
	response = (Map<String, Object>) map.get("response");
	
//	System.out.println("######## Response");
	for (String key : response.keySet()) {
		String value = String.valueOf(response.get(key));	// ok
//		System.out.println("[key re]:" + key + ", [value]:" + value);
	}
	
	Map<String, Object> header = new HashMap<String, Object>();
	header = (Map<String, Object>) response.get("header");
	
//	System.out.println("######## Header");
	for (String key : header.keySet()) {
		String value = String.valueOf(header.get(key));	// ok
//		System.out.println("[key]:" + key + ", [value]:" + value);
	}
	
//	System.out.println("header.get(\"resultlCode\"):"+header.get("resultCode"));
//	System.out.println("header.get(\"resultlMsg\"):"+header.get("resultMsg"));
	
	Map<String, Object> body = new HashMap<String, Object>();
	body = (Map<String, Object>) response.get("body");
	
//	System.out.println("######## Body");
	for (String key : body.keySet()) {
		String value = String.valueOf(body.get(key));	// ok
//		System.out.println("[key]:" + key + ", [value]:" + value);
	}
	
	Map<String, Object> items = new HashMap<String, Object>();
	items = (Map<String, Object>) body.get("items");
	
//	System.out.println("######## items");
	for (String key : items.keySet()) {
		String value = String.valueOf(items.get(key));	// ok
//		System.out.println("[key]:" + key + ", [value]:" + value);
	}
	List<Train> item = new ArrayList<Train>();
	item = (List<Train>) items.get("item");
	
//	System.out.println("items.size(): " + items.size());
	return item;
}

public static List<Train> trainStationXX(Train train, Model model) throws Exception {
	String depPlaceId = train.getDepPlaceId();
	String arrPlaceId = train.getArrPlaceId();
	String[] depPlandTimes = train.getDepPlandTime().split(">");
	String depPlandTime = depPlandTimes[1];
//	System.out.println(depPlandTime);
	
//		LocalTime depPlandTime = LocalTime.now();
//		DateTimeFormatter Time = DateTimeFormatter.ofPattern("HH:MM:SS");
//		System.out.println(Time);
	
//	System.out.println(depPlaceId);
//	System.out.println(arrPlaceId);
	String apiUrl = "http://apis.data.go.kr/1613000/TrainInfoService/getStrtpntAlocFndTrainInfo?serviceKey=5dx59Iz3XSezPb2EagGTegCQHvL4o%2BP3Er41IuBsQ1nAcKAhlD3zq8Sp2Dh1clbSsNFATVFrRahABEc6qxLc5A%3D%3D&numOfRows=10&pageNo=1&_type=json&depPlaceId="+depPlaceId+"&arrPlaceId="+arrPlaceId+"&depPlandTime="+depPlandTime;
	
	URL url = new URL(apiUrl);
	HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
	httpURLConnection.setRequestMethod("GET");
	
	BufferedReader bufferedReader;
	if (httpURLConnection.getResponseCode() >= 200 && httpURLConnection.getResponseCode() <= 300) {
		bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
	} else {
		bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getErrorStream()));
	}
	
	StringBuilder stringBuilder = new StringBuilder();
	String line;
	while ((line = bufferedReader.readLine()) != null) {
//		System.out.println("line: " + line);
		stringBuilder.append(line);
	}
	
	bufferedReader.close();
	httpURLConnection.disconnect();
	
	ObjectMapper objectMapper = new ObjectMapper();
      
  Map<String, Object> map = objectMapper.readValue(stringBuilder.toString(), Map.class);
  
//  System.out.println("######## Map");
	for (String key : map.keySet()) {
		String value = String.valueOf(map.get(key));	// ok
//		System.out.println("[key]:" + key + ", [value]:" + value);
	}
//	System.out.println(map.size());
	
	Map<String, Object> response = new HashMap<String, Object>();
	response = (Map<String, Object>) map.get("response");
	
//	System.out.println("######## Response");
	for (String key : response.keySet()) {
		String value = String.valueOf(response.get(key));	// ok
//		System.out.println("[key re]:" + key + ", [value]:" + value);
	}
	
	Map<String, Object> header = new HashMap<String, Object>();
	header = (Map<String, Object>) response.get("header");
	
//	System.out.println("######## Header");
	for (String key : header.keySet()) {
		String value = String.valueOf(header.get(key));	// ok
//		System.out.println("[key]:" + key + ", [value]:" + value);
	}
	
//	System.out.println("header.get(\"resultlCode\"):"+header.get("resultCode"));
//	System.out.println("header.get(\"resultlMsg\"):"+header.get("resultMsg"));
	
	Map<String, Object> body = new HashMap<String, Object>();
	body = (Map<String, Object>) response.get("body");
	
//	System.out.println("######## Body");
	for (String key : body.keySet()) {
		String value = String.valueOf(body.get(key));	// ok
//		System.out.println("[key]:" + key + ", [value]:" + value);
	}
	
	Map<String, Object> items = new HashMap<String, Object>();
	items = (Map<String, Object>) body.get("items");
	
//	System.out.println("######## items");
	for (String key : items.keySet()) {
		String value = String.valueOf(items.get(key));	// ok
//		System.out.println("[key]:" + key + ", [value]:" + value);
	}
	List<Train> item = new ArrayList<Train>();
	item = (List<Train>) items.get("item");
	
//	System.out.println("items.size(): " + items.size());
	return item;
}

}
