package com.mycompany.app.feedback;

import org.springframework.web.multipart.MultipartFile;

public class FeedbackVo {

	
	private String seq;
	private String type;
	private String review; 
	private String reviewTitle; 

	private String starRating; 
	private String defaultNy; 
	private String member_seq; 
	private String type_seq;


	// hotelUsr
	private String hotelUsr_seq; 
	private String hotelUsr_start; 
	private String hotelUsr_end; 
	private String hotelUsr_type; 
	private String hotelUsr_price; 
	private String hotelUsr_hotel_seq;
	
	// 이미지 업로드 
		private String tableName;
		
		private Integer sort;
		private String path;
		private String originalName;

		private String uuidName;
		private String ext;
		private long size;
		private String pseq;
		


		private MultipartFile[] uploadImg;
		private Integer uploadImgType;	
		private Integer uploadImgMaxNumber;
		private String[] uploadImgDeleteSeq;
		private String[] uploadImgDeletePathFile;	
		
		private MultipartFile[] uploadImghotelUsr;
		private Integer uploadImghotelUsrType;	
		private Integer uploadImghotelUsrMaxNumber;
		private String[] uploadImghotelUsrDeleteSeq;
		private String[] uploadImghotelUsreletePathFile;	
	
	
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getReview() {
		return review;
	}
	public void setReview(String review) {
		this.review = review;
	}
	public String getReviewTitle() {
		return reviewTitle;
	}
	public void setReviewTitle(String reviewTitle) {
		this.reviewTitle = reviewTitle;
	}
	public String getStarRating() {
		return starRating;
	}
	public void setStarRating(String starRating) {
		this.starRating = starRating;
	}
	public String getDefaultNy() {
		return defaultNy;
	}
	public void setDefaultNy(String defaultNy) {
		this.defaultNy = defaultNy;
	}
	public String getMember_seq() {
		return member_seq;
	}
	public void setMember_seq(String member_seq) {
		this.member_seq = member_seq;
	}
	public String getType_seq() {
		return type_seq;
	}
	public void setType_seq(String type_seq) {
		this.type_seq = type_seq;
	}
	public String getHotelUsr_seq() {
		return hotelUsr_seq;
	}
	public void setHotelUsr_seq(String hotelUsr_seq) {
		this.hotelUsr_seq = hotelUsr_seq;
	}
	public String getHotelUsr_start() {
		return hotelUsr_start;
	}
	public void setHotelUsr_start(String hotelUsr_start) {
		this.hotelUsr_start = hotelUsr_start;
	}
	public String getHotelUsr_end() {
		return hotelUsr_end;
	}
	public void setHotelUsr_end(String hotelUsr_end) {
		this.hotelUsr_end = hotelUsr_end;
	}
	public String getHotelUsr_type() {
		return hotelUsr_type;
	}
	public void setHotelUsr_type(String hotelUsr_type) {
		this.hotelUsr_type = hotelUsr_type;
	}
	public String getHotelUsr_price() {
		return hotelUsr_price;
	}
	public void setHotelUsr_price(String hotelUsr_price) {
		this.hotelUsr_price = hotelUsr_price;
	}
	public String getHotelUsr_hotel_seq() {
		return hotelUsr_hotel_seq;
	}
	public void setHotelUsr_hotel_seq(String hotelUsr_hotel_seq) {
		this.hotelUsr_hotel_seq = hotelUsr_hotel_seq;
	}
	public String getTableName() {
		return tableName;
	}
	public void setTableName(String tableName) {
		this.tableName = tableName;
	}
	public Integer getSort() {
		return sort;
	}
	public void setSort(Integer sort) {
		this.sort = sort;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	public String getOriginalName() {
		return originalName;
	}
	public void setOriginalName(String originalName) {
		this.originalName = originalName;
	}
	public String getUuidName() {
		return uuidName;
	}
	public void setUuidName(String uuidName) {
		this.uuidName = uuidName;
	}
	public String getExt() {
		return ext;
	}
	public void setExt(String ext) {
		this.ext = ext;
	}
	public long getSize() {
		return size;
	}
	public void setSize(long size) {
		this.size = size;
	}
	public String getPseq() {
		return pseq;
	}
	public void setPseq(String pseq) {
		this.pseq = pseq;
	}
	public MultipartFile[] getUploadImg() {
		return uploadImg;
	}
	public void setUploadImg(MultipartFile[] uploadImg) {
		this.uploadImg = uploadImg;
	}
	public Integer getUploadImgType() {
		return uploadImgType;
	}
	public void setUploadImgType(Integer uploadImgType) {
		this.uploadImgType = uploadImgType;
	}
	public Integer getUploadImgMaxNumber() {
		return uploadImgMaxNumber;
	}
	public void setUploadImgMaxNumber(Integer uploadImgMaxNumber) {
		this.uploadImgMaxNumber = uploadImgMaxNumber;
	}
	public String[] getUploadImgDeleteSeq() {
		return uploadImgDeleteSeq;
	}
	public void setUploadImgDeleteSeq(String[] uploadImgDeleteSeq) {
		this.uploadImgDeleteSeq = uploadImgDeleteSeq;
	}
	public String[] getUploadImgDeletePathFile() {
		return uploadImgDeletePathFile;
	}
	public void setUploadImgDeletePathFile(String[] uploadImgDeletePathFile) {
		this.uploadImgDeletePathFile = uploadImgDeletePathFile;
	}
	public MultipartFile[] getUploadImghotelUsr() {
		return uploadImghotelUsr;
	}
	public void setUploadImghotelUsr(MultipartFile[] uploadImghotelUsr) {
		this.uploadImghotelUsr = uploadImghotelUsr;
	}
	public Integer getUploadImghotelUsrType() {
		return uploadImghotelUsrType;
	}
	public void setUploadImghotelUsrType(Integer uploadImghotelUsrType) {
		this.uploadImghotelUsrType = uploadImghotelUsrType;
	}
	public Integer getUploadImghotelUsrMaxNumber() {
		return uploadImghotelUsrMaxNumber;
	}
	public void setUploadImghotelUsrMaxNumber(Integer uploadImghotelUsrMaxNumber) {
		this.uploadImghotelUsrMaxNumber = uploadImghotelUsrMaxNumber;
	}
	public String[] getUploadImghotelUsrDeleteSeq() {
		return uploadImghotelUsrDeleteSeq;
	}
	public void setUploadImghotelUsrDeleteSeq(String[] uploadImghotelUsrDeleteSeq) {
		this.uploadImghotelUsrDeleteSeq = uploadImghotelUsrDeleteSeq;
	}
	public String[] getUploadImghotelUsreletePathFile() {
		return uploadImghotelUsreletePathFile;
	}
	public void setUploadImghotelUsreletePathFile(String[] uploadImghotelUsreletePathFile) {
		this.uploadImghotelUsreletePathFile = uploadImghotelUsreletePathFile;
	}
	
	
	
}
