package com.login.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.login.dvo.loginDVO;
import com.login.service.loginService;

@Controller
@RequestMapping( "/login")
public class loginController {
	private final Logger logger = LoggerFactory.getLogger(loginController.class.getName());
	
	@Autowired
	private loginService service;
	
	
	@PostMapping("/doLogin")
	@ResponseBody
	public loginDVO userLogin(HttpServletRequest request,  @RequestBody loginDVO dvo) throws Exception {
		System.out.println("aaaa : "+dvo.getId());
		System.out.println("bbbb : "+dvo.getPasswd());
		loginDVO result = service.userLogin(dvo);
		if(!result.getUserName().equals("")) {
			HttpSession session = request.getSession();
			session.setAttribute("id", result.getId());
			session.setAttribute("name", result.getUserName());
			System.out.println(session.getAttribute("id"));
			System.out.println(session.getAttribute("name"));
		}
		System.out.println(result);
		return result;
	}
	
	@PostMapping("/doLogout")
	@ResponseBody
	public void userLogout(HttpServletRequest request,  @RequestBody loginDVO dvo) throws Exception {
		HttpSession session = request.getSession();
		System.out.println("aaaa : "+session.getAttribute("id"));
		System.out.println("bbbb : "+session.getAttribute("id"));
	}

}
