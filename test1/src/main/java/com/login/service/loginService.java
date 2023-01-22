package com.login.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

@Service
public interface loginService {

	
	public String userLogin(HttpServletRequest request);
}
