package com.join.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.join.dvo.joinDVO;
import com.join.service.joinService;

@Controller
@RequestMapping("/join")
public class joinController {
	private final Logger logger = LoggerFactory.getLogger(joinController.class.getName());
	
	@Autowired
	private joinService service;

	
	@RequestMapping(value = "/comewithus.do")
	public ModelAndView comJoin() {
		ModelAndView mv = new ModelAndView();
		List<joinDVO> resultList = service.selectUserList();
		mv.setViewName("/join/join");
		mv.addObject("userList", resultList);
		return mv;
	}
	
	@PostMapping(value = "/joinProcess")
	public void joinMember(joinDVO joinDVO, HttpServletResponse response, HttpServletRequest request) throws IOException, MessagingException {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		int chk  = service.joinMember(joinDVO);
		System.out.println(chk);
		out.println("<script>");
		//String imagePath = request.getSession().getServletContext().getRealPath("/resources/image/AB03/AB03_code.jpg");
		String imgURL = "http://blog.naver.com/storyphoto/viewer.jsp?src=https%3A%2F%2Fblogfiles.pstatic.net%2FMjAyMzA1MjZfMTMx%2FMDAxNjg1MDYyODAwMzc4.soBEHCr5OlEwSHBEz18AnJDGtts6Z535fri9Gti6qWAg.qcvisFvTdCc_r3seGAig1tkYknascH_aj4GWpD30RwIg.PNG.baejames%2FRose_a08.png";
		if (chk == 1) {
//			MailVO mailvo= new MailVO();
//			mailvo.setTo(member.getEmail());
//			mailvo.setContent(member.getId()+"�� ȸ�� ������ ���ϵ帳�ϴ� ��.");
//			sendmail.sendMail(mailvo);
			System.out.println(joinDVO.getUserEmail());
			final String hostEmail = "woaks143@naver.com";
			final String hostPaswd = "E5V6SP86JB3R";
			Properties p = new Properties();
			p.put("mail.smtp.starttls.enable", "true");
	        p.put("mail.smtp.host", "smtp.naver.com");
	        p.put("mail.smtp.auth", "true");
	        p.put("mail.smtp.port", "587");
	        Session session = Session.getDefaultInstance(p, new javax.mail.Authenticator() {
				protected PasswordAuthentication getPasswordAuthentication() {
					return new PasswordAuthentication(hostEmail, hostPaswd);
				}
			});
        	MimeMessage message = new MimeMessage(session);
			message.setFrom(new InternetAddress(hostEmail));
			message.addRecipient(Message.RecipientType.TO, new InternetAddress(joinDVO.getUserEmail()+"@naver.com"));
			message.setSubject("서울방탈출 회원가입 완료");
			String msg = "<h1>서울방탈출 회원가입이 완료되었습니다.</h1><br><h2>즐거운 방탈출 되세요</h2></br><img src="+imgURL+"></img>";
	        message.setContent(msg,"text/html;charset=utf-8");
			Transport.send(message);
			System.out.println("Success Message Send");
		    out.println("alert('"+joinDVO.getUserName()+"님 회원 가입을 축하합니다.');");
			out.println("location.href='../home.jsp';");
		} else if (chk == 0) {
			out.println("alert('회원가입 에러');");
			// out.println("loaction.href='./join.net';"); // ���ΰ�ħ �Ǿ� ������ ���� X
			out.println("history.back()"); // ��й�ȣ�� ������ �ٸ� �����ʹ� ����
		}
		out.println("</script>");
		out.close();
		
		
	}

}
