package com.mycompany.app.spot;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.mycompany.app.hotel.Hotel;
import com.mycompany.app.hotel.HotelVo;

public interface SpotService {

	
	public List<Spot> selectList(SpotVo vo);
	public int selectOneCount(SpotVo vo);	
	public int selectCount(SpotVo vo);	
	public Spot selectOne(SpotVo vo);
	public List<Spot> selectListUploaded(SpotVo vo);
	public List<Spot> selectUploadedOne(SpotVo vo);
	public List<Spot>selectRating(SpotVo vo);
	public List<Spot>spotUsr(SpotVo vo);
	public Spot selectRatingOne(SpotVo vo);
	
	    
	
	public int insert(Spot dto) throws Exception;	

	public int update(Spot dto) throws Exception ;
	 
	public int delete(Spot dto);
//	public int deleteSpotCloseDay(Spot dto);
	
	public int uelete(Spot dto);


	
	 
}
