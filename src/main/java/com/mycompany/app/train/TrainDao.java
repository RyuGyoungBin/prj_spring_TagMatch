package com.mycompany.app.train;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
@Repository
public class TrainDao {
	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession; // 변수명 선언
	
	private static String namespace = "com.mycompany.app.train.TrainMapper";
	
	public List<Train> select(Train dto) { return sqlSession.selectList(namespace + ".selectTrain", dto); }
	
	public int update(Train dto) { return sqlSession.update(namespace + ".updateTrain", dto); }
	
	public int insert(Train dto) { return sqlSession.insert(namespace + ".insertTrain", dto); }

	public int uelete(Train dto) { return sqlSession.update(namespace + ".ueleteTrain", dto); }
}
