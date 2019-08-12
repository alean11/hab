<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String ctxPath = request.getContextPath(); %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style type="text/css">

	*:focus {
    	outline: none;
	}
	table, th, td {border: none;}
    #table {width: 970px; border-collapse: collapse; border: none;}
    #table th, #table td {padding: 5px;}
    #table th {background-color: transparent; border-bottom: 1px dotted #9035f9; height: 40px;}
     
    .subjectStyle {font-weight: bold;
                   color: navy;
                   cursor: pointer;} 
     .nice-select {
     float:none;
     width: 15%;
     display: inline-block;
    }              
</style>

<link rel="stylesheet" href="<%= ctxPath%>/resources/css/ahm_style.css">
<link rel="stylesheet" href="<%= ctxPath%>/resources/css/style.css">


<script type="text/javascript">
 $(document).ready(function(){
	
	$(".subject").bind("mouseover", function(event){
		var $target = $(event.target);
		$target.addClass("subjectStyle");
	});
	
	$(".subject").bind("mouseout", function(event){
		var $target = $(event.target);
		$target.removeClass("subjectStyle");
	});
	
	$("#searchWord").keydown(function(event) {
		 if(event.keyCode == 13) {
			 // 엔터를 했을 경우
			 goSearch();
		 }
	 });
	
 });
 
 function goView(n_idx) {
	
	 var frm = document.goViewFrm;
	 frm.n_idx.value = n_idx;
	 
	 frm.method = "GET";
	 frm.action = "viewNotice.we";
     frm.submit();
 }
 
 function goSearch() {
	var frm = document.searchFrm;
	frm.method = "GET";
	frm.action = "<%= request.getContextPath()%>/noticeList.we";
	frm.submit();
 }
 
</script>  

<div class="body" style="padding-left: 3%; margin-bottom: 50px; width:80%;">
	<h2 style="margin: 30px auto; text-align: center;">Notice</h2>
	<h6 style="margin: 30px auto; text-align: center;">Please read me!</h6>
	
	<table id="table" style="padding-left: 3%; margin-bottom: 50px; width:100%;">
		<tr>
			<th style="width: 10%;  text-align: center;">No</th>
			<th style="width: 45%; text-align: center;">Title</th>
			<th style="width: 10%;  text-align: center;">Name</th>
			<th style="width: 25%; text-align: center;">Date</th>
			<th style="width: 10%;  text-align: center;">View</th>
		</tr>	
		<c:forEach var="noticevo" items="${boardList}" varStatus="status">
			<tr>
				<td align="center">${noticevo.n_idx}</td>
				<td align="left"> 
					   	  <span class="subject" onclick="goView('${noticevo.n_idx}');">${noticevo.n_title}</span>
				</td>
				<td align="center">관리자</td>
				<td align="center">${noticevo.n_writeday}</td>
				<td align="center">${noticevo.n_viewcnt}</td>
				
		    </tr>
		</c:forEach>
	</table>
	<br/>
	
	<form name="goViewFrm">
		<input type="hidden" name="n_idx"/>
		<input type="hidden" name="gobackURL" value="${gobackURL}"/> 
	</form>
	
	<!-- === #120. 페이지바 보여주기 === --> 
	<div align="center" style="width: 70%; border: 0px solid gray; margin-left: 50px; margin-bottom: 20px;" >
		${pagebar}
	</div>
	
	<div align="right" style="width: 100%; border: 0px solid gray; margin-left: 50px; margin-bottom: 20px; " >
	<button type="button" class="bbtns" onclick="javascript:location.href='notice/noticeAdd.we'">글쓰기</button>
	</div>
	
	<!-- === #96. 글검색 폼 추가하기 : 글제목, 글쓴이로 검색을 하도록 한다. === --> 
	<div style="width: 100%;" align="center">
	<form name="searchFrm" style="">
		<select name="searchType" id="searchType" style="height: 26px;">
			<option value="n_title">글제목</option>
		</select>
		<input type="text" name="searchWord" id="searchWord" class="form-control" placeholder="Keword, PLEASE!" size="40" autocomplete="off" /> 
		<button type="button" class="bbtns" onclick="goSearch()">검색</button>
	</form>
	</div>
	
	
</div>
  





