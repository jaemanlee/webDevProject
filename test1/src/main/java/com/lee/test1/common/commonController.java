package com.lee.test1.common;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/common")
public class commonController {
	
	@PostMapping("/openPopup.do")
	public String open_popUp(@ModelAttribute String url) {
		System.out.println(url);
		
		return url;
	}
    
    @PostMapping("/join.do")
	public String joinView() {
    	
    	return "/login/join";
    	
    }
	
}
