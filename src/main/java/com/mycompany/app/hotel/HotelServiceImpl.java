package com.mycompany.app.hotel;

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
	public List<Hotel> selectUploaded(HotelVo vo) {return dao.selectUploaded(vo);}
	
	@Override
	public List<Hotel> selectUploadedOne(HotelVo vo) {return dao.selectUploadedOne(vo);}
	
	@Override
	public List<Hotel> selectHotelRoom(HotelVo vo) {return dao.selectHotelRoom(vo);}
	
	@Override
	public List<Hotel> selectRating(HotelVo vo) {return dao.selectRating(vo);}
	
	@Override
	public Hotel selectRatingOne(HotelVo vo) {return dao.selectRatingOne(vo);}

	@Override
	public int insert(Hotel dto) throws Exception {
		dao.insert(dto);
//		dao.insertHotelClose(dto);
		dao.insertHotelRoom(dto);
		
//		for(int i = 0 ; i < dto.getInfo_seqArray().length ; i++) {
//			dto.setInfo_seq(dto.getInfo_seqArray()[i]);
//			dao.insertHotelInfo(dto);
//		}
		
    	uploadFiles(dto.getUploadImg(), dto, "hotelUploaded", dto.getUploadImgType(), dto.getUploadImgMaxNumber());
    	uploadFiles(dto.getUploadImgRoom(), dto, "hotelUploaded", dto.getUploadImgRoomType(), dto.getUploadImgRoomMaxNumber());  
    	
		return 0;
	}

	@Override
	public int update(Hotel dto) throws Exception {
		dao.update(dto);
//		dao.updateHotelClose(dto);
//		dao.updateHotelInfo(dto); 
		dao.updateHotelRoom(dto);
		
    	uploadFiles(dto.getUploadImg(), dto, "hotelUploaded", dto.getUploadImgType(), dto.getUploadImgMaxNumber());
    	uploadFiles(dto.getUploadImgRoom(), dto, "hotelUploaded", dto.getUploadImgRoomType(), dto.getUploadImgRoomMaxNumber());  
		return 0;
	}

	@Override
	public int delete(Hotel dto) {
//		dao.deleteHotelClose(dto);
//		dao.deleteHotelInfo(dto);
		dao.deleteHotelRoom(dto);
		dao.delete(dto);
		return 0;
	}

	@Override
	public int uelete(Hotel dto) {
		dao.uelete(dto);
//		dao.ueleteHotelInfo(dto);
		dao.ueleteHotelRoom(dto);
//		dao.ueleteHotelClose(dto);
		return 0;
	}

	public static String nowString() throws Exception {
		LocalDateTime localDateTime = LocalDateTime.now();
		String localDateTimeString = localDateTime.format(DateTimeFormatter.ofPattern(Constants.DATETIME_FORMAT_BASIC));
		return localDateTimeString;
	}
	
	public void uploadFiles(MultipartFile[] multipartFiles, Hotel dto, String tableName, int type, int maxNumber) throws Exception {
		
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
