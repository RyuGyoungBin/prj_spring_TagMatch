package com.mycompany.app.feedback;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class FeedbackServiceImpl implements FeedbackService {

	
	@Autowired
	FeedbackDao dao;

	
	  @Override public List<Feedback> selectList(FeedbackVo vo) {return
	  dao.selectList(vo); }
	  
	  @Override public int selectOneCount(FeedbackVo vo) { return
	  dao.selectOneCount(vo); }
	  
	  @Override public Feedback selectOne(FeedbackVo vo) { return
	  dao.selectOne(vo); }
	 

	@Override
	public int insert(Feedback dto) {
		dao.insert(dto);

		
		return 0;
	}
	
	public int insertFeedback(Feedback dto) {
		dao.insertFeedback(dto);
		return 0;
	}


	@Override
	public int update(Feedback dto) {
		dao.update(dto);
		
		return 0;
	}

	@Override
	public int delete(Feedback dto) {
		dao.delete(dto);
		
		return 0;
	}

	@Override
	public int uelete(Feedback dto) {
		dao.uelete(dto);
		
		return 0;
	}



	

	
}