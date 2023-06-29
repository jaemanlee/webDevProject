package com.login.web;

import java.io.PrintWriter;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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
	public loginDVO userLogin(HttpServletRequest request,  HttpServletResponse response, @RequestBody loginDVO dvo) throws Exception {
		loginDVO result = service.userLogin(dvo);
		if(result != null) {
			HttpSession session = request.getSession();
			Cookie cookie = new Cookie("session_id", request.getSession().getId());
			session.setAttribute("id", result.getId());
			session.setAttribute("name", result.getUserName());
			cookie.setPath("/");
			cookie.setMaxAge(3600);
			response.addCookie(cookie);
			
		}
		System.out.println(result);
		return result;
	}
	
	@PostMapping("/doLogout")
	@ResponseBody
	public void userLogout(HttpServletRequest request, HttpServletResponse response, @RequestBody loginDVO dvo) throws Exception {
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		for(Cookie cookie : request.getCookies()) {
			if(cookie.getName().equals("session_id")) {
				cookie.setMaxAge(0);
				response.addCookie(cookie);
				break;
			}
		}
		session.invalidate();
		out.println("location.href='/home/redriect.do'"); // ���ΰ�ħ �Ǿ� ������ ���� X
	}

}
