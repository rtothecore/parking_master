<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
</head>
<script src="./resources/js/jquery.min.js" charset="utf-8"></script>
<!-- <script src="./resources/js/jquery-ui.min.js" charset="utf-8"></script>  -->

<!DOCTYPE html>
<html>
	<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Fixed Toolbars - jQuery Mobile Framework</title>
	
    <link rel="stylesheet" href="./resources/css/themes/default/jquery.mobile-1.4.5.min.css">
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,700">
	
	<link class="include" rel="stylesheet" type="text/css" href="./resources/css/jqplot/jquery.jqplot.min.css" />
    <link type="text/css" rel="stylesheet" href="./resources/css/jqplot/syntaxhighlighter/styles/shCoreDefault.min.css" />
    <link type="text/css" rel="stylesheet" href="./resources/css/jqplot/syntaxhighlighter/styles/shThemejqPlot.min.css" />
	
	<link rel="stylesheet" href="./resources/css/themes/default/h1_theme.min.css" />
	<link rel="stylesheet" href="./resources/css/themes/default/jquery.mobile.icons.min.css" />
	<link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.5/jquery.mobile.structure-1.4.5.min.css" />
	
    <script src="./resources/js/jquery.js"></script>
    <script src="./resources/js/jquery.mobile-1.4.5.min.js"></script>
	<script src="./resources/js/pc/pie-chart.js" type="text/javascript"></script> <!-- https://www.jqueryscript.net/chart-graph/Circular-Pie-Chart-Progress-Bar-Plugin-with-jQuery-Canvas.html -->
	
	<script type="text/javascript" src="./resources/js/ts/jquery.touchSwipe.min.js"></script> <!-- http://labs.rampinteractive.co.uk/touchSwipe/demos/index.html -->
    <script type="text/javascript" src="./resources/js/ts/main.js"></script>
	
	<script type="text/javascript" src="http://jsgetip.appspot.com"></script> <!-- http://jsgetip.appspot.com -->
	
    <style>
    	.left {
    		float: left;
    		width: 78%;
    		margin-right: 2%;
    	}
    	.right {
    		float: right;
    		width: 20%;
    	}
    	.ui-input-search {
    		margin: 0;
    	}
    	button.ui-btn {
    		margin: 0;
    	}
		
		.pie-title-center {
		  display: inline-block;
		  position: relative;
		  text-align: center;
		}

		.pie-value {
		  display: block;
		  position: absolute;
		  font-size: 24px;
		  height: 40px;
		  top: 50%;
		  left: 0;
		  right: 0;
		  margin-top: -20px;
		  line-height: 40px;
		}
    </style>
	<style id="combined-heading-and-section">
    .custom-corners .ui-bar {
      -webkit-border-top-left-radius: inherit;
      border-top-left-radius: inherit;
      -webkit-border-top-right-radius: inherit;
      border-top-right-radius: inherit;
    }
    .custom-corners .ui-body {
      border-top-width: 0;
      -webkit-border-bottom-left-radius: inherit;
      border-bottom-left-radius: inherit;
      -webkit-border-bottom-right-radius: inherit;
      border-bottom-right-radius: inherit;
    }
    </style>
	<style type="text/css">
	.plot {
		margin-bottom: 0px;
		margin-left: auto;
		margin-right: auto;
	}

	#chart1 .jqplot-meterGauge-tick {
		font-size: 5pt;
	}

	#chart2 .jqplot-meterGauge-tick {
		font-size: 5pt;
	}
	
	#chart3 .jqplot-meterGauge-tick {
		font-size: 5pt;
	}
	
	#chart4 .jqplot-meterGauge-tick {
		font-size: 5pt;
	}
	</style>
	
	<style>
	#map-content {
		padding: 0;
		position : absolute !important;
		top : 0px !important;
		right : 0;
		bottom : 0px !important;
		left : 0 !important;
	}
	</style>
	
	<style>
        #content {
            height: 340px;            
			width: 100%;
            overflow: hidden;
            position: relative;
            border: 0px solid black;
        }

        #divs {
            float: left;
            display: -webkit-box;
            padding: 0;
            margin: 0;
            width: 100%;
            transition-property: transform;
            transition-duration: 0.5s;
            transition-timing-function: ease-out;
            /*apply a transform to kick in the hardware acceleration.  Without this, the first
            time we add the transform you get odd rendering of the divs (half missing) */
            transform: translate(0, 0);
        }
		
		.div_content {
			float: left;
            display: inline;
			
			padding: 0;
            margin: 0;
			width: 100%;
            height: 340px;
            /*apply a transform to kick in the hardware acceleration.  Without this, the first
            time we add the transform you get odd rendering of the divs (half missing) */
            transform: translate(0, 0);
		}

    </style>
