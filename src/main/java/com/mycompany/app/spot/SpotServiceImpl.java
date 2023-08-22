package com.mycompany.app.spot;

import java.io.File;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.mycompany.app.common.constant.Constants;

@Service
public class SpotServiceImpl implements SpotService{

	@Autowired
	SpotDao dao;
	
//  paging
	@Override
	public int selectOneCount(SpotVo vo) {return dao.selectOneCount(vo); }

	@Override
	public List<Spot> selectList(SpotVo vo) { return dao.selectList(vo); }
	
	@Override
	public Spot selectOne(SpotVo vo) { return dao.selectOne(vo); }

	@Override
	public int update(Spot dto){return dao.update(dto); }

	@Override

	public int delete(Spot dto) {
		dao.deleteSpotCloseDay(dto);
		dao.delete(dto);	
		return 0; 
	}


	@Override
	public int insert(Spot dto) throws Exception {
		 dao.insertSpot(dto);
		 dao.insertSpotCloseDay(dto);
		 
		uploadFiles(dto.getUploadImg(), dto, "spotUploaded", dto.getUploadImgType(), dto.getUploadImgMaxNumber());
    	uploadFiles(dto.getUploadImgSpot(), dto, "spotUploaded", dto.getUploadImgSpotType(), dto.getUploadImgSpotMaxNumber());
    	return 0;
    	
	}

	@Override
	public int uelete(Spot dto) {return dao.uelete(dto); } 
	@Override
	public List<Spot> selectListUploaded(SpotVo vo){return dao.selectListUploaded(vo); }

	public static String nowString() throws Exception {
		LocalDateTime localDateTime = LocalDateTime.now();
		String localDateTimeString = localDateTime.format(DateTimeFormatter.ofPattern(Constants.DATETIME_FORMAT_BASIC));
		return localDateTimeString;
	}
	
	public void uploadFiles(MultipartFile[] multipartFiles, Spot dto, String tableName, int type, int maxNumber) throws Exception {
		
		for(int i=0; i<multipartFiles.length; i++) {
    	
			if(!multipartFiles[i].isEmpty()) {
				
				String className = dto.getClass().getSimpleName().toString().toLowerCase();		
				String fileName = multipartFiles[i].getOriginalFilename();
				String ext = fileName.substring(fileName.lastIndexOf(".") + 1);
				String uuid = UUID.randomUUID().toString();
				String uuidFileName = uuid + "." + ext;
				String pathModule = className;
				String nowString = nowString();
				String pathDate = nowString.substring(0,4) + "/" + nowString.substring(5,7) + "/" + nowString.substring(8,10); 
				String path = Constants.UPLOAD_PATH_PREFIX + "/" + pathModule + "/" + pathDate + "/";
				String pathForView = Constants.UPLOAD_PATH_PREFIX_FOR_VIEW + "/" + pathModule + "/" + pathDate + "/";
				
				File uploadPath = new File(path);
				
				if (!uploadPath.exists()) {
					uploadPath.mkdir();
				} else {
					// by pass
				}
				  
				multipartFiles[i].transferTo(new File(path + uuidFileName));
				
				dto.setPath(pathForView);
				dto.setOriginalName(fileName);
				dto.setUuidName(uuidFileName);
				dto.setExt(ext);
				dto.setSize(multipartFiles[i].getSize());
				
				dto.setTableName(tableName);
				dto.setType(type);
//				dto.setDefaultNy();
				dto.setSort(maxNumber + i);
				dto.setPseq(dto.getSeq());

				dao.insertUploaded(dto);
    		}
		} 
	}

	

}
