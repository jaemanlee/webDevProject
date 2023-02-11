package com.join.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.http.HttpResponse;

import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.join.dvo.joinDVO;
import com.join.service.joinService;

@Controller
@RequestMapping("/join")
public class joinController {
	private final Logger logger = LoggerFactory.getLogger(joinController.class.getName());
	
	@Autowired
	private joinService service;

	@RequestMapping(value = "/comewithus.do")
	public String comJoin() {
		return "/join/join";
	}
	
	@PostMapping(value = "/joinProcess")
	public void joinMember(joinDVO joinDVO, HttpServletResponse response) throws IOException {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		int chk  = service.joinMember(joinDVO);
		System.out.println(chk);
		out.println("<script>");
		if (chk == 1) {
//			MailVO mailvo= new MailVO();
//			mailvo.setTo(member.getEmail());
//			mailvo.setContent(member.getId()+"님 회원 가입을 축하드립니다 凸.");
//			sendmail.sendMail(mailvo);
			out.println("alert('"+joinDVO.getUserName()+"님 회원 가입을 축하합니다.');");
			out.println("location.href='../home.jsp';");
		} else if (chk == 0) {
			out.println("alert('회원가입 에러');");
			// out.println("loaction.href='./join.net';"); // 새로고침 되어 데이터 유지 X
			out.println("history.back()"); // 비밀번호를 제외한 다른 데이터는 유지
		}
		out.println("</script>");
		out.close();
		
		
	}

}
