package com.mycompany.app.train;

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
	
	

	
}
