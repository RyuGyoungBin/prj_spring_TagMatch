package com.mycompany.app.spot;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.mycompany.app.hotel.Hotel;
import com.mycompany.app.hotel.HotelVo;

@Repository
public class SpotDao {
 
	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession; // 변수명 선언
	
	private static String namespace = "com.mycompany.app.spot.SpotMapper";
	
//	paging
	public List<Spot> selectList(SpotVo vo) {return sqlSession.selectList(namespace + ".selectList", vo );  }
	
	public int selectOneCount(SpotVo vo){ return sqlSession.selectOne(namespace + ".selectOneCount", vo); }
	public int selectCount(SpotVo vo){ return sqlSession.selectOne(namespace + ".selectCount", vo); }
	public List<Spot> selectUploadedOne(SpotVo vo) {return sqlSession.selectList(namespace +".selectUploadedOne", vo);};
	
	public Spot selectOne(SpotVo vo) { return sqlSession.selectOne(namespace + ".selectOne", vo); }
	
	// selectList , selectOne과는 다르게 무조건 dto를 써야한다. vo 사용 불가능!!!
	public int update(Spot dto) { return sqlSession.update(namespace + ".update", dto); }
	
	public int delete(Spot dto) { return sqlSession.delete(namespace + ".delete", dto); }
	public int deleteSpotCloseDay(Spot dto) { return sqlSession.delete(namespace + ".deleteSpotCloseDay", dto); }

	public int insertSpot(Spot dto) { return sqlSession.insert(namespace + ".insertSpot", dto); }
	public int insertSpotInfo(Spot dto) { return sqlSession.insert(namespace + ".insertSpotInfo", dto); }
	public int insertSpotCloseDay(Spot dto) { return sqlSession.insert(namespace + ".insertSpotCloseDay", dto); }

	public List<Spot> selectRating(SpotVo vo) {return sqlSession.selectList(namespace + ".selectRating", vo );  }
	public Spot selectRatingOne(SpotVo vo) { return sqlSession.selectOne(namespace + ".selectRatingOne", vo); }
	
	
	public int uelete(Spot dto) { return sqlSession.update(namespace + ".uelete", dto); }
	
	// 파일업로드
	public List<Spot> selectListUploaded(SpotVo vo) {return sqlSession.selectList(namespace + ".selectListUploaded", vo );}
	public int insertUploaded(Spot dto) { return sqlSession.insert(namespace + ".insertUploaded", dto); }
	
	
//	//이미지 뿌리기
//	public interface spotUploaded {
//	    List<Spot> getSpotUploaded(int spotSeq);}

}