package com.mycompany.app.hotel;

import java.util.List;

public interface HotelService {

	public List<Hotel> selectList(HotelVo vo);
	public int selectOneCount(HotelVo vo);	
	public Hotel selectOne(HotelVo vo);
	
	public int insert(Hotel dto);
	
	public int update(Hotel dto);
	
	public int delete(Hotel dto);
	
	public int uelete(Hotel dto);
}
