package com.join.web;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;



	@Controller
	@RequestMapping("/join")
	public class joinController{
		private final Logger logger = LoggerFactory.getLogger(joinController.class.getName()); 

		@RequestMapping(value = "/comewithus")
		public String comJoin() {
			return "/main/";
		}
		
	

}
