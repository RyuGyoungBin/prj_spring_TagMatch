package com.mycompany.app.info;

import java.util.List;


import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class InfoDao {

	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession; // 변수명 선언
	
	private static String namespace = "com.mycompany.app.info.InfoMapper";
	
//	paging
	public int selectOneCount(InfoVo vo){ return sqlSession.selectOne(namespace + ".selectOneCount", vo); }
	
	public List<Info> selectList(InfoVo vo) {return sqlSession.selectList(namespace + ".selectList", vo ); }
	
	public List<Info> selectHotel(InfoVo vo) {return sqlSession.selectList(namespace + ".selectHotel", vo ); }
	
	public List<Info> selectSpot(InfoVo vo) {return sqlSession.selectList(namespace + ".selectSpot", vo ); }
	
	public Info selectOne(InfoVo vo) {Info codeGroup = sqlSession.selectOne(namespace + ".selectOne", vo); return codeGroup;	}
	
	public List<Info> selectInfoGroup(InfoVo vo) {return sqlSession.selectList(namespace + ".selectInfoGroup", vo ); }

	public int update(Info dto) { return sqlSession.update(namespace + ".update", dto); }
	
	public int delete(Info dto) { return sqlSession.delete(namespace + ".delete", dto); }

	public int insert(Info dto) { return sqlSession.insert(namespace + ".insert", dto); }
	
	public int insertHotelInfo(Info dto) { return sqlSession.insert(namespace + ".insertHotelInfo", dto); }
	
	public int insertSpotInfo(Info dto) { return sqlSession.insert(namespace + ".insertSpotInfo", dto); }

	public int uelete(Info dto) { return sqlSession.update(namespace + ".uelete", dto); }
	
	public int deleteHotelInfo(Info dto) { return sqlSession.update(namespace + ".deleteHotelInfo", dto); }
	
	public int deleteSpotInfo(Info dto) { return sqlSession.update(namespace + ".deleteSpotInfo", dto); }



	

     
	
}