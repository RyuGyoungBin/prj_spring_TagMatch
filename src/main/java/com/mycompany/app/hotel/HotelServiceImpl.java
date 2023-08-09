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

	@Override
	public int selectOneCount(HotelVo vo) {return dao.selectOneCount(vo);}

	@Override
	public Hotel selectOne(HotelVo vo) {return dao.selectOne(vo);}

	@Override
	public int insert(Hotel dto) {
		dao.insert(dto);
		dao.insertHotelClose(dto);
		dao.insertHotelInfo(dto);
		dao.insertHotelRoom(dto);
		return 0;
	}

	@Override
	public int update(Hotel dto) {
		dao.update(dto);
		dao.updateHotelClose(dto);
		dao.updateHotelInfo(dto);
		dao.updateHotelRoom(dto);
		return 0;
	}

	@Override
	public int delete(Hotel dto) {
		dao.deleteHotelClose(dto);
		dao.deleteHotelInfo(dto);
		dao.deleteHotelRoom(dto);
		dao.delete(dto);
		return 0;
	}

	@Override
	public int uelete(Hotel dto) {
		dao.uelete(dto);
		dao.ueleteHotelInfo(dto);
		dao.ueleteHotelRoom(dto);
		dao.ueleteHotelClose(dto);
		return 0;
	}

}
