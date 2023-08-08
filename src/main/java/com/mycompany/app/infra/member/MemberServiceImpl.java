package com.mycompany.app.infra.member;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;




	@Service
	public class MemberServiceImpl implements MemberService {
	
	@Autowired
	MemberDao dao;
	
//  paging
	@Override
	public int selectOneCount(MemberVo vo) {
		// TODO 
		return dao.selectOneCount(vo);
	}

	@Override
	public List<Member> selectList(MemberVo vo) { return dao.selectList(vo); }
	
	@Override
	public Member selectOne(MemberVo vo) { return dao.selectOne(vo); }
	
	@Override
	public Member selectXdm(MemberVo vo) { return dao.selectXdm(vo); }
	
	@Override
	public Member selectUsr(MemberVo vo) { return dao.selectUsr(vo); }

	@Override
	public int update(Member dto) throws Exception {
		
		return dao.update(dto);	
	}
	
	@Override
	public int delete(Member dto) {
		return dao.delete(dto);	
	}
	
//	@Override
//	public int insert(Member dto) throws Exception {
//		dao.insert(dto);
//		uploadFiles(dto.getUploadImgProfile(), dto, "memberUploaded", dto.getUploadImgProfileType(), dto.getUploadImgProfileMaxNumber());
//		uploadFiles(dto.getUploadImg(), dto, "memberUploaded", dto.getUploadImgType(), dto.getUploadImgMaxNumber());
//		uploadFiles(dto.getUploadFile(), dto, "memberUploaded", dto.getUploadFileType(), dto.getUploadFileMaxNumber());
//		return 0;	
//	}
	
	@Override
	public int uelete(Member dto) {
		return dao.uelete(dto);	
	}

	public int selectOneCheckId(MemberVo vo) {

		return dao.selectOneCheckId(vo);
	}

	@Override
	public int insert(Member dto) throws Exception {
		return dao.insert(dto);
	}

	@Override
	public List<Member> selectListUploaded(MemberVo vo) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void uploadFiles(MultipartFile[] multipartFiles, Member dto, String tableName, int type, int maxNumber)
			throws Exception {
		// TODO Auto-generated method stub
		
	}

//	@Override
//	public List<Member> selectListUploaded(MemberVo vo) throws Exception {
//		// TODO Auto-generated method stub
//		return null;
//	}

//	@Override
//	public void uploadFiles(MultipartFile[] multipartFiles, Member dto, String tableName, int type, int maxNumber)
//			throws Exception {
//		// TODO Auto-generated method stub
//		
//	}
	
	



}