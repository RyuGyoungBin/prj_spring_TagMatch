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
	
	public Info selectOne(InfoVo vo) {Info codeGroup = sqlSession.selectOne(namespace + ".selectOne", vo); return codeGroup;	}

	// selectList , selectOne과는 다르게 무조건 dto를 써야한다. vo 사용 불가능!!!
	public int update(Info dto) { return sqlSession.update(namespace + ".update", dto); }
	
	public int delete(Info dto) { return sqlSession.delete(namespace + ".delete", dto); }

	public int insert(Info dto) { return sqlSession.insert(namespace + ".insert", dto); }

	public int uelete(Info dto) { return sqlSession.update(namespace + ".uelete", dto); }

// sqlSession 객체를 쓴다 => mybatis 를 쓰겠다는 뜻
	// delete , insert , update , select - 반환값 int


	

     
	
}