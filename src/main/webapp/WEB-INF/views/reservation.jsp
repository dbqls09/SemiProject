<%@page import="dto.Movie"%>
<%@page import="dto.Theater"%>
<%@page import="dto.Mdate"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="./layout/header.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예매</title>

<%	List<Movie> movieList = (List) request.getAttribute("movieList"); %>
<%	List<Theater> theaterList = (List) request.getAttribute("theaterList"); %>
<%	List<Mdate> mdateList = (List) request.getAttribute("mdateList"); %>

<style type="text/css">

.main1 {
 display: flex;
 justify-content: center;
 text-align: left;
 color: #fff;
}

.tb {
 display: flex;
 justify-content: center;
}

.m-table {
 width: 300px;
 color: #fff;
}

.t-table {
 width: 300px;
 margin-right: 0px;
 color: #fff;
}

.d-table {
 width: 300px;
 color: #fff;
}

.box {
 margin-left: 20px;
 width: 280px;
 height: 400px;
 background-color: #696969;
}

.img {
 margin-left: 10px;
 margin-top: 15px;
}

.text1 {
 margin-left: 10px;
 color: #fff;
}

.btn {
 display: block;
 margin: auto;
 margin-top: 20px;
}

</style>

</head>
<body>

<br>
<div class="main1">
	<h3>예매하기</h3>
</div>

<br>

<div class="tb">
<table class="m-table">
	<tr>
		<th style="width: 15%">영화</th>
	</tr>

	<%	for(int i=0; i<movieList.size(); i++) { %>
	
	<tr>
		<td><%=movieList.get(i).getMovieAge() %> <%=movieList.get(i).getMovieTitle() %></td>
	</tr>

	<%	} %>
	
</table>

	<table class="t-table">
		<tr>
			<th style="width: 15%">극장</th>
		</tr>
	
		<%	for(int i=0; i<theaterList.size(); i++) { %>
		
		<tr>
			<td><%=theaterList.get(i).getTheaterName() %></td>
		</tr>
	
		<%	} %>
		
	</table>
	
	<table class="d-table">
		<tr>
			<th style="width: 15%">날짜</th>
		</tr>
	
		<%	for(int i=0; i<mdateList.size(); i++) { %>
		
		<tr>
			<td><%=mdateList.get(i).getShowDate() %></td>
		</tr>
	
		<%	} %>
		
	</table>

<div class="box">
	<div class="img">
		<img src="/imgs/444.png" style="height: 230px;">
	</div>
	<hr>
	<div class="text1">
		<span>해리포터와 마법사의 돌</span><br><br>
		<span>극장: 강남점</span>
		<span style="padding-left: 20px;">날짜: 10월 20일</span>
	</div>
	<hr>
	<button onclick="location.href='<%=request.getContextPath() %>/seat'" class="btn">좌석선택</button>
</div>
</div>

<br><br><br><br><br>

<%@ include file="./layout/footer.jsp" %>