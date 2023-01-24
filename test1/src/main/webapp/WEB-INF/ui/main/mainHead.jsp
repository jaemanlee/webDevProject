<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"> 
	<script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.12.4.min.js"></script>
	<script src="/resources/js/common.js"></script>
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
    		let param = $('#loginForm').serializeObject();
    		gfnAjaxStatus('/login/doLogin.do', param, (e)=>{
    			console.log(e);
    		}) 
    	}
    
    </script>           
  </body>
</html>