</head>
<body>

	<!-- Start of first page -->
	<div data-role="page" class="jqm-demos" id="one">

		<div data-role="header" data-position="fixed">
			<h1>Parking Master</h1>	
			<a href="#pop_opt" data-rel="popup" class="ui-btn ui-btn-right ui-alt-icon ui-nodisc-icon ui-corner-all ui-btn-icon-notext ui-icon-gear">Option</a>
			
			<div data-role="popup" id="pop_opt" data-overlay-theme="b" class="ui-content" style="max-width:340px; padding-bottom:2em;">
				<h3>This is option</h3>
				<p>Your download will begin immediately on your mobile device when you purchase.</p>
				<a href="#" class="ui-btn ui-btn-b ui-btn-inline ui-mini ui-corner-all ui-shadow ui-btn-icon-left ui-icon-check" data-rel="back">Buy: $10.99</a>
				<a href="#" class="ui-btn ui-btn-inline ui-mini ui-corner-all ui-shadow" data-rel="back">Cancel</a>
			</div>
		</div><!-- /header -->

		<div class="ui-content" role="main">

			<fieldset class="ui-grid-a">
				<div class="ui-corner-all custom-corners ui-block-a">
					<div class="ui-bar ui-bar-a">
					  <h3 id="SKY">날씨정보 : 맑음</h3>
					</div>
					<div class="ui-body ui-body-a" style="height:260px">
					  <p id="LOC">제주시 이도2동</p>
					  <p id="T1H">온도 : 10℃</p>
					  <p id="REH">기상청발표 - 15시 기준</p>
					</div>
				</div>
				
				<div class="ui-corner-all custom-corners ui-block-b">
					<div class="ui-bar ui-bar-a">
					  <h3 id="AIR">대기정보</h3>
					</div>
					<div class="ui-body ui-body-a" style="height:260px">
					  <p id="STN">위치</p>
					  <p id="FND">미세먼지 : 42㎍/㎥</p>
					  <p id="SFD">초미세먼지 : 22㎍/㎥</p>
					  <p id="OZV">오존지수 : 0.043ppm</p>
					</div>
				</div>
			</fieldset>
			
			<p></p>
				<div id="content">
				<div id="divs">
					<div class="ui-corner-all custom-corners div_content">
						<div class="ui-bar ui-bar-a" align="center">
						  <h2>제주대학교</h2>
						</div>
						<div class="ui-body ui-body-a" align="center">
								<div id="demo-pie-1" class="pie-title-center" data-percent="40" onclick="pageMoveToTwo();"> <span class="pie-value"></span> </div>
								<p>주차면수 : 110대</p>
								<p>주차점유 : 45대</p>
								<p>주차가능 : 65대</p>
						</div>
					</div>
					<div class="ui-corner-all custom-corners div_content">
						<div class="ui-bar ui-bar-a" align="center">
						  <h2>제주공항</h2>
						</div>
						<div class="ui-body ui-body-a" align="center">
								<div id="demo-pie-2" class="pie-title-center" data-percent="78" onclick="pageMoveToTwo();"> <span class="pie-value"></span> </div>
								<p>주차면수 : 530대</p>
								<p>주차점유 : 414대</p>
								<p>주차가능 : 116대</p>
						</div>
					</div>
					<div class="ui-corner-all custom-corners div_content">
						<div class="ui-bar ui-bar-a" align="center">
						  <h2>벤처마루</h2>
						</div>
						<div class="ui-body ui-body-a" align="center">
								<div id="demo-pie-3" class="pie-title-center" data-percent="95" onclick="pageMoveToTwo();"> <span class="pie-value"></span> </div>
								<p>주차면수 : 40대</p>
								<p>주차점유 : 38대</p>
								<p>주차가능 : 2대</p>
						</div>
					</div>
					<div class="ui-corner-all custom-corners div_content">
						<div class="ui-bar ui-bar-a" align="center">
						  <h2>제주시청</h2>
						</div>
						<div class="ui-body ui-body-a" align="center">
								<div id="demo-pie-4" class="pie-title-center" data-percent="68" onclick="pageMoveToTwo();"> <span class="pie-value"></span> </div>
								<p>주차면수 : 150대</p>
								<p>주차점유 : 102대</p>
								<p>주차가능 : 48대</p>
						</div>
					</div>
				</div>
				</div>
			
			<div class="ui-corner-all custom-corners">
				<div class="ui-bar ui-bar-a">
				  <h3>행사정보</h3>
				</div>
				<div class="ui-body ui-body-a" id="festList">
				<!-- 
					<p>1. title - location</p>
					<p>2. title - location</p>
					<p>3. title - location</p>
					<p>4. title - location</p>
					<p>5. title - location</p>
				 -->
					<!-- <div id="chart5" class="plot" style="width:80%;height:80%;"></div> -->
				</div>
			</div>
			
			<p></p>
			
			<div class="ui-corner-all custom-corners">
				<div class="ui-bar ui-bar-a">
				  <h3>전체주차점유율</h3>
				</div>
				<div class="ui-body ui-body-a">
					<div id="chart5" class="plot" style="width:80%;height:80%;"></div>
				  <!-- <div id="chart5" class="plot" style="width:360px;height:360px;"></div> -->
				</div>
			</div>

		</div><!-- /content -->

	</div><!-- /page -->
	
	<!-- Start of second page: #two -->
	<div data-role="page" id="two" data-theme="a">
		<div data-role="header" data-position="fixed">
			<a href="#" data-rel="back" class="ui-btn ui-btn-left ui-alt-icon ui-nodisc-icon ui-corner-all ui-btn-icon-notext ui-icon-back">Back</a>
			<h1>Parking Master - 제주대학교</h1>
			<a href="#pop_opt" data-rel="popup" class="ui-btn ui-btn-right ui-alt-icon ui-nodisc-icon ui-corner-all ui-btn-icon-notext ui-icon-bars">Option</a>
		</div><!-- /header -->		

		<div role="main" class="ui-content" id="map-content">
			<div role="main" class="ui-content" id="map-canvas" style="height:100%"></div>
		</div><!-- /content -->
	</div><!-- /page two -->
	
	<!-- Start of second page: #three -->
	<div data-role="page" id="three" data-theme="a">
		<div data-role="header" data-position="fixed">
			<a href="#" data-rel="back" class="ui-btn ui-btn-left ui-alt-icon ui-nodisc-icon ui-corner-all ui-btn-icon-notext ui-icon-back">Back</a>
			<h1>제주대학교 - 주차 점유율</h1>
			<a href="#pop_opt" data-rel="popup" class="ui-btn ui-btn-right ui-alt-icon ui-nodisc-icon ui-corner-all ui-btn-icon-notext ui-icon-bars">Option</a>
		</div><!-- /header -->		

		<div class="ui-content" role="main">
			<div class="ui-corner-all custom-corners">
				<div class="ui-bar ui-bar-a">
				  <h3>제주대학교</h3>
				</div>
				<div class="ui-body ui-body-a">
				  <p><b>유료</b> : 기본 30분 500원, 초과 15분 300원</p>
				  <p><b>주차면수</b> : 110대</p>
				  <p><b>주차점유</b> : 45대</p>
				  <p><b>주차가능</b> : 65대</p>
				  <p><b>전기차 충전가능</b> : 2곳 중 1곳</p>
				</div>
			</div>
			<p></p>
			<div class="ui-corner-all custom-corners">
				<div class="ui-bar ui-bar-a">
				  <h3>주차점유율 예측</h3>
				</div>
				<div class="ui-body ui-body-a">
				  <div id="chart6" class="plot" style="height:300px; width:350px;"></div>
				</div>
			</div>
		</div>
	</div><!-- /page three -->
	
	<script>
	getFestData();
	
	function getFestData(){
		var fvData = {};
		
		$.ajax({
			type: 'POST',
			contentType: "application/json",
			url:'./getFestData',
			data: JSON.stringify(fvData),
			dataType: 'json',
			success: function(data){
				var parsedJson = JSON.parse(data['result']);
				//console.log("SUCCESS: ", parsedJson);
				tempHTML = "<p>" + parsedJson['rfcOpenApi']['body']['data']['list'][0]['title'] + " - " + parsedJson['rfcOpenApi']['body']['data']['list'][0]['location'] + "</p>";
				tempHTML += "<p>" + parsedJson['rfcOpenApi']['body']['data']['list'][1]['title'] + " - " + parsedJson['rfcOpenApi']['body']['data']['list'][1]['location'] + "</p>";
				tempHTML += "<p>" + parsedJson['rfcOpenApi']['body']['data']['list'][2]['title'] + " - " + parsedJson['rfcOpenApi']['body']['data']['list'][2]['location'] + "</p>";
				tempHTML += "<p>" + parsedJson['rfcOpenApi']['body']['data']['list'][3]['title'] + " - " + parsedJson['rfcOpenApi']['body']['data']['list'][3]['location'] + "</p>";
				tempHTML += "<p>" + parsedJson['rfcOpenApi']['body']['data']['list'][4]['title'] + " - " + parsedJson['rfcOpenApi']['body']['data']['list'][4]['location'] + "</p>";
				$('#festList').html(tempHTML);
			},
			error: function (e) {
				console.log("ERROR: ", e);
	        }
		});
	}
	</script>
	
	<script>
	getAirData();
	
	function getAirData(){
		var arData = {};
		arData["sido"] = "제주";
		
		$.ajax({
			type: 'POST',
			contentType: "application/json",
			url:'./getAirData',
			data: JSON.stringify(arData),
			dataType: 'json',
			success: function(data){
				var parsedJson = JSON.parse(data['result']);
				//console.log("SUCCESS: ", parsedJson);
				$('#STN').html("<b>" + parsedJson['list'][0]['stationName'] +"</b>");
				$('#FND').html("미세먼지 : " + parsedJson['list'][0]['pm10Value'] + "㎍/㎥");
				$('#SFD').html("초미세먼지 : " + parsedJson['list'][0]['pm25Value'] + "㎍/㎥");
				$('#OZV').html("오존지수 : " + parsedJson['list'][0]['o3Value'] + "ppm");
			},
			error: function (e) {
				console.log("ERROR: ", e);
	        }
		});
	}
	
	getLocFromIp();
	
	function getLocFromIp(){
		var geoData, ipData = ip();
	    var xhttp = new XMLHttpRequest();
	    xhttp.onreadystatechange = function() {
	      if (this.readyState == 4 && this.status == 200) {
	        geoData = JSON.parse(this.responseText);
	        printDataOnThePage();
	      }
	     };
	     
	    xhttp.open("GET", "http://ip-api.com/json/"+ipData, true);
	    xhttp.send();
	    
	    function printDataOnThePage(){
	    	//console.log(ipData);
	    	//console.log(geoData.lat + ", " + geoData.lon + ", " + geoData.city);
	    	$('#LOC').html("<b>" + geoData.city + "</b>");
	    	var latitude = geoData.lat,
	        longitude = geoData.lon;
	        var rs = dfs_xy_conv("toXY",latitude,longitude);
	        // 위도/경도 -> 기상청 좌표x / 좌표 y 변환
	        xml2jsonCurrentWth(rs.nx, rs.ny);
	    }
	}
	
	/*
    function getLocation(){
        if(navigator.geolocation){
            navigator.geolocation.getCurrentPosition(locationSuccess, locationError, geo_options);
        }else{
            console.log("지오 로케이션 없음")
        }
    };
    */
    // getLocation

    /*
    function locationSuccess(p){
    	var latitude = p.coords.latitude,
        longitude = p.coords.longitude;
        var rs = dfs_xy_conv("toXY",latitude,longitude);
        // 위도/경도 -> 기상청 좌표x / 좌표 y 변환
        xml2jsonCurrentWth(rs.nx, rs.ny);
    };
    */
    // locationSuccess

    /*
    function locationError(error){
        var errorTypes = {
            0 : "무슨 에러냥~",
            1 : "허용 안눌렀음",
            2 : "위치가 안잡힘",
            3 : "응답시간 지남"
        };
        var errorMsg = errorTypes[error.code];
        console.log(errorMsg)
    }
    */
    // locationError

    /*
    var geo_options = {
        enableHighAccuracy: true,
        maximumAge        : 30000,
        timeout           : 27000
    };
    */
    // geo_options
    
    // LCC DFS 좌표변환을 위한 기초 자료
    var RE = 6371.00877; // 지구 반경(km)
    var GRID = 5.0; // 격자 간격(km)
    var SLAT1 = 30.0; // 투영 위도1(degree)
    var SLAT2 = 60.0; // 투영 위도2(degree)
    var OLON = 126.0; // 기준점 경도(degree)
    var OLAT = 38.0; // 기준점 위도(degree)
    var XO = 43; // 기준점 X좌표(GRID)
    var YO = 136; // 기1준점 Y좌표(GRID)
    
    // LCC DFS 좌표변환 ( code : "toXY"(위경도->좌표, v1:위도, v2:경도), "toLL"(좌표->위경도,v1:x, v2:y) )
    function dfs_xy_conv(code, v1, v2) {
        var DEGRAD = Math.PI / 180.0;
        var RADDEG = 180.0 / Math.PI;

        var re = RE / GRID;
        var slat1 = SLAT1 * DEGRAD;
        var slat2 = SLAT2 * DEGRAD;
        var olon = OLON * DEGRAD;
        var olat = OLAT * DEGRAD;

        var sn = Math.tan(Math.PI * 0.25 + slat2 * 0.5) / Math.tan(Math.PI * 0.25 + slat1 * 0.5);
        sn = Math.log(Math.cos(slat1) / Math.cos(slat2)) / Math.log(sn);
        var sf = Math.tan(Math.PI * 0.25 + slat1 * 0.5);
        sf = Math.pow(sf, sn) * Math.cos(slat1) / sn;
        var ro = Math.tan(Math.PI * 0.25 + olat * 0.5);
        ro = re * sf / Math.pow(ro, sn);
        var rs = {};
        if (code == "toXY") {

            rs['lat'] = v1;
            rs['lng'] = v2;
            var ra = Math.tan(Math.PI * 0.25 + (v1) * DEGRAD * 0.5);
            ra = re * sf / Math.pow(ra, sn);
            var theta = v2 * DEGRAD - olon;
            if (theta > Math.PI) theta -= 2.0 * Math.PI;
            if (theta < -Math.PI) theta += 2.0 * Math.PI;
            theta *= sn;
            rs['nx'] = Math.floor(ra * Math.sin(theta) + XO + 0.5);
            rs['ny'] = Math.floor(ro - ra * Math.cos(theta) + YO + 0.5);
        }
        else {
            rs['nx'] = v1;
            rs['ny'] = v2;
            var xn = v1 - XO;
            var yn = ro - v2 + YO;
            ra = Math.sqrt(xn * xn + yn * yn);
            if (sn < 0.0) - ra;
            var alat = Math.pow((re * sf / ra), (1.0 / sn));
            alat = 2.0 * Math.atan(alat) - Math.PI * 0.5;

            if (Math.abs(xn) <= 0.0) {
                theta = 0.0;
            }
            else {
                if (Math.abs(yn) <= 0.0) {
                    theta = Math.PI * 0.5;
                    if (xn < 0.0) - theta;
                }
                else theta = Math.atan2(xn, yn);
            }
            var alon = theta / sn + olon;
            rs['lat'] = alat * RADDEG;
            rs['lng'] = alon * RADDEG;
        }
        return rs;
    }
    // dfs_xy_conv
    
    function xml2jsonCurrentWth(nx, ny){
        var today = new Date();
        var dd = today.getDate();
        var mm = today.getMonth()+1;
        var yyyy = today.getFullYear();
        var hours = today.getHours();
        var minutes = today.getMinutes();
        //console.log("time " + minutes)

        if(minutes < 30){
            // 30분보다 작으면 한시간 전 값
            hours = hours - 1;
            if(hours < 0){
                // 자정 이전은 전날로 계산
                today.setDate(today.getDate() - 1);
                dd = today.getDate();
                mm = today.getMonth()+1;
                yyyy = today.getFullYear();
                hours = 23;
            }
        }
        if(hours<10) {
            hours='0'+hours
        }
        if(mm<10) {
            mm='0'+mm
        }
        if(dd<10) {
            dd='0'+dd
        } 

        var _nx = nx,
        _ny = ny;
        
        var wtData = {};
		wtData["today"] = yyyy+""+mm+""+dd;
		wtData["base_time"] = hours + "00";
		wtData["_nx"] = _nx;
		wtData["_ny"] = _ny;
		
		$.ajax({
			type: 'POST',
			contentType: "application/json",
			url:'./getWeatherData',
			data: JSON.stringify(wtData),
			dataType: 'json',
			success: function(data){
				var parsedJson = JSON.parse(data['result']);
				//console.log("SUCCESS: ", parsedJson);
				$('#SKY').html("날씨정보 : " + getSkyStateStr(JSON.stringify(parsedJson['response']['body']['items']['item'][4]['obsrValue'])));
				//$('#LOC').html("<b>제주시 이도2동</b>");
				$('#T1H').html(getSkyImg(JSON.stringify(parsedJson['response']['body']['items']['item'][1]['obsrValue']), JSON.stringify(parsedJson['response']['body']['items']['item'][4]['obsrValue'])) + 
						       " <b><font size='6'>" + JSON.stringify(parsedJson['response']['body']['items']['item'][5]['obsrValue']) + "</font></b>℃");
				$("#REH").html("기상청발표 - " + getParsedTime(parsedJson['response']['body']['items']['item'][0]['baseTime']) + " 기준");
				
				$('#weatherH').html("날씨정보 : " + getSkyStateStr(JSON.stringify(parsedJson['response']['body']['items']['item'][4]['obsrValue'])));
				$('#T1H_2').html("<b>기온</b> : " + JSON.stringify(parsedJson['response']['body']['items']['item'][5]['obsrValue']) + "º");
				$('#REH_2').html("<b>습도</b> : " + JSON.stringify(parsedJson['response']['body']['items']['item'][2]['obsrValue']) + "%");
				
			},
			error: function (e) {
				console.log("ERROR: ", e);
	        }
		});
    }
    // xml2jsonCurrentWth

    function getSkyImg(ptyVal, skyVal) {
    	var result = 0;
    	if("0" == ptyVal) {
    		switch(skyVal) {
    			case "1" :
    				result = "<img width='100' height='100' src='./resources/img/wt/sun.png'/>";
    				break;
    			case "2" :
    				result = "<img width='100' height='100' src='./resources/img/wt/cloud1.png'/>";
    				break;
    			case "3" :
    				result = "<img width='100' height='100' src='./resources/img/wt/cloud2.png'/>";
    				break;
    			case "4" :
    				result = "<img width='100' height='100' src='./resources/img/wt/heu.png'/>";
    				break;
    			default :
    				break;
    		}
    	} else {
    		switch(ptyVal) {
    			case "1" :
    				result = "<img width='100' height='100' src='./resources/img/wt/rain.png'/>";
    				break;
    			case "2" :
    				result = "<img width='100' height='100' src='./resources/img/wt/rain.png'/>";
    				break;
    			case "3" :
    				result = "<img width='100' height='100' src='./resources/img/wt/snow.png'/>";
    				break;
    			default :
    				break;
    		}
    	}
    	return result;
    }
    
    function getSkyStateStr(skyStateVal) {
		var skyStateStr = "";
		switch(skyStateVal) {
		    case "1":
		    	skyStateStr = "맑음";
		        break;
		    case "2":
		    	skyStateStr = "구름조금";
		        break;
		    case "3":
		    	skyStateStr = "구름많음";
		    	break;
		    case "4":
		    	skyStateStr = "흐림";
		    	break;
		    default:
		        break;
		}
		return skyStateStr;
	}
    
    function getParsedDate(dateVal) {
    	dateVal = dateVal + "";
    	var parsedDate = dateVal.substring(0, 4) + "년 " + dateVal.substring(4, 6) + "월 " + dateVal.substring(6, 8) + "일";
    	return parsedDate;
    }
    
    function getParsedTime(timeVal) {
    	timeVal = timeVal + "";
    	var parsedTime = timeVal.substring(0, 2) + ":" + timeVal.substring(2, 4) + "시"
    	return parsedTime;
    }
    
    //getLocation();
    </script>
	
	<script language="JavaScript" type="text/javascript">
	$(document).ready(function(){ 
		//$('content').css('width', $(window).width());
		//$('divs').css('width', $(window).width()*4);
		//$('.tempX').css('width', $(window).width()); 
		$(window).resize(function() { 
			//$('content').css('width', $(window).width()); 
			//$('selector').css('height', $(window).height()); 
		}); 
	});
	</script>
	
	<script id='code_1'>
		var DIV_WIDTH = 0;
        var currentDiv = 0;
        var maxDivs = 4;
        var speed = 500;

        var divs;

        var swipeOptions = {
            triggerOnTouchEnd: true,
            swipeStatus: swipeStatus,
            allowPageScroll: "vertical",
            threshold: 75
        };

        $(function () {
			DIV_WIDTH = $('#content').width();
			
            divs = $("#divs");
            divs.swipe(swipeOptions);
        });


        /**
         * Catch each phase of the swipe.
         * move : we drag the div
         * cancel : we animate back to where we were
         * end : we animate to the next image
         */
        function swipeStatus(event, phase, direction, distance) {
            //If we are moving before swipe, and we are going L or R in X mode, or U or D in Y mode then drag.
            if (phase == "move" && (direction == "left" || direction == "right")) {
                var duration = 0;

                if (direction == "left") {
                    scrollDivs((DIV_WIDTH * currentDiv) + distance, duration);
                } else if (direction == "right") {
                    scrollDivs((DIV_WIDTH * currentDiv) - distance, duration);
                }

            } else if (phase == "cancel") {
                scrollDivs(DIV_WIDTH * currentDiv, speed);
            } else if (phase == "end") {
                if (direction == "right") {
                    previousDiv();
                } else if (direction == "left") {
                    nextDiv();
                }
            }
        }

        function previousDiv() {
            currentDiv = Math.max(currentDiv - 1, 0);
            scrollDivs(DIV_WIDTH * currentDiv, speed);
        }

        function nextDiv() {
            currentDiv = Math.min(currentDiv + 1, maxDivs - 1);
            scrollDivs(DIV_WIDTH * currentDiv, speed);
        }

        /**
         * Manually update the position of the imgs on drag
         */
        function scrollDivs(distance, duration) {
            divs.css("transition-duration", (duration / 1000).toFixed(1) + "s");

            //inverse the number we set in the css
            var value = (distance < 0 ? "" : "-") + Math.abs(distance).toString();
            divs.css("transform", "translate(" + value + "px,0)");
        }
    </script>
	
	<script>
	function pageMoveToTwo() {
		$.mobile.changePage($("#two"));
	}
	</script>
	
	<script type="text/javascript">
        $(document).ready(function () {
            $('#demo-pie-1').pieChart({
                barColor: '#68b828',
                trackColor: '#eee',
                lineCap: 'butt',
                lineWidth: 16,
                onStep: function (from, to, percent) {
                    $(this.element).find('.pie-value').text(Math.round(percent) + '%');
                }
            });
			
			$('#demo-pie-2').pieChart({
                barColor: '#68b828',
                trackColor: '#eee',
                lineCap: 'butt',
                lineWidth: 16,
                onStep: function (from, to, percent) {
                    $(this.element).find('.pie-value').text(Math.round(percent) + '%');
                }
            });
			
			$('#demo-pie-3').pieChart({
                barColor: '#68b828',
                trackColor: '#eee',
                lineCap: 'butt',
                lineWidth: 16,
                onStep: function (from, to, percent) {
                    $(this.element).find('.pie-value').text(Math.round(percent) + '%');
                }
            });
			
			$('#demo-pie-4').pieChart({
                barColor: '#68b828',
                trackColor: '#eee',
                lineCap: 'butt',
                lineWidth: 16,
                onStep: function (from, to, percent) {
                    $(this.element).find('.pie-value').text(Math.round(percent) + '%');
                }
            });
        });
    </script>
	
	<script>
      var map;
      function initMap() {
		var jju = {lat: 33.451706, lng: 126.557978};
		var jjap = {lat: 33.510619, lng: 126.491321};
		var jjvm = {lat: 33.500468, lng: 126.529820};
		var jjsi = {lat: 33.499821, lng: 126.531211};
		
        var map = new google.maps.Map(document.getElementById('map-canvas'), {
          center: jju,
          zoom: 16
        });
		
		var contentString = 
			'<div id="iw_content">'+
	            '<div id="siteNotice">'+
	            	'<h2 id="firstHeading" class="firstHeading">제주대학교</h2>'+
	            '</div>'+
	            '<div id="bodyContent">'+
	            	'<p><b>주차면수</b>: 110</p>'+
	            	'<p><b>주차점유</b>: 45</p>'+
	            	'<p><b>주차가능</b>: 65</p>'+
	            	'<button type="button" onclick="iw_btn_click();">주차점유율 예측</button>'+
	            '</div>'+
	            '<hr/>'+
	            
	            '<div id="siteNotice">'+
            		'<h2 id="weatherH" class="firstHeading">날씨정보</h2>'+
            	'</div>'+
	            '<div id="bodyContent">'+
		        	'<p id="T1H_2"><b>기온</b>: 110</p>'+
		        	'<p id="REH_2"><b>습도</b>: 45</p>'+
	        	'</div>'+
	        	
            '</div>';

        var infowindow = new google.maps.InfoWindow({
          content: contentString
        });

        var marker = new google.maps.Marker({
          position: jju,
          map: map,
          title: '제주대학교'
        });
		
        infowindow.open(map, marker);
      }
	  
	  function iw_btn_click() {
		$.mobile.changePage($("#three")); 
	  }
    </script>
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBXkHUIDpkPUQahj1UttBQuShfATwqygrg&callback=initMap" async defer></script>

	<script language="javascript" type="text/javascript">
	$(document).ready(function(){
		totalP = [110, 530, 40, 150];
		useP = [45, 414, 38, 102];

		ticks = ["제주대학교", "제주공항", "벤처마루", "제주시청"];

		plot2 = $.jqplot('chart5',[totalP, useP],{
		   title: '주차 점유대수',
		   legend: {
			   show: true
		   },
		   seriesDefaults: {
			   renderer: $.jqplot.BarRenderer,
			   rendererOptions: {
				   barPadding: 2
			   }
		   },
		   series: [
			  {label: '주차면수'},
			  {label: '주차점유'}
		   ],
		   axes: {
			   xaxis: {
				   label: '주차장',
				   renderer: $.jqplot.CategoryAxisRenderer,
				   tickRenderer: $.jqplot.CanvasAxisTickRenderer,
				   labelRenderer: $.jqplot.CanvasAxisLabelRenderer,
				   ticks: ticks,
				   tickOptions: {
					   angle: -30
					}
			   },
			   yaxis: {
				   tickRenderer: $.jqplot.CanvasAxisTickRenderer,
				   max: 600,
				   min: 0,
				   tickOptions: {
					   formatString: '%d',
					   angle: -30
					}
			   }
		   }
		});
	});
	</script>
	
	<script class="code" type="text/javascript">
	 $('#three').on('pageshow', function() {
		var line1 = [60, 90, 14, 19, 26, 35, 51];

		var plot6 = $.jqplot('chart6', [line1], {
			legend: {show:false},
			axes:{
			  xaxis:{
			  tickOptions:{ 
				angle: -30
			  },
			  tickRenderer:$.jqplot.CanvasAxisTickRenderer,
				label:'예측시간', 
			  labelOptions:{
				fontFamily:'Helvetica',
				fontSize: '14pt'
			  },
			  labelRenderer: $.jqplot.CanvasAxisLabelRenderer
			  }, 
			  yaxis:{
				renderer:$.jqplot.LogAxisRenderer,
				tickOptions:{
					labelPosition: 'middle', 
					angle:-30
				},
				tickRenderer:$.jqplot.CanvasAxisTickRenderer,
				labelRenderer: $.jqplot.CanvasAxisLabelRenderer,
				labelOptions:{
					fontFamily:'Helvetica',
					fontSize: '14pt'
				},
				label:'주차점유율'
			  }
			}
		});
	 });
	</script>
	
