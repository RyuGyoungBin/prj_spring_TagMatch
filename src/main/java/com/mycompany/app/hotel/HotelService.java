package com.mycompany.app.hotel;

import java.util.List;

public interface HotelService {

	public List<Hotel> selectList(HotelVo vo);
	public int selectOneCount(HotelVo vo);	
	public int selectOneRatingCount(HotelVo vo);	
	public Hotel selectOne(HotelVo vo);
	public List<Hotel> selectUploaded(HotelVo vo);
	public List<Hotel> selectUploadedOne(HotelVo vo);
	public List<Hotel> selectHotelRoom(HotelVo vo);
	public List<Hotel> selectRating(HotelVo vo);
	public Hotel selectRatingOne(HotelVo vo);
	public List<Hotel> selectHotelUsr(HotelVo vo);
	
	public int insert(Hotel dto) throws Exception;
	
	public int update(Hotel dto) throws Exception;
	
	public int delete(Hotel dto);
	
	public int uelete(Hotel dto);
}
