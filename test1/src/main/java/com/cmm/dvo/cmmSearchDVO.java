package com.cmm.dvo;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class cmmSearchDVO {
	private String keyWord;
	private String themePeoTwo; 
	private String themePeoThree; 
	private String themePeoFour; 
	private String themePeoFivewo; 
	private String[] location;
	private String[] category; 
	private String[] diff;
	private String[] activity; 
	private String[] theme; 
	private int totalCount;
	private int pageIndex;
}
