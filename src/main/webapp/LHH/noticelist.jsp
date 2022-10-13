<%@page import="dto.Notice"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" type="text/css" href="../LHH/style.css" >
<%@include file="./header.jsp" %>

<% List<Notice> noticeList = (List) request.getAttribute("noticeList"); %>

<div class="top"><h2>고객센터</h2></div>
<div class="innerwrap">
	<div class="left">
 		<div class="home1">고객센터</div>
		<div class="homeBox">
	
	    <div class="home2">
	      <div onclick="location='cspage.jsp'">고객센터 홈</div>
	      <div onclick="location='../notice/list'">공지사항</div>
	      <div onclick="location='../qna/write'">1:1문의</div>
	    </div>
	    
	    <div class="home3">
	      <h3>KLCINEMA 고객센터</h3>
	      <p><i class="fa-solid fa-headset"></i>&nbsp;&nbsp;09:00 ~ 18:00</p>
	    </div>
    
		</div><!-- home1 end -->  
	</div><!--left end -->
	
	<div class="right">
	
	<div class="board">
	<h3>공지사항</h3>
	<hr>

<table class="table table-striped table-hover table-condensed">
	<tr class="success">
		<th style="width: 15%">글번호</th>
		<th style="width: 45%">제목</th>
		<th style="width: 20%">작성일</th>
		<th style="width: 20%">조회수</th>
	</tr>
	
	<% for(int i=0; i< noticeList.size(); i++) { %>
	<tr>
		<td><%=noticeList.get(i).getNotice_no() %></td> 
		
		<td>
			<%=noticeList.get(i).getNotice_title() %></a>
		</td>
		
		<td><%=noticeList.get(i).getNotice_writedate() %></td>
		<td><%=noticeList.get(i).getHit()%></td>
	</tr>
	
	<% } %>
</table>


</div><!-- board -->

	</div><!-- right -->
</div> <!--innerwrap -->


<%@ include file="./footer.jsp" %>