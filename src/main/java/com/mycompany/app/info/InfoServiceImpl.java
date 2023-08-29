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

	@Override
	public List<Info> selectInfoGroup(InfoVo vo) {return dao.selectInfoGroup(vo);}

	@Override
	public int insertHotelInfo(Info dto) {
		for(int i = 0 ; i < dto.getInfo_seqArray().length ; i++) {
			dto.setInfo_seq(dto.getInfo_seqArray()[i]);
		dao.insertHotelInfo(dto);
		}
		return 0;
	}

	@Override
	public int deleteHotelInfo(Info dto) {
		dao.deleteHotelInfo(dto);
		return 0;
	}
	
	@Override
	public int updateHotelInfo(Info dto, InfoVo vo) {
//		for(int j = 0; j < dto.getSeq().length(); j++) {
			dao.deleteHotelInfo(dto);
			for(int i = 0 ; i < dto.getInfo_seqArray().length ; i++) {
				dto.setInfo_seq(dto.getInfo_seqArray()[i]);
				dao.insertHotelInfo(dto);
					
			}
			
//		}
		return 0;
	}

	@Override
	public int insertSpotInfo(Info dto) {
		for(int i = 0 ; i < dto.getInfo_seqArray().length ; i++) {
			dto.setInfo_seq(dto.getInfo_seqArray()[i]);
			dao.insertSpotInfo(dto);
		}
		return 0;
	}

	@Override
	public int deleteSpotInfo(Info dto) {
		dao.deleteSpotInfo(dto);
		return 0;
	}

	@Override
	public int updateSpotInfo(Info dto, InfoVo vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	

	


	
}