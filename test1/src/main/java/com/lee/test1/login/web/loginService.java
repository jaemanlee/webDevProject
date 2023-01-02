package com.lee.test1.login.web;

import org.springframework.web.servlet.ModelAndView;

import com.lee.test1.login.dvo.loginDVO;

public interface loginService {

	
	public int login(loginDVO dvo) throws Exception;
}
