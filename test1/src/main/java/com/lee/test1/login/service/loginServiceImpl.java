package com.lee.test1.login.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.lee.test1.login.dvo.loginDVO;
import com.lee.test1.login.web.loginService;

@Service("loginService")
public class loginServiceImpl  implements loginService{
    
	@Autowired 
	private loginDAO loginDao;
	
	@Override
	public int login(loginDVO dvo) throws Exception  {
		return loginDao.login(dvo);
	}


}
