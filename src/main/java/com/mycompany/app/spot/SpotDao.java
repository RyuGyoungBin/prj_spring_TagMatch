package com.mycompany.app.spot;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class SpotDao {

	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession; // 변수명 선언
	
	private static String namespace = "com.mycompany.app.spot.SpotMapper";
	
//	paging
	public int selectOneCount(SpotVo vo){ return sqlSession.selectOne(namespace + ".selectOneCount", vo); }
	
	public Spot selectOne(SpotVo vo) { return sqlSession.selectOne(namespace + ".selectOne", vo); }
	
	public List<Spot> selectList(SpotVo vo) {
		return sqlSession.selectList(namespace + ".selectList", vo ); 
		// selectList : 반환값 list, vo=가변 가능성 현저히 낮음.
		}

	
	// selectList , selectOne과는 다르게 무조건 dto를 써야한다. vo 사용 불가능!!!
	public int update(Spot dto) { return sqlSession.update(namespace + ".update", dto); }
	
	public int delete(Spot dto) { return sqlSession.delete(namespace + ".delete", dto); }

	public int insertSpot(Spot dto) { return sqlSession.insert(namespace + ".insertSpot", dto); }
	public int insertSpotInfo(Spot dto) { return sqlSession.insert(namespace + ".insertSpotInfo", dto); }
	public int insertSpotCloseDay(Spot dto) { return sqlSession.insert(namespace + ".insertSpotCloseDay", dto); }

	public int uelete(Spot dto) { return sqlSession.update(namespace + ".uelete", dto); }
	
	// 파일업로드
	public int insertUploaded(Spot dto) { return sqlSession.insert(namespace + ".insertUploaded", dto); }
	
}
