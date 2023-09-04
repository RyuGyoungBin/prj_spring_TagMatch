package com.mycompany.app.train;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

public class TrainServiceImpl implements TrainService {

	@Autowired
	TrainDao dao;
	
	@Override
	public List<Train> selectList(Train dto) {return dao.select(dto);}

	@Override
	public int update(Train dto) {return dao.update(dto);}

	@Override
	public int insert(Train dto) {return dao.insert(dto);}

	@Override
	public int uelete(Train dto) {return dao.uelete(dto);}

}
