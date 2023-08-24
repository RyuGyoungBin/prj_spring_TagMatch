package com.mycompany.app.spot;

import org.springframework.web.multipart.MultipartFile;

public class SpotVo {

	
	private String seq;
	private Integer type;
	private Integer spottype;
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
	
	
//	spotInfo
	private String info_seq;
	//soptCloseDay
	private String date;

	// 이미지 업로드 
	private String tableName;
		 
//	private Integer imgType;
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
	
	private MultipartFile[] uploadImgSpot;
	private Integer uploadImgSpotType;	
	private Integer uploadImgSpotMaxNumber;
	private String[] uploadImgSpotDeleteSeq;
	private String[] uploadImgSpoteletePathFile;	

		// paging 
		private int thisPage = 1;									// 현재 페이지
//		private int rowNumToShow = Constants.ROW_NUM_TO_SHOW;		// 화면에 보여줄 데이터 줄 갯수
//		private int pageNumToShow = Constants.PAGE_NUM_TO_SHOW;		// 화면에 보여줄 페이징 번호 갯수
		
		private int rowNumToShow = 10;								// 화면에 보여줄 데이터 줄 갯수
		private int pageNumToShow = 5;								// 화면에 보여줄 페이징 번호 갯수
		private int totalRows;										// 전체 데이터 갯수
		private int totalPages;										// 전체 페이지 번호
		private int startPage;										// 시작 페이지 번호
		private int endPage;										// 마지막 페이지 번호

		private int startRnumForOracle = 1;							// 쿼리 시작 row
		private int endRnumForOracle;								// 쿼리 끝 row
		private Integer RNUM;

		private int startRnumForMysql = 0;							// 쿼리 시작 row
		
		public void setParamsPaging(int totalRows) {
			
//			setThisPage(3);

			setTotalRows(totalRows);

			if (getTotalRows() == 0) {
				setTotalPages(1);
			} else {
				setTotalPages(getTotalRows() / getRowNumToShow());
			}

			if (getTotalRows() % getRowNumToShow() > 0) {
				setTotalPages(getTotalPages() + 1);
			}

			if (getTotalPages() < getThisPage()) {
				setThisPage(getTotalPages());
			}
			
			setStartPage(((getThisPage() - 1) / getPageNumToShow()) * getPageNumToShow() + 1);

			setEndPage(getStartPage() + getPageNumToShow() - 1);

			if (getEndPage() > getTotalPages()) {
				setEndPage(getTotalPages());
			}
			
			setEndRnumForOracle((getRowNumToShow() * getThisPage()));
			setStartRnumForOracle((getEndRnumForOracle() - getRowNumToShow()) + 1);
			if (getStartRnumForOracle() < 1) setStartRnumForOracle(1);
			
			if (thisPage == 1) {
				setStartRnumForMysql(0);
			} else {
				setStartRnumForMysql((getRowNumToShow() * (getThisPage()-1)));
			}
			
			System.out.println("getThisPage():" + getThisPage());
			System.out.println("getTotalRows():" + getTotalRows());
			System.out.println("getRowNumToShow():" + getRowNumToShow());
			System.out.println("getTotalPages():" + getTotalPages());
			System.out.println("getStartPage():" + getStartPage());
			System.out.println("getEndPage():" + getEndPage());		
			System.out.println("getStartRnumForOracle():" + getStartRnumForOracle());
			System.out.println("getEndRnumForOracle():" + getEndRnumForOracle());
			System.out.println("getStartRnumForMysql(): " + getStartRnumForMysql());
			
		}

		
		
//		public Integer getimgType() {
//			return imgType;
//		}
//
//
//
//		public void setimgType(Integer imgtype) {
//			imgType = imgtype;
//		}



		public String getInfo_seq() {
			return info_seq;
		}



		public void setInfo_seq(String info_seq) {
			this.info_seq = info_seq;
		}



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

		
		public Integer getSpottype() {
			return spottype;
		}



		public void setSpottype(Integer spottype) {
			this.spottype = spottype;
		}



		//		================paging=================
		public int getThisPage() {
			return thisPage;
		}

		public void setThisPage(int thisPage) {
			this.thisPage = thisPage;
		}

		public int getRowNumToShow() {
			return rowNumToShow;
		}

		public void setRowNumToShow(int rowNumToShow) {
			this.rowNumToShow = rowNumToShow;
		}

		public int getPageNumToShow() {
			return pageNumToShow;
		}

		public void setPageNumToShow(int pageNumToShow) {
			this.pageNumToShow = pageNumToShow;
		}

		public int getTotalRows() {
			return totalRows;
		}

		public void setTotalRows(int totalRows) {
			this.totalRows = totalRows;
		}

		public int getTotalPages() {
			return totalPages;
		}

		public void setTotalPages(int totalPages) {
			this.totalPages = totalPages;
		}

		public int getStartPage() {
			return startPage;
		}

		public void setStartPage(int startPage) {
			this.startPage = startPage;
		}

		public int getEndPage() {
			return endPage;
		}

		public void setEndPage(int endPage) {
			this.endPage = endPage;
		}

		public int getStartRnumForOracle() {
			return startRnumForOracle;
		}

		public void setStartRnumForOracle(int startRnumForOracle) {
			this.startRnumForOracle = startRnumForOracle;
		}

		public int getEndRnumForOracle() {
			return endRnumForOracle;
		}

		public void setEndRnumForOracle(int endRnumForOracle) {
			this.endRnumForOracle = endRnumForOracle;
		}

		public Integer getRNUM() {
			return RNUM;
		}

		public void setRNUM(Integer rNUM) {
			RNUM = rNUM;
		}

		public int getStartRnumForMysql() {
			return startRnumForMysql;
		}

		public void setStartRnumForMysql(int startRnumForMysql) {
			this.startRnumForMysql = startRnumForMysql;
		}
//		================paging=================		
		
		/*닫는날 S*/ 
		public String getDate() {
			return date;
		}
		public void setDate(String date) {
			this.date = date;
		}
		/*닫는날 E*/ 
		
		
		
	
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

		
		
//		==========    업로드 -=== = = = = = == = =
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

		public String[] getUploadImgSpoteletePathFile() {
			return uploadImgSpoteletePathFile;
		}

		public void setUploadImgSpoteletePathFile(String[] uploadImgSpoteletePathFile) {
			this.uploadImgSpoteletePathFile = uploadImgSpoteletePathFile;
		}

		
		

		
		
		
		
}
