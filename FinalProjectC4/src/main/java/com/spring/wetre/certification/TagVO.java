package com.spring.wetre.certification;

public class TagVO {

	private int acc_idx;
	private int acc_name;
	private int cnt;
	
	public TagVO() {}
	
	public TagVO(int acc_idx, int acc_name, int cnt) {
		super();
		this.acc_idx = acc_idx;
		this.acc_name = acc_name;
		this.cnt = cnt;
	}
	public int getAcc_idx() {
		return acc_idx;
	}
	public void setAcc_idx(int acc_idx) {
		this.acc_idx = acc_idx;
	}
	public int getAcc_name() {
		return acc_name;
	}
	public void setAcc_name(int acc_name) {
		this.acc_name = acc_name;
	}
	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
	
	
	
}
