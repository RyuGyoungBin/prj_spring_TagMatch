package com.mycompany.app.spot;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public interface SpotService {

	
	public int selectOneCount(SpotVo vo);	
	
	public List<Spot> selectList(SpotVo vo);
	
	public Spot selectOne(SpotVo vo);
	
	public int update(Spot dto) throws Exception;
	public int delete(Spot dto);
	public int insert(Spot dto) throws Exception;	
	public int uelete(Spot dto);


	List<Spot> selectListUploaded(SpotVo vo) throws Exception; 
	
	public void uploadFiles(MultipartFile[] multipartFiles, Spot dto, String tableName, int type, int maxNumber) throws Exception;
	
}
