package com.login.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.login.service.loginService;

@Controller
@RequestMapping( "/login")
public class loginController {
	private final Logger logger = LoggerFactory.getLogger(loginController.class.getName());
	
	@Autowired
	private loginService service;
	
	@PostMapping("/doLogin")
	@ResponseBody
	public String userLogin(HttpServletRequest request, Model model, HttpSession session) throws Exception {
		System.out.println("aaaa");
		System.out.println("id:" + request.getParameter("id"));
		System.out.println("pw:" + request.getParameter("passwd"));
		
		service.userLogin(request);
		
		return "";
	}

}
