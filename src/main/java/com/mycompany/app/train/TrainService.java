package com.mycompany.app.train;

import java.util.List;

import org.springframework.stereotype.Service;

@Service
public interface TrainService {

	public List<Train> selectList(Train vo);
	
	public int update(Train dto);
	public int insert(Train dto);	
	public int uelete(Train dto);
	
}
