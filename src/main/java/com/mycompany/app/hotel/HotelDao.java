package com.mycompany.app.hotel;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
@Repository
public class HotelDao {
	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	private static String namespace = "com.mycompany.app.hotel.HotelMapper";
	
	public List<Hotel> selectList(HotelVo vo){return sqlSession.selectList(namespace +".selectList", vo);}
	public int selectOneCount(HotelVo vo){ return sqlSession.selectOne(namespace + ".selectOneCount", vo); }
	public Hotel selectOne(HotelVo vo) {return sqlSession.selectOne(namespace +".selectOne", vo);}
	public List<Hotel> selectUploaded(HotelVo vo) {return sqlSession.selectList(namespace +".selectUploaded", vo);};
	
	public int insert(Hotel dto) { return sqlSession.insert(namespace + ".insertHotel", dto); }
	public int insertHotelInfo(Hotel dto) { return sqlSession.insert(namespace + ".insertHotelInfo", dto); }
	public int insertHotelRoom(Hotel dto) { return sqlSession.insert(namespace + ".insertHotelRoom", dto); }
	public int insertHotelClose(Hotel dto) { return sqlSession.insert(namespace + ".insertHotelClose", dto); }
	
	public int update(Hotel dto) { return sqlSession.insert(namespace + ".updateHotel", dto); }
	public int updateHotelInfo(Hotel dto) { return sqlSession.insert(namespace + ".updateHotelInfo", dto); }
	public int updateHotelRoom(Hotel dto) { return sqlSession.insert(namespace + ".updateHotelRoom", dto); }
	public int updateHotelClose(Hotel dto) { return sqlSession.insert(namespace + ".updateHotelClose", dto); }
	
	public int delete(Hotel dto) { return sqlSession.insert(namespace + ".deleteHotel", dto); }
	public int deleteHotelInfo(Hotel dto) { return sqlSession.insert(namespace + ".deleteHotelInfo", dto); }
	public int deleteHotelRoom(Hotel dto) { return sqlSession.insert(namespace + ".deleteHotelRoom", dto); }
	public int deleteHotelClose(Hotel dto) { return sqlSession.insert(namespace + ".deleteHotelClose", dto); }
	
	public int uelete(Hotel dto) { return sqlSession.insert(namespace + ".ueleteHotel", dto); }
	public int ueleteHotelInfo(Hotel dto) { return sqlSession.insert(namespace + ".ueleteHotelInfo", dto); }
	public int ueleteHotelRoom(Hotel dto) { return sqlSession.insert(namespace + ".ueleteHotelRoom", dto); }
	public int ueleteHotelClose(Hotel dto) { return sqlSession.insert(namespace + ".ueleteHotelClose", dto); }
	
	public int insertUploaded(Hotel dto) { return sqlSession.insert(namespace + ".insertUploaded", dto); }
}
