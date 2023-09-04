package com.mycompany.app.spot;

import java.util.List;

import org.springframework.ui.Model;
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
	private Integer adultPrice;
	private Integer childPrice;
	private String detailText;
	private String closed;
	private Integer delNy; 
	private String info;
	
	private String date;
	
	//spot info
	private String info_seq;
	private String[] info_seqArray;
	
//	uploaded
	private String tableName;
	private Integer sort;

	private String path;
	private String originalName;
	private String uuidName;
	private String ext;
	private long size;
	private String pseq;
	
	private String member_seq;
	private String tid;
	


	private MultipartFile[] uploadImg;
	private Integer uploadImgType;	
	private Integer uploadImgMaxNumber;
	private String[] uploadImgDeleteSeq;
	private String[] uploadImgDeletePathFile;	
	
	private MultipartFile[] uploadImgSpot;
	private Integer uploadImgSpotType;	
	private Integer uploadImgSpotMaxNumber;
	private String[] uploadImgSpotDeleteSeq;
	private String[] uploadImgSpotDeletePathFile;
	
	//리뷰 S
	private Double starRating;
	private Integer cnt;
	private String spotUsr_seq;
	private String spot_seq;
	
	public Double getStarRating() {
		return starRating;
	}
	public void setStarRating(Double starRating) {
		this.starRating = starRating;
	}
	public Integer getCnt() {
		return cnt;
	}
	public void setCnt(Integer cnt) {
		this.cnt = cnt;
	}
	public String getSpotUsr_seq() {
		return spotUsr_seq;
	}
	public void setSpotUsr_seq(String spotUsr_seq) {
		this.spotUsr_seq = spotUsr_seq;
	}
	public String getSpot_seq() {
		return spot_seq;
	}
	public void setSpot_seq(String spot_seq) {
		this.spot_seq = spot_seq;
	//리뷰 E
	
	

	}
	//info S
	public String getInfo_seq() {
		return info_seq;
	}
	public void setInfo_seq(String info_seq) {
		this.info_seq = info_seq;
	}
	public String[] getInfo_seqArray() {
		return info_seqArray;
	}
	public void setInfo_seqArray(String[] info_seqArray) {
		this.info_seqArray = info_seqArray;
	}
	//info E
	
	/*닫는날 S*/ 
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	/*닫는날 E*/ 
	
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
	public Integer getAdultPrice() {
		return adultPrice;
	}
	public void setAdultPrice(Integer adultPrice) {
		this.adultPrice = adultPrice;
	}
	public Integer getChildPrice() {
		return childPrice;
	}
	public void setChildPrice(Integer childPrice) {
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
	public MultipartFile[] getUploadImgSpot() {
		return uploadImgSpot;
	}
	public void setUploadImgSpot(MultipartFile[] uploadImgSpot) {
		this.uploadImgSpot = uploadImgSpot;
	}
	public Integer getUploadImgSpotType() {
		return uploadImgSpotType;
	}
	public void setUploadImgSpotType(Integer uploadImgSpotType) {
		this.uploadImgSpotType = uploadImgSpotType;
	}
	public Integer getUploadImgSpotMaxNumber() {
		return uploadImgSpotMaxNumber;
	}
	public void setUploadImgSpotMaxNumber(Integer uploadImgSpotMaxNumber) {
		this.uploadImgSpotMaxNumber = uploadImgSpotMaxNumber;
	}
	public String[] getUploadImgSpotDeleteSeq() {
		return uploadImgSpotDeleteSeq;
	}
	public void setUploadImgSpotDeleteSeq(String[] uploadImgSpotDeleteSeq) {
		this.uploadImgSpotDeleteSeq = uploadImgSpotDeleteSeq;
	}
	public String[] getUploadImgSpotDeletePathFile() {
		return uploadImgSpotDeletePathFile;
	}
	public void setUploadImgSpotDeletePathFile(String[] uploadImgSpotDeletePathFile) {
		this.uploadImgSpotDeletePathFile = uploadImgSpotDeletePathFile;
	}
	public String getMember_seq() {
		return member_seq;
	}
	public void setMember_seq(String member_seq) {
		this.member_seq = member_seq;
	}
	public String getTid() {
		return tid;
	}
	public void setTid(String tid) {
		this.tid = tid;
	}

	

	
	
}
