<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"> 
	<script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.12.4.min.js"></script>
    <link rel="stylesheet" href="/resources/css/main.css" />
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
  				<a>회원가입</a>
  			</div>
  			<div>
  				<span>이재만</span>
  				<a href="javascript:void(null)">로그아웃</a>
  			</div>
  		</form>
  	</div>
    <script>
    	const ajaxLogin = function() {
    		let param = $('#loginForm').serialize();
    		$.ajax({
    			type: "post", //요청 메소드 방식
    			headers : {
					"Content-Type" : "application/x-www-form-urlencoded;charset=UTF-8",
					"X-HTTP-Method-Override" : "POST"
				},
    			url:"/login/doLogin.do",
    			data : param,
    			dataType:"html", //서버가 요청 URL을 통해서 응답하는 내용의 타입
    			success : function(result){
    				//서버의 응답데이터가 클라이언트에게 도착하면 자동으로 실행되는함수(콜백)
    				//result - 응답데이터
    				//$('#result').text(result);
    				alert(result);
    			},
    			error : function(a, b, c){
    				//통신 실패시 발생하는 함수(콜백)
    				alert(a + b + c);
    			}
    			
    		})
    		console.log(param)
    	}
    
    </script>           
  </body>
</html>