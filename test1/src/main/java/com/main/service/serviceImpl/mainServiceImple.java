package com.main.service.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.main.dvo.mainDVO;
import com.main.mapper.mainMapper;
import com.main.service.mainService;

@Service
public class mainServiceImple implements mainService {

	
	@Autowired
	private mainMapper mapper;
	
	@Override
	public List<?> selectThemeList(mainDVO dvo) {
		// TODO Auto-generated method stub
		return mapper.selectThemeList(dvo);
	}

	@Override
	public int selectThemeListCount(mainDVO dvo) {
		// TODO Auto-generated method stub
		return mapper.selectThemeListCount(dvo);
	}

}
