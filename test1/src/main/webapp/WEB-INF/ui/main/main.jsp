<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"> 
    <title>2DMap</title>
    <script src="https://map.vworld.kr/js/map/OpenLayers-2.13/OpenLayers-2.13.js"></script>
    <script src="https://map.vworld.kr/js/apis.do?type=Base&apiKey=6924F494-EB0E-3A85-B15D-D263DDD05FAF	"></script>
    <link rel="stylesheet" href="https://unpkg.com/leaflet@1.7.1/dist/leaflet.css"
        integrity="sha512-xodZBNTC5n17Xt2atTPuE1HxjVMSvLVW9ocqUKLsCC5CXdbqCmblAshOMAS6/keqq/sMZMZ19scR4PsZChSR7A=="crossorigin=""/>
     <script src="https://unpkg.com/leaflet@1.7.1/dist/leaflet.js" integrity="sha512-XQoYMqMTK8LvdxXYG3nZ448hOEQiglfqkJs1NOQV44cWnUrBc8PkAOcXy20w0vlaXaVUearIOBhiXZ5V3ynxwA==" crossorigin=""></script>
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.12.4.min.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script src="/resources/js/common.js"></script>
      
    <script>

       
     
    </script>
    <style> 
        .olControlAttribution{right:20px;}
        .olControlLayerSwitcher{right:20px; top:20px;}
    </style>
  </head>
  <body>
  	<jsp:include page="/WEB-INF/ui/main/mainHead.jsp"/>
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
    fnSearch = function() {
    	   console.log($('#searchInput').val());
    	   var url = 'http://api.vworld.kr/req/address?service=address&request=getcoord&version=2.0&crs=epsg:4326&address='+$('#searchInput').val()+'refine=true&simple=false&OUTPUT=text/javascript&EXCEPTIONS=text/javascript&type=road&key=BCC43AEA-6121-3B95-9492-77AB9A231DE8';
    	   var ajax = $.ajax({
               url : url,
               dataType : 'jsonp',
               async : false,
               jsonpCallback:"parseResponse",
               success : function(response){
                  console.log(response);
               }
           }) 
    }
    </script>           
  </body>
</html>