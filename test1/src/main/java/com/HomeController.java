package com;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.main.service.mainService;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping("/home")
public class HomeController {
	
	@Autowired
	private mainService service;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/redriect.do")
	public ModelAndView reDriect() {
		ModelAndView mv = new ModelAndView();
		/* 硫붿씤 �뒳�씪�씠�뱶 �씠誘몄� 議고쉶 */
		List<?> result = service.selectMiddleThemeList();
		
		mv.addObject("mainResultList", result);
		mv.setViewName("/main/main");
		return mv;
	}
	
}
