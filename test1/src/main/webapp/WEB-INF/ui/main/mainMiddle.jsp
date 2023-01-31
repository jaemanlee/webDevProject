<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="EUC-KR">
</head>
<body>
	<div id="mainMiddle" class="mainMiddle">
		<div id="slider-div">
            <div style="width:400px;">
            	<a href="javascript:void(0)">
            		<img src="/resources/image/zeroWorld/butter.jpg" style="height:400px">
            	</a>
            </div>
            <div style="width:400px;">
            	<a href="javascript:void(0)">
            		<img src="/resources/image/zeroWorld/caller.jpg" style="height:400px">
            	</a>
            </div>
            <div style="width:400px;">
            	<a href="javascript:void(0)">
            		<img src="/resources/image/zeroWorld/done.jpg" style="height:400px">
           		</a>
            </div>
            <div style="width:400px;">
            	<a href="javascript:void(0)">
            		<img src="/resources/image/zeroWorld/forest.jpg" style="height:400px">
       			</a>
            </div>
            <div style="width:400px;">
            	<a href="javascript:void(0)">
            		<img src="/resources/image/zeroWorld/her.jpg" style="height:400px">
           		</a>
            </div>
            <div style="width:400px;">
            	<a href="javascript:void(0)">
            		<img src="/resources/image/zeroWorld/iam.jpg" style="height:400px">
           		</a>
            </div>
            <div style="width:400px;">
            	<a href="javascript:void(0)">
            		<img src="/resources/image/zeroWorld/ring.jpg" style="height:400px">
           		</a>
            </div>
            <div style="width:400px;">
            	<a href="javascript:void(0)">
            		<img src="/resources/image/zeroWorld/winterday.jpg" style="height:400px">
           		</a>
            </div>
            <div style="width:400px;">
            	<a href="javascript:void(0)">
            		<img src="/resources/image/zeroWorld/zeroHotel.jpg" style="height:400px">
           		</a>
            </div>
          </div>
          <div class="mainTheme">
          	<div class="mainThemeHead">
	      		<p>방탈출 테마</p>
	       		<div class="mainThemeDiv">
	       			<input type="text"/>
	       			<button></button>
	          	</div>
          	</div>
          </div>
	</div>
	<script>
		$(function(){
			$('#slider-div').slick({
				infinite : true,
				slidesToShow : 4,        // 한 화면에 보여질 컨텐츠 개수
			    slidesToScroll : 1,        //스크롤 한번에 움직일 컨텐츠 개수
			    draggable:true,
			    arrows:true,
			    centerMode:true,
			    centerPadding:'180px',
			    autoplay : true,
			    responsive: [
			        {
			          breakpoint: 1440,
			          settings: {
			            centerPadding:'100vw',
			          }
			        },
			        {
			          breakpoint: 770,
			          settings: {
			            centerPadding:'0',
			            arrows:false,
			          }
			        },
			    ]
	        });
		})
	</script>
</body>
</html>