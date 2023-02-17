package com.main.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.main.dvo.mainDVO;
import com.main.service.mainService;

@Controller
@RequestMapping("/main")
public class mainController {
	
	@Autowired
	private mainService service;

	@PostMapping("/mainPagination")
	public ModelAndView mainPagination(HttpServletRequest request, @RequestBody mainDVO mainDvo) {
		
		ModelAndView view = new ModelAndView();
		view.setViewName("/main/mainPagination");
		String param = new Gson().toJson(mainDvo);
		view.addObject("param", param);
		return view;
	}
	
	@PostMapping("/themeList")
	@ResponseBody
	public List<?> selectThemeList(HttpServletRequest request, @RequestBody mainDVO mainDvo) {
		List<?> result = service.selectThemeList(mainDvo);
		int totalCount = service.selectThemeListCount(mainDvo);
		
		return result;
	}
		
}
