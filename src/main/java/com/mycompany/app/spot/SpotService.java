package com.mycompany.app.spot;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public interface SpotService {

	
	public List<Spot> selectList(SpotVo vo);
	public int selectOneCount(SpotVo vo);	
	public Spot selectOne(SpotVo vo);
	public List<Spot> selectListUploaded(SpotVo vo);
	
	public List<Spot>selectRating(SpotVo vo);
	public Spot selectRatingOne(SpotVo vo);
	
	  
	
	public int insert(Spot dto) throws Exception;	

	public int update(Spot dto);
	 
	public int delete(Spot dto);
//	public int deleteSpotCloseDay(Spot dto);
	
	public int uelete(Spot dto);


	
	
}
