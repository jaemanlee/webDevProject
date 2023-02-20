package com.main.service;

import java.util.List;

import com.main.dvo.mainDVO;

public interface mainService {

	List<?> selectThemeList(mainDVO dvo);
	
	List<?> selectMiddleThemeList();
	int selectThemeListCount(mainDVO dvo);
}
