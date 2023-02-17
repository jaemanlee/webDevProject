package com.main.dvo;

import org.springframework.stereotype.Service;

import com.cmm.dvo.cmmSearchDVO;

import lombok.Getter;

@Getter
@Service
public class mainDVO extends cmmSearchDVO{
	
	
	private String cafeNm;
	private String cafeThemeNm;
	private String themeTime;
	private String themeGenre;
	private String themeDiff;
	private String cafeLink;
	private String themeAct;
}
