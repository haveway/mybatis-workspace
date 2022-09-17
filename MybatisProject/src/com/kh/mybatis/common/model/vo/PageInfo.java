package com.kh.mybatis.common.model.vo;

public class PageInfo {
	
	private int listCount; // 게시글의 총 갯수
	private int currentPage; // 요청한페이지(현재페이지)
	private int pageLimit; // 하단에 보여질 페이징바의 페이지 목록 최대 갯수
	private int boardLimit; // 해당 페이지에 보여질 게시글 최대 갯수
	
	private int startPage; // 해당 페이지 보여질 페이징바의 시작수
	private int endPage; // 해당 페이지에 보여질 페이징바의 끝수
	private int maxPage; // 가장 마지막 페이지 수
	
	public PageInfo() {
		super();
	}
	public PageInfo(int listCount, int currentPage, int pageLimit, int boardLimit, int startPage, int endPage,
			int maxPage) {
		super();
		this.listCount = listCount;
		this.currentPage = currentPage;
		this.pageLimit = pageLimit;
		this.boardLimit = boardLimit;
		this.startPage = startPage;
		this.endPage = endPage;
		this.maxPage = maxPage;
	}
	
	public int getListCount() {
		return listCount;
	}
	public void setListCount(int listCount) {
		this.listCount = listCount;
	}
	public int getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	public int getPageLimit() {
		return pageLimit;
	}
	public void setPageLimit(int pageLimit) {
		this.pageLimit = pageLimit;
	}
	public int getBoardLimit() {
		return boardLimit;
	}
	public void setBoardLimit(int boardLimit) {
		this.boardLimit = boardLimit;
	}
	public int getStartPage() {
		return startPage;
	}
	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}
	public int getendPage() {
		return endPage;
	}
	public void setendPage(int endPage) {
		this.endPage = endPage;
	}
	public int getMaxPage() {
		return maxPage;
	}
	public void setMaxPage(int maxPage) {
		this.maxPage = maxPage;
	}
	
	@Override
	public String toString() {
		return "PageInfo [listCount=" + listCount + ", currentPage=" + currentPage + ", pageLimit=" + pageLimit
				+ ", boardLimit=" + boardLimit + ", startPage=" + startPage + ", endPage=" + endPage + ", maxPage="
				+ maxPage + "]";
	}

}
