<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">

#container {margin-left: 0px;width:378px;height:550px;}

ul#continents {margin:0px;
				list-style:none;
				width:340px;
				height:550px;
				position:relative;
				background:url('resources/img/map/map_korea_bg.png') no-repeat 0 0;
				float:left;}
ul#continents li {position:absolute;}

.incheon {width:61px;height:65px;top:98px;left:62px;}
.seoul {width:48px;height:44px;top:109px;left:108px;}
.gyunggi {width:115px;height:146px;top:61px;left:91px;}
.kangwon {width:186px;height:150px;top:38px;left:139px;}
.chungnam {width:129px;height:120px;top:179px;left:60px;}
.sejong {width:56px;height:50px;top:203px;left:119px;}
.daejeon {width:42px;height:47px;top:231px;left:143px;}
.chungbuk {width:116px;height:140px;top:154px;left:151px;}
.gyungbuk {width:153px;height:174px;top:162px;left:193px;}
.jeonbuk {width:130px;height:95px;top:269px;left:83px;}
.daegu {width:48px;height:49px;top:280px;left:234px;}
.jeonnam {width:178px;height:143px;top:333px;left:36px;}
.kwangju {width:48px;height:38px;top:354px;left:97px;}
.gyeongnam {width:145px;height:133px;top:286px;left:172px;}
.ulsan {width:52px;height:55px;top:301px;left:288px;}
.busan {width:77px;height:59px;top:341px;left:247px;}
.jeju {width:83px;height:51px;top:477px;left:56px;}

ul#continents li a {display:block;outline:none;height:100%;}
ul#continents li a {text-indent:-9000px;}
ul#continents li a:hover {background:url(resources/img/map/map_over.png) no-repeat 0 0;}

ul#continents li.incheon a:hover {background-position:-385px -47px;}
ul#continents li.kangwon a:hover {background-position:-8px -5px;}
ul#continents li.gyunggi a:hover {background-position:-199px -8px;}
ul#continents li.seoul a:hover {background-position:-326px -56px;}
ul#continents li.chungbuk a:hover {background-position:-451px -7px;}
ul#continents li.gyungbuk a:hover {background-position:-569px -4px;}
ul#continents li.sejong a:hover {background-position:-882px -45px;}
ul#continents li.chungnam a:hover {background-position:-725px -17px;}
ul#continents li.daejeon a:hover {background-position:-8px -187px;}
ul#continents li.daegu a:hover {background-position:-77px -177px;}
ul#continents li.jeonbuk a:hover {background-position:-149px -163px;}
ul#continents li.gyeongnam a:hover {background-position:-599px -186px;}
ul#continents li.ulsan a:hover {background-position:-773px -225px;}
ul#continents li.jeonnam a:hover {background-position:-384px -164px;}
ul#continents li.kwangju a:hover {background-position:-313px -197px;}
ul#continents li.jeju a:hover {background-position:-28px -330px;}
ul#continents li.busan a:hover {background-position:-860px -192px;}

</style>
</head>
<body>
<div id="container">
	<ul id="continents" style="margin-left: 0px;">
	  <li class="incheon"><a href="common_files/sub2_page2.asp?addr1=인천광역시" target="_self"></a></li>
	  <li class="kangwon"><a href="common_files/sub2_page2.asp?addr1=강원도" target="_self"></a></li>
	  <li class="gyunggi"><a href="common_files/sub2_page2.asp?addr1=경기도" target="_self"></a></li>
	  <li class="chungnam"><a href="common_files/sub2_page2.asp?addr1=충청남도" target="_self"></a></li>
	  <li class="sejong"><a href="common_files/sub2_page2.asp?addr1=세종특별자치시" target="_self"></a></li>
	  <li class="chungbuk"><a href="common_files/sub2_page2.asp?addr1=충청북도" target="_self"></a></li>
	  <li class="daejeon"><a href="common_files/sub2_page2.asp?addr1=대전광역시" target="_self"></a></li>
	  <li class="gyeongnam"><a href="common_files/sub2_page2.asp?addr1=경상남도" target="_self"></a></li>
	  <li class="gyungbuk"><a href="common_files/sub2_page2.asp?addr1=경상북도" target="_self"></a></li>
	  <li class="daegu"><a href="common_files/sub2_page2.asp?addr1=대구광역시" target="_self"></a></li>
	  <li class="jeonbuk"><a href="common_files/sub2_page2.asp?addr1=전라북도" target="_self"></a></li>
	  <li class="jeonnam"><a href="common_files/sub2_page2.asp?addr1=전라남도" target="_self"></a></li>
	  <li class="kwangju"><a href="common_files/sub2_page2.asp?addr1=광주광역시" target="_self"></a></li>
	  <li class="ulsan"><a href="common_files/sub2_page2.asp?addr1=울산광역시" target="_self"></a></li>
	  <li class="jeju"><a href="common_files/sub2_page2.asp?addr1=제주특별자치도" target="_self"></a></li>
	  <li class="busan"><a href="common_files/sub2_page2.asp?addr1=부산광역시" target="_self"></a></li>
	  <li class="seoul"><a href="common_files/sub2_page2.asp?addr1=서울특별시" target="_self"></a></li>
	</ul>
</div>
</body>
</html>