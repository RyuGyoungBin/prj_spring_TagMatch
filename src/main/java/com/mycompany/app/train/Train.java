package com.mycompany.app.train;

import java.sql.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

public class Train {

	public Object header;
	public String resultCode;
	public String resultMsg;

	public Object body;
	public int pageNo;
	public int totalCount;
	public int numOfRows;

	public Object[] items;
	public Object[] item;
	
	// api
	public String citycode;
	public String cityname;
	

	public String nodeId;
	public String nodeName;
	
	// 출발시간 도착 
	public String depPlaceId;
	public String arrPlaceId;
	//줄발일
	public String depPlandTime;
	
	@JsonFormat(pattern = "yyyyMMdd") //데이터 포맷 변환
    private Date depplandtime;
  	private Date arrplandtime;
  	
  	private String seq;
  	private String start;
  	private String startDateTime;
  	private String end;
  	private String endDateTime;
  	private String type;
  	private Integer sort;
  	private Integer adultNum;
  	private Integer childNum;
  	private Integer price;
  	private String member_seq;
  	private String tid;
  	
	
	
	
	public Date getDepplandtime() {
		return depplandtime;
	}
	public void setDepplandtime(Date depplandtime) {
		this.depplandtime = depplandtime;
	}
	public Date getArrplandtime() {
		return arrplandtime;
	}
	public void setArrplandtime(Date arrplandtime) {
		this.arrplandtime = arrplandtime;
	}
	public String getDepPlaceId() {
		return depPlaceId;
	}
	public void setDepPlaceId(String depPlaceId) {
		this.depPlaceId = depPlaceId;
	}
	public String getArrPlaceId() {
		return arrPlaceId;
	}
	public void setArrPlaceId(String arrPlaceId) {
		this.arrPlaceId = arrPlaceId;
	}
	public String getDepPlandTime() {
		return depPlandTime;
	}
	public void setDepPlandTime(String depPlandTime) {
		this.depPlandTime = depPlandTime;
	}
	public Object getHeader() {
		return header;
	}
	public void setHeader(Object header) {
		this.header = header;
	}
	public String getResultCode() {
		return resultCode;
	}
	public void setResultCode(String resultCode) {
		this.resultCode = resultCode;
	}
	public String getResultMsg() {
		return resultMsg;
	}
	public void setResultMsg(String resultMsg) {
		this.resultMsg = resultMsg;
	}
	public Object getBody() {
		return body;
	}
	public void setBody(Object body) {
		this.body = body;
	}
	public int getPageNo() {
		return pageNo;
	}
	public void setPageNo(int pageNo) {
		this.pageNo = pageNo;
	}
	public int getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}
	public int getNumOfRows() {
		return numOfRows;
	}
	public void setNumOfRows(int numOfRows) {
		this.numOfRows = numOfRows;
	}
	public Object[] getItems() {
		return items;
	}
	public void setItems(Object[] items) {
		this.items = items;
	}
	public String getCitycode() {
		return citycode;
	}
	public void setCitycode(String citycode) {
		this.citycode = citycode;
	}
	public String getCityname() {
		return cityname;
	}
	public void setCityname(String cityname) {
		this.cityname = cityname;
	}
	public Object[] getItem() {
		return item;
	}
	public void setItem(Object[] item) {
		this.item = item;
	}
	public String getNodeId() {
		return nodeId;
	}
	public void setNodeId(String nodeId) {
		this.nodeId = nodeId;
	}
	public String getNodeName() {
		return nodeName;
	}
	public void setNodeName(String nodeName) {
		this.nodeName = nodeName;
	}
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	public String getStart() {
		return start;
	}
	public void setStart(String start) {
		this.start = start;
	}
	public String getStartDateTime() {
		return startDateTime;
	}
	public void setStartDateTime(String startDateTime) {
		this.startDateTime = startDateTime;
	}
	public String getEnd() {
		return end;
	}
	public void setEnd(String end) {
		this.end = end;
	}
	public String getEndDateTime() {
		return endDateTime;
	}
	public void setEndDateTime(String endDateTime) {
		this.endDateTime = endDateTime;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public Integer getSort() {
		return sort;
	}
	public void setSort(Integer sort) {
		this.sort = sort;
	}
	public Integer getAdultNum() {
		return adultNum;
	}
	public void setAdultNum(Integer adultNum) {
		this.adultNum = adultNum;
	}
	public Integer getChildNum() {
		return childNum;
	}
	public void setChildNum(Integer childNum) {
		this.childNum = childNum;
	}
	public Integer getPrice() {
		return price;
	}
	public void setPrice(Integer price) {
		this.price = price;
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
