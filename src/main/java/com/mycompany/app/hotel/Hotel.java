package com.mycompany.app.hotel;

import org.springframework.web.multipart.MultipartFile;

public class Hotel {

//	hotel
	private String seq;
	private Integer hotelType;
	private String name;
	private String zipCode;
	private String address;
	private String addressDetail;
	private String sido;
	private String tel;
	private String checkInTime;
	private String checkOutTime;
	private String detailText;
//	hotelinfo
	private String info_seq;
	private String[] info_seqArray;
//	hotelCloseDay
	private String date;
//	hotelRoom
	private Integer roomType;
	private String roomName;
	private String price;
	private Integer roomDefaultNy;
	private Integer roomDelNy;
	private Integer roomNum;
	private String hotel_seq;
//	hotelUploaded
	private String tableName;

	private Integer type;
	private Integer defaultNy;
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
	
	private MultipartFile[] uploadImgRoom;
	private Integer uploadImgRoomType;
	private Integer uploadImgRoomMaxNumber;
	private String[] uploadImgRoomDeleteSeq;
	private String[] uploadImgRoomDeletePathFile;
	
	private Double starRating;
	private Integer cnt;
	private String hotelUsr_seq;
	
	
	public String getHotelUsr_seq() {
		return hotelUsr_seq;
	}
	public void setHotelUsr_seq(String hotelUsr_seq) {
		this.hotelUsr_seq = hotelUsr_seq;
	}
	public Integer getCnt() {
		return cnt;
	}
	public void setCnt(Integer cnt) {
		this.cnt = cnt;
	}
	public Double getStarRating() {
		return starRating;
	}
	public void setStarRating(Double starRating) {
		this.starRating = starRating;
	}
	public String[] getInfo_seqArray() {
		return info_seqArray;
	}
	public void setInfo_seqArray(String[] info_seqArray) {
		this.info_seqArray = info_seqArray;
	}
	public String getSeq() {
		return seq;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	public Integer getHotelType() {
		return hotelType;
	}
	public void setHotelType(Integer hotelType) {
		this.hotelType = hotelType;
	}
	public String getZipCode() {
		return zipCode;
	}
	public void setZipCode(String zipCode) {
		this.zipCode = zipCode;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getAddressDetail() {
		return addressDetail;
	}
	public void setAddressDetail(String addressDetail) {
		this.addressDetail = addressDetail;
	}
	public String getSido() {
		return sido;
	}
	public void setSido(String sido) {
		this.sido = sido;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getCheckInTime() {
		return checkInTime;
	}
	public void setCheckInTime(String checkInTime) {
		this.checkInTime = checkInTime;
	}
	public String getCheckOutTime() {
		return checkOutTime;
	}
	public void setCheckOutTime(String checkOutTime) {
		this.checkOutTime = checkOutTime;
	}
	public String getDetailText() {
		return detailText;
	}
	public void setDetailText(String detailText) {
		this.detailText = detailText;
	}
	
	public String getInfo_seq() {
		return info_seq;
	}
	public void setInfo_seq(String info_seq) {
		this.info_seq = info_seq;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public Integer getRoomType() {
		return roomType;
	}
	public void setRoomType(Integer roomType) {
		this.roomType = roomType;
	}
	public String getRoomName() {
		return roomName;
	}
	public void setRoomName(String roomName) {
		this.roomName = roomName;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public Integer getRoomDefaultNy() {
		return roomDefaultNy;
	}
	public void setRoomDefaultNy(Integer roomDefaultNy) {
		this.roomDefaultNy = roomDefaultNy;
	}
	public Integer getRoomDelNy() {
		return roomDelNy;
	}
	public void setRoomDelNy(Integer roomDelNy) {
		this.roomDelNy = roomDelNy;
	}
	public Integer getRoomNum() {
		return roomNum;
	}
	public void setRoomNum(Integer roomNum) {
		this.roomNum = roomNum;
	}
	public String getHotel_seq() {
		return hotel_seq;
	}
	public void setHotel_seq(String hotel_seq) {
		this.hotel_seq = hotel_seq;
	}
	public String getTableName() {
		return tableName;
	}
	public void setTableName(String tableName) {
		this.tableName = tableName;
	}
	public Integer getType() {
		return type;
	}
	public void setType(Integer type) {
		this.type = type;
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
	public MultipartFile[] getUploadImgRoom() {
		return uploadImgRoom;
	}
	public void setUploadImgRoom(MultipartFile[] uploadImgRoom) {
		this.uploadImgRoom = uploadImgRoom;
	}
	public Integer getUploadImgRoomType() {
		return uploadImgRoomType;
	}
	public void setUploadImgRoomType(Integer uploadImgRoomType) {
		this.uploadImgRoomType = uploadImgRoomType;
	}
	public Integer getUploadImgRoomMaxNumber() {
		return uploadImgRoomMaxNumber;
	}
	public void setUploadImgRoomMaxNumber(Integer uploadImgRoomMaxNumber) {
		this.uploadImgRoomMaxNumber = uploadImgRoomMaxNumber;
	}
	public String[] getUploadImgRoomDeleteSeq() {
		return uploadImgRoomDeleteSeq;
	}
	public void setUploadImgRoomDeleteSeq(String[] uploadImgRoomDeleteSeq) {
		this.uploadImgRoomDeleteSeq = uploadImgRoomDeleteSeq;
	}
	public String[] getUploadImgRoomDeletePathFile() {
		return uploadImgRoomDeletePathFile;
	}
	public void setUploadImgRoomDeletePathFile(String[] uploadImgRoomDeletePathFile) {
		this.uploadImgRoomDeletePathFile = uploadImgRoomDeletePathFile;
	}
	public Integer getDefaultNy() {
		return defaultNy;
	}
	public void setDefaultNy(Integer defaultNy) {
		this.defaultNy = defaultNy;
	}
	
	
}
