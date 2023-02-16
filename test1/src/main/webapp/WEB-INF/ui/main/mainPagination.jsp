<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"> 
</head>
<body>
	<div id="infoPopup" class="pageInfo" style=display:none;">
			<div>
				<span>테마명 :<b>나비효과.</b></span>
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
	<div id="buttonPopup"  class="btnInfo" style="display:none;">
		<button>위치보기</button>
		<button>리뷰보기</button>
	</div>
	<div class="pageing">
		<div>
			<div class="pageDiv">
				<div class="imageDiv" style='background:url("/resources/image/zeroWorld/butter.jpg") no-repeat;'></div>
				<div>
					<button>예약하기</button>
					<button>리뷰보기</button>
				</div>
			</div>
		</div>
		<div>
			<div class="pageDiv">
				<div class="imageDiv" style='background:url("/resources/image/zeroWorld/butter.jpg") no-repeat;'></div>
				<div>
					<button>예약하기</button>
					<button>리뷰보기</button>
				</div>
			</div>
		</div>
		<div>
			<div class="pageDiv">
				<div class="imageDiv" style='background:url("/resources/image/zeroWorld/butter.jpg") no-repeat;'></div>
				<div>
					<button>예약하기</button>
					<button>리뷰보기</button>
				</div>
			</div>
		</div>
		<div>
			<div class="pageDiv">
				<div class="imageDiv" style='background:url("/resources/image/zeroWorld/butter.jpg") no-repeat;'></div>
				<div>
					<button>예약하기</button>
					<button>리뷰보기</button>
				</div>
			</div>
		</div>
		<div>
			<div class="pageDiv">
				<div class="imageDiv" style='background:url("/resources/image/zeroWorld/butter.jpg") no-repeat;'></div>
				<div>
					<button>예약하기</button>
					<button>리뷰보기</button>
				</div>
			</div>
		</div>
	</div>
	
	<script>
		$(function(){
			$('.imageDiv').on('mouseover', (e)=>{
				console.log(e);
				 e.target.style.transform = "scale(1.2)";
				 e.target.style.zIndex = 1;
				 e.target.style.transition = "all 0.5s";
				 e.target.style.opacity = '0.1';
				 $(e.target.parentElement.children[1]).css('bottom', '-34px');
			     if($(e.target).prop('class') == 'imageDiv'){
			    	 $('#infoPopup').css('left', e.target.offsetLeft -40 + 'px');
				     $('#infoPopup').css('top', '100px');
			    	 $('#infoPopup').css('display','block');
					}
			})
			
			$('.pageDiv button').on('mouseover', (e)=>{
				 e.target.style.transform = "scale(1.2)";
				 e.target.style.zIndex = 1;
				 e.target.style.transition = "all 0.5s";
			})
			
			
			$('.imageDiv').on('mouseout', (e)=>{
				 e.target.style.transform = "scale(1)";
				 e.target.style.zIndex = 1;
				 e.target.style.transition = "all 0.5s";
				 e.target.style.opacity = '';
				 $(e.target.parentElement.children[1]).css('bottom', '-9px');
				 $('#infoPopup').css('display','none'); 
			})
			
			$('.pageDiv button').on('mouseout', (e)=>{
				 e.target.style.transform = "scale(1)";
				 e.target.style.zIndex = 1;
				 e.target.style.transition = "all 0.5s";
				 $('#infoPopup').css('display','none'); 
			})
			
			
		})
	</script>
</body>
</html>