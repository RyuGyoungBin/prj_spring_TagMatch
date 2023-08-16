package com.mycompany.app.info;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

	@Service
	public class InfoServiceImpl implements InfoService {
	
	@Autowired
	InfoDao dao;

//	paging
	@Override
	public int selectOneCount(InfoVo vo) {return dao.selectOneCount(vo);}
	
	@Override
	public List<Info> selectList(InfoVo vo) { return dao.selectList(vo); }
	
	@Override
	public List<Info> selectHotel(InfoVo vo) {return dao.selectHotel(vo);}
	
	@Override
	public List<Info> selectSpot(InfoVo vo) {return dao.selectSpot(vo);}
	
	@Override
	public Info selectOne(InfoVo vo) { return dao.selectOne(vo); }

	@Override
	public int update(Info dto) {return dao.update(dto);}
	
	@Override
	public int delete(Info dto) {return dao.delete(dto);}
	
	@Override
	public int insert(Info dto) {return dao.insert(dto);}
	
	@Override
	public int uelete(Info dto) {return dao.uelete(dto);}

	

	


	
}