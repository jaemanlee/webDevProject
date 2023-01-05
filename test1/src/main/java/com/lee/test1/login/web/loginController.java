package com.lee.test1.login.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.servlet.ModelAndView;

import com.lee.test1.login.dvo.loginDVO;

@Controller
@RequestMapping("/login")
public class loginController {
    
	@Autowired
	private loginService service ;
	
	
	@PostMapping("/login.do")
	@ResponseBody
	public String login(@ModelAttribute loginDVO dvo  )  {
		int count = 0;
		try {
			count = service.login(dvo);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println(count);
	    return "¼º°ø";
	}
}
