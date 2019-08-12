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
 
 function goView(qna_idx) {
	
	 var frm = document.goViewFrm;
	 frm.qna_idx.value = qna_idx;
	 
	 frm.method = "GET";
	 frm.action = "view.we";
     frm.submit();
 }
 
 function goSearch() {
	var frm = document.searchFrm;
	frm.method = "GET";
	frm.action = "<%= request.getContextPath()%>/qnaList.we";
	frm.submit();
 }
 
</script>  

<div class="body" style="padding-left: 3%; margin-bottom: 50px; width:80%;">
	<h2 style="margin: 30px auto; text-align: center;">Q & A</h2>
	<h6 style="margin: 30px auto; text-align: center;">We promise sincere</h6>
	
	<table id="table" style="padding-left: 3%; margin-bottom: 50px; width:100%;">
		<tr>
			<th style="width: 10%;  text-align: center;">No</th>
			<th style="width: 45%; text-align: center;">Title</th>
			<th style="width: 10%;  text-align: center;">Name</th>
			<th style="width: 25%; text-align: center;">Date</th>
			<th style="width: 10%;  text-align: center;">View</th>
		</tr>	
		<c:forEach var="boardvo" items="${boardList}" varStatus="status">
			<tr>
				<td align="center">${boardvo.qna_idx}</td>
				<td align="left"> 
					<c:if test="${boardvo.depthno == 0}">
					   	  <span class="subject" onclick="goView('${boardvo.qna_idx}');">${boardvo.q_title}</span>
				 	</c:if>
				   
				   <c:if test="${boardvo.depthno > 0}">
					   	  <span class="subject" onclick="goView('${boardvo.qna_idx}');"><span style="color: red; font-style: italic; padding-left: ${boardvo.depthno * 20}px;">└Re&nbsp;</span>${boardvo.q_title}</span>
				   </c:if>
				</td>
				<td align="center">${boardvo.q_writer}</td>
				<td align="center">${boardvo.q_writeday}</td>
				<td align="center">${boardvo.q_viewcnt}</td>
				
		    </tr>
		</c:forEach>
	</table>
	<br/>
	
	<form name="goViewFrm">
		<input type="hidden" name="qna_idx"/>
		<input type="hidden" name="gobackURL" value="${gobackURL}"/> 
	</form>
	
	<!-- === #120. 페이지바 보여주기 === --> 
	<div align="center" style="width: 100%; border: 0px solid gray; margin-left: 50px; margin-bottom: 20px; " >
		<span class="page-link" >${pagebar}</span>
	</div>
	<div align="right" style="width: 100%; border: 0px solid gray; margin-left: 50px; margin-bottom: 20px; " >
	<button type="button" class="bbtns" onclick="javascript:location.href='qna/qnaAdd.we'">글쓰기</button>
	</div>
	
	<!-- === #96. 글검색 폼 추가하기 : 글제목, 글쓴이로 검색을 하도록 한다. === --> 
	<div style="width: 100%;" align="center">
	<form name="searchFrm" style="width: 100%;" >
		<select name="searchType" id="searchType" style="height: 20px; border-width: 0; display: inline-block;">
			<option value="q_title">글제목</option>
			<option value="q_writer">글쓴이</option>
		</select>
		<input type="text" name="searchWord" id="searchWord" class="form-control" placeholder="Keword, PLEASE!" size="40" autocomplete="off" /> 
		<button type="button" class="bbtns" onclick="goSearch()">검색</button>
	</form>
	</div>
	
	
</div>
  





