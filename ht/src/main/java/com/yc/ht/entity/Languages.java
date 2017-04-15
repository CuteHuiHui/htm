package com.yc.ht.entity;
/**
 * 语种
 * @author Super
 *
 */
public class Languages {
	private Integer lgid ;//编号
	private String language; //语种
	public Languages() {
	}
	
	public Languages(String language) {
		this.language = language;
	}

	public Languages(Integer lgid, String language) {
		this(language);
		this.lgid = lgid;
	}
	public Integer getLgid() {
		return lgid;
	}
	public void setLgid(Integer lgid) {
		this.lgid = lgid;
	}
	public String getLanguage() {
		return language;
	}
	public void setLanguage(String language) {
		this.language = language;
	}
	@Override
	public String toString() {
		return "\nLanguages [lgid=" + lgid + ", language=" + language + "]";
	}
	
	
}
