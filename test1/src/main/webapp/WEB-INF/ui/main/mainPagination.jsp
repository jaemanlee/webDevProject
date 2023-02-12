<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"> 
</head>
<body>
	<div class="pageing">
		<div>
			<div class="imageDiv" style='background:url("/resources/image/zeroWorld/butter.jpg") no-repeat;'></div>
		</div>
		<div>
			<div class="imageDiv" style='background:url("/resources/image/zeroWorld/butter.jpg") no-repeat;'></div>
		</div>
		<div>
			<div class="imageDiv" style='background:url("/resources/image/zeroWorld/butter.jpg") no-repeat;'></div>
		</div>
		<div>
			<div class="imageDiv" style='background:url("/resources/image/zeroWorld/butter.jpg") no-repeat;'></div>
		</div>
		<div>
			<div class="imageDiv" style='background:url("/resources/image/zeroWorld/butter.jpg") no-repeat;'></div>
		</div>
		 <div class="pageInfo" style="display:none;">
			<p>테마 정보</p>
			<div>
				<span>위치 :<b>경기도 군포시 산본로 296 108동 407호</b></span>
			</div>
			<div>
				<span>장르 :<b>공포</b></span>
			</div>
			<div>
				<span>시간 :<b>60분</b></span>
			</div>
			<div>
				<span>활동성 :<b>높음</b></span>
			</div>
			<div>
				<span>난이도 :<b>★★★★★</b></span>
			</div>
		</div>
	</div>
	
	<script>
		$(function(){
			$('.imageDiv').on('mouseover', (e)=>{
				 e.target.style.transform = "scale(1.2)";
			     e.target.style.zIndex = 1;
			     e.target.style.transition = "all 0.5s";
			})
			
			$('.imageDiv').on('mouseout', (e)=>{
				 e.target.style.transform = "scale(1)";
			     e.target.style.zIndex = 1;
			     e.target.style.transition = "all 0.5s";
			})
			
		})
	</script>
</body>
</html>