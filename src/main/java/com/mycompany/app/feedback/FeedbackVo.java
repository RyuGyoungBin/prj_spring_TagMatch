package com.mycompany.app.feedback;

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
	private String hotelUsrType; 
	private String hotelUsr_price; 
	private String hotelUsr_hotel_seq;
	
	
	// ticketUsr
	private String ticketUsr_seq;
	private String ticketUsr_title;
	private String ticketUsrType;
	private String	 ticketUsr_ticktcol;
	private String ticketUsr_adualtNum;
	private String ticketUsr_childNum;
	private String ticketUsr_price;

	//trainUsr
	private String trainUsr_seq;
	private String trainUsr_start;
	private String trainUsr_startDateTime;
	private String	 trainUsr_end;
	private String trainUsr_endDateTime;
	private String trainUsrType;
	private String trainUsr_sort;
	private String trainUsr_adualtNum;
	private String trainUsr_childNum;
	private String trainUsr_price;

	// paging 
	private int thisPage = 1;									// 현재 페이지
//	private int rowNumToShow = Constants.ROW_NUM_TO_SHOW;		// 화면에 보여줄 데이터 줄 갯수
//	private int pageNumToShow = Constants.PAGE_NUM_TO_SHOW;		// 화면에 보여줄 페이징 번호 갯수
	
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
		
//		setThisPage(3);

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


	//ticketUsr S
	public String getTicketUsr_seq() {
		return ticketUsr_seq;
	}

	public void setTicketUsr_seq(String ticketUsr_seq) {
		this.ticketUsr_seq = ticketUsr_seq;
	}

	public String getTicketUsr_title() {
		return ticketUsr_title;
	}

	public void setTicketUsr_title(String ticketUsr_title) {
		this.ticketUsr_title = ticketUsr_title;
	}

	public String getTicketUsrType() {
		return ticketUsrType;
	}

	public void setTicketUsrType(String ticketUsrType) {
		this.ticketUsrType = ticketUsrType;
	}

	public String getTicketUsr_ticktcol() {
		return ticketUsr_ticktcol;
	}

	public void setTicketUsr_ticktcol(String ticketUsr_ticktcol) {
		this.ticketUsr_ticktcol = ticketUsr_ticktcol;
	}

	public String getTicketUsr_adualtNum() {
		return ticketUsr_adualtNum;
	}

	public void setTicketUsr_adualtNum(String ticketUsr_adualtNum) {
		this.ticketUsr_adualtNum = ticketUsr_adualtNum;
	}

	public String getTicketUsr_childNum() {
		return ticketUsr_childNum;
	}

	public void setTicketUsr_childNum(String ticketUsr_childNum) {
		this.ticketUsr_childNum = ticketUsr_childNum;
	}

	public String getTicketUsr_price() {
		return ticketUsr_price;
	}

	public void setTicketUsr_price(String ticketUsr_price) {
		this.ticketUsr_price = ticketUsr_price;
	}

					//ticketUsr E

					//trainUsr S
	public String getTrainUsr_seq() {
		return trainUsr_seq;
	}
	

	public void setTrainUsr_seq(String trainUsr_seq) {
		this.trainUsr_seq = trainUsr_seq;
	}
	public String getTrainUsr_start() {
		return trainUsr_start;
	}
	public void setTrainUsr_start(String trainUsr_start) {
		this.trainUsr_start = trainUsr_start;
	}
	public String getTrainUsr_startDateTime() {
		return trainUsr_startDateTime;
	}
	public void setTrainUsr_startDateTime(String trainUsr_startDateTime) {
		this.trainUsr_startDateTime = trainUsr_startDateTime;
	}
	public String getTrainUsr_end() {
		return trainUsr_end;
	}
	public void setTrainUsr_end(String trainUsr_end) {
		this.trainUsr_end = trainUsr_end;
	}
	public String getTrainUsr_endDateTime() {
		return trainUsr_endDateTime;
	}
	public void setTrainUsr_endDateTime(String trainUsr_endDateTime) {
		this.trainUsr_endDateTime = trainUsr_endDateTime;
	}
	public String getTrainUsrType() {
		return trainUsrType;
	}

	public void setTrainUsrType(String trainUsrType) {
		this.trainUsrType = trainUsrType;
	}

	public String getTrainUsr_sort() {
		return trainUsr_sort;
	}
	public void setTrainUsr_sort(String trainUsr_sort) {
		this.trainUsr_sort = trainUsr_sort;
	}
	public String getTrainUsr_adualtNum() {
		return trainUsr_adualtNum;
	}
	public void setTrainUsr_adualtNum(String trainUsr_adualtNum) {
		this.trainUsr_adualtNum = trainUsr_adualtNum;
	}
	public String getTrainUsr_childNum() {
		return trainUsr_childNum;
	}
	public void setTrainUsr_childNum(String trainUsr_childNum) {
		this.trainUsr_childNum = trainUsr_childNum;
	}
	public String getTrainUsr_price() {
		return trainUsr_price;
	}
	public void setTrainUsr_price(String trainUsr_price) {
		this.trainUsr_price = trainUsr_price;
	}


					//trainUsr E
	
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
	public String getHotelUsrType() {
		return hotelUsrType;
	}

	public void setHotelUsrType(String hotelUsrType) {
		this.hotelUsrType = hotelUsrType;
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
	
}