package com.main.web;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.main.dvo.mainDVO;

@Controller
@RequestMapping("/main")
public class mainController {

	@PostMapping("/mainPagination")
	public ModelAndView mainPagination(HttpServletRequest request, @RequestBody mainDVO mainDvo) {
		
		ModelAndView view = new ModelAndView();
		view.setViewName("/main/mainPagination");
		return view;
	}
}
