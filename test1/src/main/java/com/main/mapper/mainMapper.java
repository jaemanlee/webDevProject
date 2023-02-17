package com.main.mapper;

import java.util.List;

import com.main.dvo.mainDVO;

public interface mainMapper {
	List<?> selectThemeList(mainDVO dvo);
	int selectThemeListCount(mainDVO dvo);
}
