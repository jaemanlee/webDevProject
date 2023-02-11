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
//			mailvo.setContent(member.getId()+"�� ȸ�� ������ ���ϵ帳�ϴ� ��.");
//			sendmail.sendMail(mailvo);
			out.println("alert('"+joinDVO.getUserName()+"�� ȸ�� ������ �����մϴ�.');");
			out.println("location.href='../home.jsp';");
		} else if (chk == 0) {
			out.println("alert('ȸ������ ����');");
			// out.println("loaction.href='./join.net';"); // ���ΰ�ħ �Ǿ� ������ ���� X
			out.println("history.back()"); // ��й�ȣ�� ������ �ٸ� �����ʹ� ����
		}
		out.println("</script>");
		out.close();
		
		
	}

}
