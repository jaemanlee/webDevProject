<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="/resources/css/join.css" rel="stylesheet" type="text/css">
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="/resources/lib/jquery-3.6.0.min.js"></script>
<title>회원가입</title>
</head>
<body>
<div class = "joinForm">
 <form action = "joinProcess.do" method = "post">
 		<h1>회원가입페이지</h1>
 		<hr>
 		<b>아이디</b>  
 		<span>
 		<input id="inputId" type = "text" name = "id" placeholder = "아이디를 입력하세요." required maxLength = "12">
 		</span>
 		<span>
 		<button id = "idChk"  onclick="javascript:chkUserId()">중복체크</button>
 		</span>
 		<br>
 		<b>비밀번호</b>
 		<input type = "password" name = "passwd" placeholder = "비밀번호는 영어+숫자 조합 10자리이상을 입력하세요." required>
 		<br>
 		<b>이름</b>
 		<input type = "text" name = "userName">
 		<br>
 		<b>나이</b>
 		<input type = "text" name="age">
 		<br>
 		<b>성별</b>
 		<input type = "radio" name ="gender" value = "M" checked><span>남자</span>
 		<input type = "radio" name ="gender" value = "F"><span>여자</span>
 		<br>
 		<b>이메일</b>
 		<input type = "text" name = "userEmail"> @
 		<input class="custom-email" disabled id="domain-input" />
		<select id="domain-list" onchange = "domainChg()" required >
			<option value="" selected>선택</option>
			<option value="naver.com">naver.com</option>
			<option value="hanmail.net">hanmail.net</option>
			<option value="google.com">google.com</option>
			<option value="nate.com">nate.com</option>
			<option value="custom">직접 입력</option>
		</select>
		<br>
		<b>주소</b>
		<input type = "text" name = "address" id = "address">
		<input type = "button" value = "우편검색"  onclick="postCode()">
		<br>
		<b>상세주소</b>
		<input type = "text" name = "addressDetail" >
 		<div class = "clearfix">
 			<button type = "submit" onclick = "javascript:_joinOk()">회원가입</button>
 			<button type = "reset">다시작성</button>
 			<button onclick = "history.back()" >돌아가기</button>
 		</div>
 		
 		
 		
 </form>
</div>
  
  
 
<script>
	//돔 생성 시점
	let userList=[];
	$(function(){
		//아이디 중복체크를 위해 미리 아이디 리스트 가져오기
		<c:forEach items="${userList}" var="item">
			userList.push("${item.id}");
		</c:forEach>
	})
	
  const chkUserId = () => {
	  if(!$('#inputId').val()) {
		  alert("아이디를 먼저 입력해주세요");
		  $('#inputId').focus();
	  }else{
		  if(userList.includes($('#inputId').val())){
			  $('#inputId').focus();
			  alert("존재하는 아이디입니다.");
		  }else{
			  $('#idChk').html('사용가능한 아이디입니다.');
			  $('#idChk').css('background','#0242ff');
			  $('#idChk').css('border','none');
			  $('#idChk').css('color','#fff');
			  $('#idChk').css('height','30px');
		  }
	  }
  }
  /*유효성체크*/
   var _joinOk = () => {
   var cnt = 0;
	   Array.from($('body').find('input')).forEach((element  , index)=>{
		   if($(element).val() == '' || $(element).val() == null){
			   cnt += 1;
		   }});
	      
    		if (cnt >= 1){
    		 alert(cnt+"개의 항목이 입력되지 않았습니다.");
    		}
    		
    		if($('#idChk').html() === '중복체크'){
    			alert("아이디 중복체크를 해주세요.");
    			$('#idChk').focus();
    			return;
    		} 
   }
	   
   
   /*도메인select박스*/
   function domainChg(){
	    var domainVal = document.getElementById("domain-list")
	        domainVal = domainVal.options[domainVal.selectedIndex].value;
	    
	    if(domainVal=="custom"){
	    	document.getElementById("domain-input").disabled = false;
	    }else{
	    	document.getElementById("domain-input").disabled = true;
	        document.getElementById("domain-input").value = domainVal;
	    }
	    
   }
   
  /*우편번호 검색*/ 
  function postCode(){
   new daum.Postcode({
       oncomplete: function(data) {
    	   
       document.getElementById("address").value = data.address;
           
       }
   }).open();
  }
	
   
</script>
</body>
</html>