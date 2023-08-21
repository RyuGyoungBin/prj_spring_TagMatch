package com.mycompany.app.feedback;

import java.io.File;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.mycompany.app.common.constants.Constants;
import com.mycompany.app.hotel.Hotel;
import com.mycompany.app.hotel.HotelDao;

@Service
public class FeedbackServiceImpl implements FeedbackService {

	
	@Autowired
	HotelDao dao;

	@Override
	public List<Feedback> selectList(FeedbackVo vo) {return dao.selectList(vo); }

	@Override
	public int selectOneCount(FeedbackVo vo) { return dao.selectOneCount(vo); }

	@Override
	public Feedback selectOne(FeedbackVo vo) { return dao.selectOne(vo);	}

	@Override
	public List<Feedback> selectUploaded(FeedbackVo vo) {return dao.selectUploaded(vo); }

	@Override
	public int insert(Feedback dto) throws Exception {
		
		dao.insert(dto);
		
		return 0;
	}

	@Override
	public int update(Feedback dto) {
		dao.update(dto);
		
		return 0;
	}

	@Override
	public int delete(Feedback dto) {
		dao.delete(dto);
		
		return 0;
	}

	@Override
	public int uelete(Feedback dto) {
		dao.uelete(dto);
		
		return 0;
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
