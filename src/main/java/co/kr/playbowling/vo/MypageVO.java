package co.kr.playbowling.vo;

public class MypageVO {

	private String mem_name;
	private String mem_id;
	private String mem_pw;
	private String mem_nickName;
	private int mem_age;
	private String mem_email;
	private String mem_address;
	
	
	public String getMem_name() {
		return mem_name;
	}
	public void setMem_name(String mem_name) {
		this.mem_name = mem_name;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public String getMem_pw() {
		return mem_pw;
	}
	public void setMem_pw(String mem_pw) {
		this.mem_pw = mem_pw;
	}
	public String getMem_nickName() {
		return mem_nickName;
	}
	public void setMem_nickName(String mem_nickName) {
		this.mem_nickName = mem_nickName;
	}
	public int getMem_age() {
		return mem_age;
	}
	public void setMem_age(int mem_age) {
		this.mem_age = mem_age;
	}
	public String getMem_email() {
		return mem_email;
	}
	public void setMem_email(String mem_email) {
		this.mem_email = mem_email;
	}
	public String getMem_address() {
		return mem_address;
	}
	public void setMem_address(String mem_address) {
		this.mem_address = mem_address;
	}
	
	@Override
	public String toString() {
		return "MypageVO [mem_name=" + mem_name + ", mem_id=" + mem_id + ", mem_pw=" + mem_pw
				+ ", mem_nickName=" + mem_nickName + ", mem_age=" + mem_age + ", mem_email=" + mem_email
				+ ", mem_address=" + mem_address + "]";
	}
	
}
