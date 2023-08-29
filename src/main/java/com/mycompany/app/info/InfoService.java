package com.mycompany.app.info;

import java.util.List;

public interface InfoService {

	
//	paging
	public int selectOneCount(InfoVo vo);
	
	public List<Info> selectList(InfoVo vo);
	
	public List<Info> selectHotel(InfoVo vo);
	public List<Info> selectSpot(InfoVo vo);
	
	public List<Info> selectInfoGroup(InfoVo vo);
	
	public Info selectOne(InfoVo vo);
	
	public int update(Info dto);
	public int delete(Info dto);
	public int insert(Info dto);	
	public int uelete(Info dto);	
	
	public int insertHotelInfo(Info dto);
	public int deleteHotelInfo(Info dto);
	public int updateHotelInfo(Info dto, InfoVo vo);
	
	public int insertSpotInfo(Info dto);
	public int deleteSpotInfo(Info dto);
	public int updateSpotInfo(Info dto, InfoVo vo);
}