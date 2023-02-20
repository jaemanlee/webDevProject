<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"> 
    <title>서울방탈출</title>
      
    <style> 
        .olControlAttribution{right:20px;}
        .olControlLayerSwitcher{right:20px; top:20px;}
    </style>
  </head>
  <body>
  	<%@ include file="/WEB-INF/ui/main/mainHead.jsp" %>
  	<%@ include file="/WEB-INF/ui/main/mainMiddle.jsp" %>
  	<div class="alertPopUp" style="display:none;">
  		<span></span>
  		<button onclick="javascript:fnPopupBtnClick();">확인</button>
  	</div>
  	<%-- <jsp:include page="/WEB-INF/ui/main/mainHead.jsp"/> --%>
    <script>
   /*  var map;
    map = L.map('map').setView([37.4979462, 127.025427], 17);
    map.attributionControl.setPrefix('');
    var layer = new L.TileLayer('http://xdworld.vworld.kr:8080/2d/Base/201411/{z}/{x}/{y}.png', {
      attribution: '© Vworld',
      minZoom: 1,
      maxZoom: 19
    }).addTo(map);
      
       map.on('click', function(e){
    	var latlng = e.latlng.lng + ' ' + e.latlng.lat
    	var filter = 'point(' + e.latlng.lng + ' ' + e.latlng.lat + ')';
    	 var url ="http://api.vworld.kr/req/data?service=data&request=GetFeature&data=LP_PA_CBND_BUBUN&VERSION=1.1.0&MAXFEATURES=40&SRSNAME=EPSG:4326&OUTPUT=text/javascript&EXCEPTIONS=text/javascript&KEY=EB040197-716C-3E73-BF0C-C5A4D10B8063&DOMAIN=http://localhost:8080/home.jsp&geomFilter="+filter;
    	  var ajax = $.ajax({
            url : url,
            dataType : 'jsonp',
            async : false,
            jsonpCallback:"parseResponse",
            success : function(response){
               console.log(response);
            }
        }) 
    	
    }) */
    
    function fnPopupBtnClick() {
    	   $('.alertPopUp').css('display', 'none');
       }
    </script>     
    
          
  </body>
</html>