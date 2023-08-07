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
}
