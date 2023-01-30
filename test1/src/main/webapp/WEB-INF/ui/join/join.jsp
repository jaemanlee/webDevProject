<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="/resources/css/main.css" rel="stylesheet" type="text/css">
<script src="/resources/lib/jquery-3.6.0.min.js"></script>

<title>회원가입</title>
</head>
<body>
<div id="popUpo" class="popup">

  <table>
   <tbody id="join_tbody">
	      <tr>
	        <th>이름</th>
	        <td>
	          <div>
	            <input type="text" id="join_name">
	          </div>
	        </td>
	     </tr>
	     <tr>
	        <th>아이디</th>
	        <td>
	        <div>
	          <form id="form_id">
	            <input type="text" id="join_id">
	            <button id="checkId">중복확인</button>
	          </form>
		    </div>
	        </td>
	      </tr>
	      <tr>
	         <th>비밀번호</th>
	        <td>
	          <div>
	             <input type="text" id="join_passwd">
	          </div>
	        </td>
	      </tr>
	      <tr>
	        <th>비밀번호 확인</th>
	        <td>
	          <div>
	             <input type="text" id="join_passwdTwo">
	          </div>
	        </td>
	      </tr>
	      <tr>
	        <th>우편번호</th>
	        <td>
	          <div>
	             <input type="text" id="join_address">
	             <button id="find_address" onclick="javscript:_findAddress();"></button>
	          </div>
	        </td>
	      </tr>
	      <tr>
	        <th>생년월일/성별</th>
	        <td>
	          <div>
	             <input type="text" id="join_birth">
	             <input type="radio" name="join_radio" id="join_male" value="남자" checked="checked">남자</input>
	             <input type="radio" name="join_radio" id="join_female" value="여자">여자</input>
	          </div>
	        </td>
	      </tr>
   </tbody>
  
  </table>
  <div>
    <ul>
      <li>
         <div>
			<a id="join_ok" href="javascript:void(0)" onclick="javascript:_joinOk()">회원가입</a>
         </div>
      </li>
      <li>
        <div>
           <a id="join_cancel" href="/home.jsp" onclick="">취소</a>
        </div>
      </li>
    </ul>
  </div>
</div>
<script>
   var _joinOk = () => {
	   Array.from($('body').find('input')).forEach(function(element  , index){
		   if($(element).val() == '' || $(element).val() == null){
			   alert("모든 항목을 입력해주세요");
			   return;
		   }
	   });
		   
		   var params = {
				   "userId" : $('#join_id').val(),
				   "userPassword" : $('#join_passwd').val(),
				   "userName" : $('#join_name').val(),
				   "userAddr" : $('#join_address').val(),
				   "userBirth" : $('#join_birth').val(),
				   "userPhone"  : '11',
 				   "userSex" : $("input[name='join_radio']:checked").val(),
 				   "mailNo" : "경기도"
		   }
		   
           $.ajax({
        	   url : "/login/login.do",
        	   method : 'post',
        	   data : params,
        	   dataType : "json", 
        	   success : function(e) {
        		   
        		   console.log(e);
        	   }
        	   
           })		   
   }
   
   var _findAddress = () => {
	   var option = 'width=600, height=600, menubar=no, status=no, toolbar=no';
	   window.open("/popUp/findAddress.jsp", '주소찾기', option);
	   
   }
</script>
</body>
</html>