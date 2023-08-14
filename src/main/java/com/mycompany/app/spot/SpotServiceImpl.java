package com.mycompany.app.spot;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;




@Service
public class SpotServiceImpl implements SpotService{

	
	@Autowired
	SpotDao dao;
	
//  paging
	@Override
	public int selectOneCount(SpotVo vo) {
		return dao.selectOneCount(vo);
	}

	@Override
	public List<Spot> selectList(SpotVo vo) { return dao.selectList(vo); }
	
	@Override
	public Spot selectOne(SpotVo vo) { return dao.selectOne(vo); 
}

	@Override
	public int update(Spot dto) throws Exception {

		return dao.update(dto);	
	}

	@Override
	public int delete(Spot dto) {

		return dao.delete(dto);	
	}

	@Override
	public int insert(Spot dto) throws Exception {

		
		 dao.insertSpot(dto);
		 dao.insertSpotCloseDay(dto);
		 return 1;
		
	}

	@Override
	public int uelete(Spot dto) {

		return dao.uelete(dto);	
	}

	@Override
	public List<Spot> selectListUploaded(SpotVo vo) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void uploadFiles(MultipartFile[] multipartFiles, Spot dto, String tableName, int type, int maxNumber)
			throws Exception {
		// TODO Auto-generated method stub
		
	}
	

}