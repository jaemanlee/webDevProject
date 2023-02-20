<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="EUC-KR">
</head>
<body>
	<div id="mainMiddle" class="mainMiddle">
		<div id="slider-div">
			<c:forEach var="mainResultList" items="${mainResultList}" varStatus="status">
				<div style="width:400px;">
	            	<a href='<c:out value="${mainResultList.cafeLink}" />'>
	            		<img title='<c:out value="${mainResultList.cafeThemeNm}" />' src='<c:out value="${mainResultList.imagePath}" />' style="height:400px">
	            	</a>
	            </div>
			</c:forEach>
        </div>
          <div class="mainTheme">
          	<div class="mainThemeHead">
	      		<p>방탈출 테마</p>
	       		<div class="mainThemeDiv">
	       			<input type="text"/>
	       			<button onclick="javascript:fnSearch()"></button>
	          	</div>
          	</div>
          	<div class="mainThemedMiddle">
          		<div class="middleHead">
          			<span>지역</span>
          		</div>
          		<div class="middleMain">
          			<table>
          				<tr>
          					<td>
          						<button class="active" value="ALL">전국</button>
          						<span>|</span>
          					</td>
          					<td>
          						<button value="11140">홍대</button>
          						<span>|</span>
          					</td>
          					<td>
          						<button value="11230">강남</button>
          						<span>|</span>
          					</td>
          					<td>
          						<button value="11050">건대</button>
          						<span>|</span>
          					</td>
          					<td>
          						<button value="11130">신촌</button>
          						<span>|</span>
          					</td>
          					<td>
          						<button value= "11010">대학로</button>
          						<span>|</span>
          					</td>
          					<td>
          						<button value="11090">강북</button>
          						<span>|</span>
          					</td>
          					<td>
          						<button value="11210">신림</button>
          						<span>|</span>
          					</td>
          					<td>
          						<button>서울(기타)</button>
          					</td>
          				</tr>
          			</table>
          		</div>
          	</div>
          	<div class="mainThemedMiddleTwo">
          		<div class="middleHeadTwo">
          			<span>장르</span>
          		</div>
          		<div class="middleMainTwo">
          			<table>
          				<tr>
          					<td>
          						<button class="active" value="ALL">전체</button>
          						<span>|</span>
          					</td>
          					<td>
          						<button value="AA01">추리</button>
          						<span>|</span>
          					</td>
          					<td>
          						<button value="AA02">스릴러</button>
          						<span>|</span>
          					</td>
          					<td>
          						<button value="AA03">감성</button>
          						<span>|</span>
          					</td>
          					<td>
          						<button value="AA04">로맨스</button>
          						<span>|</span>
          					</td>
          					<td>
          						<button value="AA05">범죄</button>
          						<span>|</span>
          					</td>
          					<td>
          						<button value="AA06">코미디</button>
          						<span>|</span>
          					</td>
          					<td>
          						<button value="AA07">모험</button>
          						<span>|</span>
          					</td>
          					<td>
          						<button value="AA08">판타지</button>
          						<span>|</span>
          					</td>
          					<td>
          						<button value="AA09">19금</button>
          						<span>|</span>
          					</td>
          					<td>
          						<button value="AA10">공포</button>
          						<span>|</span>
          					</td>
          					<td>
          						<button value="AA11">드라마</button>
          						<span>|</span>
          					</td>
          					<td>
          						<button value="AA12">미스터리</button>
          						<span>|</span>
          					</td>
          					<td>
          						<button value="AA13">아케이드</button>
          						<span>|</span>
          					</td>
          					<td>
          						<button value="AA14">액션</button>
          						<span>|</span>
          					</td>
       						<td>
          						<button value="AA15">야외</button>
          						<span>|</span>
          					</td>
     						<td>
          						<button value="AA16">음악</button>
          						<span>|</span>
          					</td>
       						<td>
          						<button value="AA17">잠입</button>
          						<span>|</span>
     						</td>
          				</tr>
          				<tr>
          					<td>
          						<button value="AA18">역사</button>
          						<span>|</span>
          					</td>
							<td>
          						<button value="AA19">SF</button>
          						<span>|</span>
          					</td>
      						<td>
          						<button value="AA20">?</button>
          					</td>
          				</tr>
          			</table>
          		</div>
          	</div>
          	<div class="mainThemedMiddleThree">
          		<div class="mainThemedMiddlSubOne">
          			<div class="middleHeadThree">
          				<span>유형</span>
	          		</div>
	          		<div class="middleMainThree">
	          			<table>
	          				<tr>
	          					<td>
	          						<button class="active" value="AB01">자물쇠</button>
	          						<span>|</span>
	          					</td>
	          					<td>
	          						<button class="active"  value="AB02">장치</button>
	          						<span>|</span>
	          					</td>
	          					<td>
	          						<button class="active" value="AB03">비슷한 비율</button>
	          						<span>|</span>
	          					</td>
	          				</tr>
	          			</table>
	          		</div>
          		</div>
          		<div class="mainThemedMiddlSubTwo">
          			<div class="middleHeadThree">
          				<span>추천인원</span>
	          		</div>
	          		<div class="middleMainThree">
	          			<table>
	          				<tr>
	          					<td>
	          						<button class="active">2명</button>
	          						<span>|</span>
	          					</td>
	          					<td>
	          						<button class="active">3명</button>
	          						<span>|</span>
	          					</td>
	          					<td>
	          						<button class="active">4명</button>
	          						<span>|</span>
	          					</td>
	          					<td>
	          						<button class="active">5명 이상</button>
	          						<span>|</span>
	          					</td>
	          				</tr>
	          			</table>
	          		</div>
          		</div>
          	</div>
          	<div class="mainThemedMiddleFour">
          		<div class="mainThemedMiddlSubOne">
          			<div class="middleHeadFour">
          				<span>난이도</span>
	          		</div>
	          		<div class="middleMainFour">
	          			<table>
	          				<tr>
	          					<td>
	          						<button class="active">1</button>
	          						<span>|</span>
	          					</td>
	          					<td>
	          						<button class="active">2</button>
	          						<span>|</span>
	          					</td>
	          					<td>
	          						<button class="active">3</button>
	          						<span>|</span>
	          					</td>
	          					<td>
	          						<button class="active">4</button>
	          						<span>|</span>
	          					</td>
	          					<td>
	          						<button class="active">5</button>
	          						<span>|</span>
	          					</td>
	          				</tr>
	          			</table>
	          		</div>
          		</div>
          		<div class="mainThemedMiddlSubTwo">
          			<div class="middleHeadFour">
          				<span>활동성</span>
	          		</div>
	          		<div class="middleMainFour">
	          			<table>
	          				<tr>
	          					<td>
	          						<button class="active" value="0">적음</button>
	          						<span>|</span>
	          					</td>
	          					<td>
	          						<button class="active" value="1">보통</button>
	          						<span>|</span>
	          					</td>
	          					<td>
	          						<button class="active" value="2">많음</button>
	          						<span>|</span>
	          					</td>
	          				</tr>
	          			</table>
	          		</div>
          		</div>
          	</div>
          </div>
          <div class="mainPagination">
          </div>
	</div>
	<script>
		/*
		* DOM render된 시점
		*/
		$(function(){
			$('#slider-div').slick({
				infinite : true,
				slidesToShow : 4,        // 한 화면에 보여질 컨텐츠 개수
			    slidesToScroll : 1,        //스크롤 한번에 움직일 컨텐츠 개수
			    draggable:true,
			    arrows:false,
			    centerMode:true,
			    centerPadding:'80px',
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
			
			
			fnUiEventHandler();
			
			gfnAjaxStatus("/main/mainPagination.do", {"pageIndex" : 0}, (e)=>{
				$('.mainPagination').append(e);
			})
		})
		
		/*
		* ui event handler
		*/
		const fnUiEventHandler = () => {
			
			/*
			* 지역 버튼 클릭 이벤트 함수
			*/
			$('.middleMain td button').on('click', (e)=>{
				fnMiddleBtnClik(e.target, 'middleMain');
			})
			
			
			/*
			* 장르 버튼 클릭 이벤트 함수
			*/
			$('.middleMainTwo td button').on('click', (e)=>{
				fnMiddleBtnClik(e.target, 'middleMainTwo');
				console.log(e.target)
			})
			
			/*
			* 유형 버튼 클릭 이벤트 함수
			*/
			$('.mainThemedMiddleThree .mainThemedMiddlSubOne td button').on('click', (e)=>{
				fnMiddleBtnClik(e.target);
			})
			
			/*
			* 추천인원 버튼 클릭 이벤트 함수
			*/
			$('.mainThemedMiddleThree .mainThemedMiddlSubTwo td button').on('click', (e)=>{
				fnMiddleBtnClik(e.target);
			})
			
			/*
			* 난이도 버튼 클릭 이벤트 함수
			*/
			$('.mainThemedMiddleFour .mainThemedMiddlSubOne td button').on('click', (e)=>{
				fnMiddleBtnClik(e.target);
			})
			
			/*
			* 활동성 버튼 클릭 이벤트 함수
			*/
			$('.mainThemedMiddleFour .mainThemedMiddlSubTwo td button').on('click', (e)=>{
				fnMiddleBtnClik(e.target);
			})
			
			/*
			* 키워드 검색 엔터키 이벤트
			*/
			$('.mainThemeDiv input').on('keyup', (e)=>{console.log(e.keyCode)
				if(e.keyCode == 13){
					fnSearchKeyWord();
				}	
			})
			
		}
		
		/*
		* 지역, 장르, 유형, 난이도 클릭 이벤트 함수
		*/
		const fnMiddleBtnClik = (target,div) => {
			let param = {};
			if(div == 'middleMain'){
				if($('.middleMain td:eq(0) button')[0] != target && $('.middleMain td:eq(0) button').prop('class') == 'active'){
					$('.middleMain td:eq(0) button').prop('class', '');
				}else if($('.middleMain td:eq(0) button')[0] == target ){
					$('.middleMain td button').prop('class', '');
				}
			}else if(div == 'middleMainTwo'){
				if($('.middleMainTwo td:eq(0) button') != target && $('.middleMainTwo td:eq(0) button').prop('class') == 'active'){
					$('.middleMainTwo td:eq(0) button').prop('class', '');
				}else if($('.middleMainTwo td:eq(0) button')[0] == target ){
					$('.middleMainTwo td button').prop('class', '');
				}
			}
			
			if($(target).prop('class')=='active'){
				$(target).prop('class','');
				fnChkBtn(param);
				return;
			}
			$(target).prop('class','active');
			
			fnChkBtn(param);
		}
		
		/*
		* 테마 검색 분류 파라미터화 
		*/
		const fnChkBtn = (param) => {
			param.location = [];
			param.theme = [];
			param.category = [];
			param.diff=[];
			param.activity = [];
			//active된 지역 array화
			$('.middleMain td button.active').each((index, item)=>{
				if(item.value != 'ALL'){
					param.location.push(item.value);
				}
			})
			//active된 장르 array화
			$('.middleMainTwo td button.active').each((index, item)=>{
				if(item.value != 'ALL'){
					param.theme.push(item.value)
				}
			})
			//active된 유형 array화
			$('.mainThemedMiddleThree .mainThemedMiddlSubOne td button.active').each((index, item)=>{
				param.category.push(item.value);
			})
			//active된 추천인원 array화
			$('.mainThemedMiddleThree .mainThemedMiddlSubTwo td button.active').each((index, item)=>{
				param.themePeo = 'T';
				switch(item.innerHTML) {
					case "2명" : param.themePeoTwo = 'T';
								break;
					case "3명" : param.themePeoThree = 'T';
								break;
					case "4명" : param.themePeoFour = 'T';
								break;
					case "5명 이상" : param.themePeoFivewo = 'T';
									break;
				}
			})
			//active된 난이도 array화
			$('.mainThemedMiddleFour .mainThemedMiddlSubOne td button.active').each((index, item)=>{
				param.diff.push(item.innerText);
			})
			//active된 활동성 array화
			$('.mainThemedMiddleFour .mainThemedMiddlSubTwo td button.active').each((index, item)=>{
				param.activity.push(item.value);
			})
			console.log(param);		
			
			fnSearch(param);
		}
		
		const fnSearch = (param) => {
			console.log(param);
			if(param){
				gfnAjaxStatus("/main/mainPagination.do", param, (e)=>{
					$('.mainPagination').html('');
					$('.mainPagination').append(e);
				})
			}else{
				param = {};
				param.keyWord = $('.mainThemeDiv input').val();
				if(param.keyWord == null || param.keyWord == ''){
					alert("검색어를 입력해주세요");
					return;
				}
			}
			
			
			
		}
	</script>
</body>
</html>