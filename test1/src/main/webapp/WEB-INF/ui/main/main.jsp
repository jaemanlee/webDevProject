<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%-- <jsp:include page="/home.jsp" flush="false" />  --%>


<!DOCTYPE html>
<html>
<head>
<link href="/resources/css/main.css" rel="stylesheet" type="text/css">
<script src="/resources/lib/jquery-3.6.0.min.js"></script>
<meta charset="UTF-8">
</head>
<body>

<div id="container" class="container">
   <form  id="form_login" action="/login/login.do" method="POST">
       <input type="hidden" id="fomr_id" name="id">
       <input type="hidden" id="form_password" name="password">
   </form>

   <div id="left_container" class="left_container"> </div>
   <div id="right_container" class="right_container">
       <div id="wrap_login" class="wrap_login">
         <ul>
           <li>
             <span></span>
             <input type="text" id="id_text"></input>
             <span></span>
           </li>
           <li>
             <span></span>
             <input type="password" id="password_text"></input>
             <span></span>
           </li> 
         </ul>
         <div id="login_input" class="login_input">
            <ul>
               <li>
                 <div>
                    <a id="add_user" onclick="script:goPost()" href="javascript:void(0)">JOIN</a>
                 </div>
               </li>
               <li>
              	 <div>
              	    <a id="login" onclick="javascript:_Login()">LOGIN</a>
               	</div>
               </li>
            </ul>
         
         </div>
       </div>
   </div>
</div>


<script>

function _Login() {
	return new promise(function(resolve, reject)){
		
		
	});
	
	/*  $('#fomr_id').val($('#id_text').val());
	$('#form_password').val($('#password_text').val());
    $('#form_login').submit();    */
    
	
}

var _addUser = () => {
	
	let options = ("width=800,height=400");
	window.open("/popUp/join.jsp",'', options);
	
}


var goPost = () => {
	var form = document.createElement('form');
	form.setAttribute('method', 'post');
	form.setAttribute('action', '/common/join.do');
	$('body').append(form);
	form.submit();
	
}
</script>
</body>
</html>