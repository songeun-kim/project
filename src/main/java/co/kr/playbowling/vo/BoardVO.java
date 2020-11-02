package co.kr.playbowling.vo;

import java.util.Date;

public class BoardVO {
	private int bnum;
	private String bid;
	private String btitle;
	private String bcontent;
	private int readcount;
	private Date bdate;	
	private int recnt;

	private String searchTypeKeyword; 
	
	public int getBnum() {
		return bnum;
	}
	public void setBnum(int bnum) {
		this.bnum = bnum;
	}
	public String getBid() {
		return bid;
	}
	public void setBid(String bid) {
		this.bid = bid;
	}
	public String getBtitle() {
		return btitle;
	}
	public void setBtitle(String btitle) {
		this.btitle = btitle;
	}
	public String getBcontent() {
		return bcontent;
	}
	public void setBcontent(String bcontent) {
		this.bcontent = bcontent;
	}
	public int getReadcount() {
		return readcount;
	}
	public void setReadcount(int readcount) {
		this.readcount = readcount;
	}
	public Date getBdate() {
		return bdate;
	}
	public void setBdate(Date bdate) {
		this.bdate = bdate;
	}
	
	public int getRecnt() {
		return recnt;
	}
	public void setRecnt(int recnt) {
		this.recnt = recnt;
	}
	


	public void setSearchTypeKeyword(String searchType, String keyword) {
	 
	 if(searchType.equals("") || keyword.equals("")) {
	  searchTypeKeyword = ""; 
	 } else {
	  searchTypeKeyword = "&searchType=" + searchType + "&keyword=" + keyword; 
	 }  
	}

	
	public String getSearchTypeKeyword() {
		return searchTypeKeyword;
	}
	
	
	@Override
	public String toString() {
		return "BoardVO [bnum=" + bnum + ", bid=" + bid + ", btitle=" + btitle + ", bcontent=" + bcontent
				+ ", readcount=" + readcount + ", bdate=" + bdate + ", recnt=" + recnt + "]";
	}
	
	
	
	
}