<!-- Don't touch this! -->
    <script class="include" type="text/javascript" src="./resources/js/jqplot/jquery.jqplot.min.js"></script>
    <script type="text/javascript" src="./resources/js/jqplot/syntaxhighlighter/scripts/shCore.min.js"></script>
    <script type="text/javascript" src="./resources/js/jqplot/syntaxhighlighter/scripts/shBrushJScript.min.js"></script>
    <script type="text/javascript" src="./resources/js/jqplot/syntaxhighlighter/scripts/shBrushXml.min.js"></script>
<!-- End Don't touch this! -->

<!-- Additional plugins go here -->
  <script class="include" type="text/javascript" src="./resources/js/jqplot/plugins/jqplot.meterGaugeRenderer.min.js"></script>
  
  <script class="include" type="text/javascript" src="./resources/js/jqplot/plugins/jqplot.barRenderer.min.js"></script>
  <script class="include" type="text/javascript" src="./resources/js/jqplot/plugins/jqplot.pieRenderer.min.js"></script>
  <script class="include" type="text/javascript" src="./resources/js/jqplot/plugins/jqplot.categoryAxisRenderer.min.js"></script>
  <script class="include" type="text/javascript" src="./resources/js/jqplot/plugins/jqplot.pointLabels.min.js"></script>
  
  <script class="include" type="text/javascript" src="./resources/js/jqplot/plugins/jqplot.canvasTextRenderer.min.js"></script>
  <script class="include" type="text/javascript" src="./resources/js/jqplot/plugins/jqplot.canvasAxisLabelRenderer.min.js"></script>
  
  <script class="include" type="text/javascript" src="./resources/js/jqplot/plugins/jqplot.logAxisRenderer.min.js"></script>
  <script class="include" type="text/javascript" src="./resources/js/jqplot/plugins/jqplot.canvasAxisTickRenderer.min.js"></script>
  <script class="include" type="text/javascript" src="./resources/js/jqplot/plugins/jqplot.dateAxisRenderer.min.js"></script>
<!-- End additional plugins -->
	
</body>
</html>

