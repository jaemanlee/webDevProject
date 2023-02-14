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
				<span>테마명 :<b>중대장은 오늘 너희에게 무척 실망했다.</b></span>
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
			<div class="imageDiv" style='background:url("/resources/image/zeroWorld/butter.jpg") no-repeat;'>
				<div>
					<button>예약하기</button>
					<button>리뷰보기</button>
				</div>
			</div>
		</div>
		<div>
			<div class="imageDiv" style='background:url("/resources/image/zeroWorld/butter.jpg") no-repeat;'>
				<div>
					<button>예약하기</button>
					<button>리뷰보기</button>
				</div>
			</div>
		</div>
		<div>
			<div class="imageDiv" style='background:url("/resources/image/zeroWorld/butter.jpg") no-repeat;'>
				<div>
					<button>예약하기</button>
					<button>리뷰보기</button>
				</div>
			</div>
		</div>
		<div>
			<div class="imageDiv" style='background:url("/resources/image/zeroWorld/butter.jpg") no-repeat;'>
				<div>
					<button>예약하기</button>
					<button>리뷰보기</button>
				</div>
			</div>
		</div>
		<div>
			<div class="imageDiv" style='background:url("/resources/image/zeroWorld/butter.jpg") no-repeat;'>
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
			     if($(e.target).prop('class') == 'imageDiv'){
			    	 $('#infoPopup').css('left', e.target.offsetLeft -60 + 'px');
				     $('#infoPopup').css('top', '-140px');
			    	 $('#infoPopup').css('display','block');
					}
			})
			
			
			$('.imageDiv').on('mouseout', (e)=>{
				 e.target.style.transform = "scale(1)";
				 e.target.style.zIndex = 1;
				 e.target.style.transition = "all 0.5s";
				 $('#infoPopup').css('display','none'); 
			})
			
			$('.imageDiv').on('click', (e)=>{
				$('#buttonPopup').css('display','block');
				$('#buttonPopup').css('top', '90px');
				$('#buttonPopup').css('left', e.target.offsetLeft + 230 + 'px');
			})
			
		})
	</script>
</body>
</html>