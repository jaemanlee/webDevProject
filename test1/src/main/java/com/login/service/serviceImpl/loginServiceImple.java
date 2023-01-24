package com.login.service.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.login.dvo.loginDVO;
import com.login.mapper.loginMapper;
import com.login.service.loginService;

@Service
public class loginServiceImple implements loginService {
	
	@Autowired
	private loginMapper mapper;
	
	@Override
	public loginDVO userLogin(loginDVO dvo) {
		// TODO Auto-generated method stub
		return mapper.selectUserLogin(dvo);
	}



}
