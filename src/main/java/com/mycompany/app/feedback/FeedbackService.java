package com.mycompany.app.feedback;

import java.util.List;

public interface FeedbackService {

	public List<Feedback> selectList(FeedbackVo vo);
	public int selectOneCount(FeedbackVo vo);	
	public Feedback selectOne(FeedbackVo vo);
	public List<Feedback> selectUploaded(FeedbackVo vo);
	
	public int insert(Feedback dto) throws Exception;
	
	public int update(Feedback dto);
	
	public int delete(Feedback dto);
	
	public int uelete(Feedback dto);
	
}
