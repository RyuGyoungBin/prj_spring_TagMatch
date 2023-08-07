package com.mycompany.app.hotel;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class HotelServiceImpl implements HotelService{

	@Autowired
	HotelDao dao;
	
	@Override
	public List<Hotel> selectList(HotelVo vo) {return dao.selectList(vo);}

}
