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
      
    <script>

       
     
    </script>
    <style> 
        .olControlAttribution{right:20px;}
        .olControlLayerSwitcher{right:20px; top:20px;}
    </style>
  </head>
  <body>
	<form id="temp" name="temp" action="/redirect.do" method="GET">
		<button onclick="javascript:fnTemp();">클릭</button>
	</form>
    <script>
		$(function(){
			/* location.href="/redirect.do"; */
		})
		
		fnTemp  = function() {
			$('#temp').submit();
		}
    </script>           
  </body>
</html>