<%@page import="dto.Movie"%>
<%@page import="dto.Theater"%>
<%@page import="dto.Mdate"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예매</title>

<%	List<Movie> movieList = (List) request.getAttribute("movieList"); %>
<%	List<Theater> theaterList = (List) request.getAttribute("theaterList"); %>
<%	List<Mdate> mdateList = (List) request.getAttribute("mdateList"); %>

<style type="text/css">

.main {
 display: flex;
 justify-content: center;
}

.main2 {
 display: flex;
 justify-content: center;
 text-align: left;
}

.tb {
 display: flex;
 justify-content: center;
}

.m-table {
 width: 300px;
}

.t-table {
 width: 300px;
 margin-right: 0px;
}

.d-table {
 width: 300px;
}

.box {
 margin-left: 20px;
 background-color: #696969;
}

.btn {
 display: block;
 margin: auto;
}

</style>

</head>
<body>

<div class="main">
	<h1>KLC📽️INEMA</h1>
</div>

<br>

<div class="main2">
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
	<img src="/imgs/444.png" style="height: 230px;">
	<hr>
	<span>해리포터와 마법사의 돌</span><br>
	<span>극장: 강남점</span>
	<span>날짜: 10월 20일</span>
	<hr>
	<button onclick="location.href='<%=request.getContextPath() %>/seat'" class="btn">좌석선택</button>
</div>
</div>

</body>
</html>