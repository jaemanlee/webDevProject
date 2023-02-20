<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%
		String id = (String)session.getAttribute("id");
		String name= (String)session.getAttribute("name");
	%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"> 
	<script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.12.4.min.js"></script>
    <script src="/resources/js/common.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick.min.js"></script>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick.min.css">
    <link rel="stylesheet" href="/resources/css/main.css" />
    <link rel="stylesheet" href="/resources/css/slick-theme.css" />
    <style> 
    </style>
  </head>
  <body>
  	<div id="mainHeder" class="mainHeder">
  		<span>서울<b>방탈출</b></span>
		<form id="loginForm" name="loginForm" method="post">
  			<div>
  				<input id="id" name="id" type="text" alt="" placeHolder="id">
  				<input id="passwd" name="passwd" type ="password" alt="" placeHolder="password">
  				<a href="javascript:ajaxLogin()">로그인</a>
  				<a href="/join/comewithus.do">회원가입</a>
  			</div>
  			<div style="display:none">
  				 <p><c:out value="${name}"/><span>님 환영합니다.^^</span></p>
  				 <a href="javascript:ajaxLogout()">로그아웃</a>
  			</div>
  		</form>
  	</div>
    <script>
    	$(function(){
    		<c:if test="${not empty id}">
    			$('#mainHeder div').css('display', 'none');
    			$('#mainHeder div:eq(1)').css('display','flex');
    		</c:if>
    		
    		
    		/*id,passwd input 창 엔터키 이벤트 함수*/
    		$('#loginForm div input').keyup((e)=>{
    			if(e.keyCode == '13'){
    				ajaxLogin();
    			}
    		})
    	})
    	
    	/* 로그인 ajax */
    	const ajaxLogin = () => {
    		let param = $('#loginForm').serializeObject();
    		
    		if($('#loginForm div:eq(0) input:eq(0)').val() == ''){
    			gfnAlertPopup('아이디를 입력해주세요.')
    			return;
    		}
    		
    		if($('#loginForm div:eq(0) input:eq(1)').val() == ''){
    			gfnAlertPopup('비밀번호를 입력해주세요.');
    			return;
    		}
    		gfnAjaxStatus('/login/doLogin.do', param, (e)=>{
    			console.log(e);
    			if(!e){
    				gfnAlertPopup("아이디 또는 비밀번호를 확인해주세요.");
    				$('#mainHeder div input:eq(0)').focus();
    			}else{
    				$('#mainHeder div').css('display', 'none');
        			$('#mainHeder div:eq(1)').css('display','flex');
        			$('#mainHeder div:eq(1) p').html(e.userName + $('#mainHeder div:eq(1) p').html());
    			}
    		}) 
    	}
    	
    	/* 로그아웃 ajax */
    	const ajaxLogout = () => {
    		gfnAjaxStatus('/login/doLogout.do',{}, (e)=>{
    			$('#mainHeder div:eq(1)').css('display','none');
       			$('#mainHeder div:eq(0)').css('display', '');
       			$('#mainHeder div input').val('')
       			$('#mainHeder div:eq(1) p').html('<span>님 환영합니다.</span>')
    		});
    	}
    
    </script>           
  </body>
</html>