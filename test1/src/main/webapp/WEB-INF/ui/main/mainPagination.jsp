<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"> 
</head>
<body>
	
	<c:forEach var="resultList" items="${resultList}" varStatus="status">
		<div id="pageInfo<c:out value="${status.index}" />" class="pageInfo" style="display:none">
				<div>
					<span>테마명 :<b><c:out value="${resultList.cafeThemeNm}" /></b></span>
				</div>
				<div>
					<span>장르 :<b><c:out value="${resultList.themeGenre}"/></b></span>
				</div>
				<div>
					<span>시간 :<b><c:out value="${resultList.themeTime}"/>분</b></span>
				</div>
				<div>
					<span>활동성 :<b><c:out value="${resultList.themeAct}"/></b></span>
				</div>
				<div>
					<span>난이도 :<b><c:out value="${resultList.themeDiff}"/></b></span>
				</div>
		</div>
	</c:forEach>
	<div id="buttonPopup"  class="btnInfo" style="display:none;">
		<button>위치보기</button>
		<button>리뷰보기</button>
	</div>
	<div class="pageing">
		<c:if test="${ empty resultList}">
			<span>검색결과가 없습니다.</span>
		</c:if>
		<c:forEach var="resultList" items="${resultList}" varStatus="status">
			<div>
				<div class="pageDiv">
					<div class="imageDiv" style='background:url(<c:out value="${resultList.imagePath}"/>) no-repeat;'></div>
					<div>
						<button onclick="javascript:fnPageBtnClick('<c:out value="${resultList.cafeLink}"/>', '1')">예약하기</button>
						<button onclick="javascript:fnPageBtnClick(<c:out value="${resultList.cafeLink}"/>, '2')">리뷰보기</button>
					</div>
				</div>
			</div>
		</c:forEach>
	</div>
	
	<script>
		$(function(){
			
			
			$('.imageDiv').on('mouseover', (e)=>{
				console.log("${param}");
				$('.pageing .imageDiv').each((index,item)=>{
					if(item == e.target){
						$('.pageInfo:eq('+index+')').css('left', e.target.offsetLeft -40 + 'px');
						$('.pageInfo:eq('+index+')').css('top', '100px');
						$('.pageInfo:eq('+index+')').css('display','block');
					}
				})
				 e.target.style.transform = "scale(1.2)";
				 e.target.style.zIndex = 1;
				 e.target.style.transition = "all 0.5s";
				 e.target.style.opacity = '0.1';
				 $(e.target.parentElement.children[1]).css('bottom', '-36px');
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
				 $('.pageing .imageDiv').each((index,item)=>{
						if(item == e.target){
							$('.pageInfo:eq('+index+')').css('display','none');
						}
				})
			})
			
			$('.pageDiv button').on('mouseout', (e)=>{
				 e.target.style.transform = "scale(1)";
				 e.target.style.zIndex = 1;
				 e.target.style.transition = "all 0.5s";
			})
			
			
		})
		
		function fnPageBtnClick(link,flag){
			//예약하기
			if(flag == '1'){
				window.open(link,"cafeLink")
			}else{
				//리뷰보기
			}
		}
		
	</script>
</body>
</html>