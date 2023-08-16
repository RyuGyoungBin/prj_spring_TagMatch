package com.mycompany.app.spot;

import org.springframework.web.multipart.MultipartFile;

public class Spot {

	private String seq;
	private Integer type;
	private String name;
	private String zipCode;
	private String address;
	private String addressDetail;
	private String sido;
	private String tel;
	private String openTime;
	private String closedTime;
	private String adultPrice;
	private String childPrice;
	private String detailText;
	private String closed;
	private Integer delNy;
	private String info;
	
//	uploaded
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
	
	private MultipartFile[] uploadFile;
	private Integer uploadFileType;	
	private Integer uploadFileMaxNumber;
	private String[] uploadFileDeleteSeq;
	private String[] uploadFileDeletePathFile;	
	
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	public Integer getType() {
		return type;
	}
	public void setType(Integer type) {
		this.type = type;
	}

	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
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
	public String getOpenTime() {
		return openTime;
	}
	public void setOpenTime(String openTime) {
		this.openTime = openTime;
	}
	public String getClosedTime() {
		return closedTime;
	}
	public void setClosedTime(String closedTime) {
		this.closedTime = closedTime;
	}
	public String getAdultPrice() {
		return adultPrice;
	}
	public void setAdultPrice(String adultPrice) {
		this.adultPrice = adultPrice;
	}
	public String getChildPrice() {
		return childPrice;
	}
	public void setChildPrice(String childPrice) {
		this.childPrice = childPrice;
	}
	public String getDetailText() {
		return detailText;
	}
	public void setDetailText(String detailText) {
		this.detailText = detailText;
	}
	public String getClosed() {
		return closed;
	}
	public void setClosed(String closed) {
		this.closed = closed;
	}
	public Integer getDelNy() {
		return delNy;
	}
	public void setDelNy(Integer delNy) {
		this.delNy = delNy;
	}
	public String getInfo() {
		return info;
	}
	public void setInfo(String info) {
		this.info = info;
	}
	
	
	
	// 업로드
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
	public MultipartFile[] getUploadFile() {
		return uploadFile;
	}
	public void setUploadFile(MultipartFile[] uploadFile) {
		this.uploadFile = uploadFile;
	}
	public Integer getUploadFileType() {
		return uploadFileType;
	}
	public void setUploadFileType(Integer uploadFileType) {
		this.uploadFileType = uploadFileType;
	}
	public Integer getUploadFileMaxNumber() {
		return uploadFileMaxNumber;
	}
	public void setUploadFileMaxNumber(Integer uploadFileMaxNumber) {
		this.uploadFileMaxNumber = uploadFileMaxNumber;
	}
	public String[] getUploadFileDeleteSeq() {
		return uploadFileDeleteSeq;
	}
	public void setUploadFileDeleteSeq(String[] uploadFileDeleteSeq) {
		this.uploadFileDeleteSeq = uploadFileDeleteSeq;
	}
	public String[] getUploadFileDeletePathFile() {
		return uploadFileDeletePathFile;
	}
	public void setUploadFileDeletePathFile(String[] uploadFileDeletePathFile) {
		this.uploadFileDeletePathFile = uploadFileDeletePathFile;
	}
	
	

	
	
}
