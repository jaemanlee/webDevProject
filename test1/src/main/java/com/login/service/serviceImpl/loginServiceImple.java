package com.login.service.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.login.mapper.loginMapper;
import com.login.service.loginService;

@Service
public class loginServiceImple implements loginService {
	
	@Autowired
	private loginMapper mapper;
	
	@Override
	public String userLogin(String param) {
		// TODO Auto-generated method stub
		return mapper.selectUserLogin(param);
	}



}
