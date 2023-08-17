package com.mycompany.app.feedback;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class FeedbackDao {

	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	private static String namespace = "com.mycompany.app.feedback.FeedbackMapper";
	
	public List<Feedback> selectList(FeedbackVo vo){return sqlSession.selectList(namespace +".selectList", vo);}
	public int selectOneCount(FeedbackVo vo){ return sqlSession.selectOne(namespace + ".selectOneCount", vo); }
	public Feedback selectOne(FeedbackVo vo) {return sqlSession.selectOne(namespace +".selectOne", vo);}
	public List<Feedback> selectUploaded(FeedbackVo vo) {return sqlSession.selectList(namespace +".selectUploaded", vo);};
	
	public int insert(Feedback dto) { return sqlSession.insert(namespace + ".insertFeedback", dto); }
	
	public int update(Feedback dto) { return sqlSession.update(namespace + ".updateFeedback", dto); }
	
	public int delete(Feedback dto) { return sqlSession.delete(namespace + ".deleteFeedback", dto); }
	
	public int uelete(Feedback dto) { return sqlSession.update(namespace + ".ueleteFeedback", dto); }
	
	public int insertUploaded(Feedback dto) { return sqlSession.insert(namespace + ".insertUploaded", dto); }
	
}
