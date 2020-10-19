package co.kr.playbowling.vo;

import java.util.Date;

public class ScoreVO {
	
	private String mem_id;
	private Date gameDate;
	private int score1;
	private int score2;
	private int score3;
	private int avg;
	
	
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public Date getGameDate() {
		return gameDate;
	}
	public void setGameDate(Date gameDate) {
		this.gameDate = gameDate;
	}
	public int getScore1() {
		return score1;
	}
	public void setScore1(int score1) {
		this.score1 = score1;
	}
	public int getScore2() {
		return score2;
	}
	public void setScore2(int score2) {
		this.score2 = score2;
	}
	public int getScore3() {
		return score3;
	}
	public void setScore3(int score3) {
		this.score3 = score3;
	}
	public int getAvg() {
		return avg;
	}
	public void setAvg(int avg) {
		this.avg = avg;
	}
	
	@Override
	public String toString() {
		return "ScoreVO [mem_id=" + mem_id + ", gameDate=" + gameDate + ", score1=" + score1 + ", score2=" + score2
				+ ", score3=" + score3 + ", avg=" + avg + "]";
	}
	
}
