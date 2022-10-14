<%@page import="dto.Movie"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>영화 예매</title>

<%	List<Movie> movieList = (List) request.getAttribute("movieList"); %>

<style type="text/css">

.main {
 display: flex;
 justify-content: center;
}

.main2 {
 margin-right: 250px;
 margin-left: 250px;
}

.body1 {
 margin-right: 250px;
 margin-left: 250px;
 height: 300px;
 background-color: #DCDCDC; 
}

.body1_up{
 padding-top: 10px;
 padding-bottom: 10px;
 padding-left: 15px;
}

th, td {
 text-align: center;
}

td:nth-child(2) {
 text-align: center;
}

</style>

</head>
<body>

<div class="main">
	<h1>KLCinema</h1>
</div>

<div class="main2">
	<h3>예매하기</h3>
</div>

<div class="body1">
	<div class="body1_up">
		<a>영화</a>
	</div>
	<hr>
	<div class="body1_down">
	
	</div>
</div>

<div class="body2">

</div>

<table class="table table-striped table-hover table-condensed">
<tr>
	<th style="width: 15%">영화제목</th>
	<th style="width: 15%">영화나이</th>
</tr>

<%	for(int i=0; i<movieList.size(); i++) { %>
<tr>
	<td><%=movieList.get(i).getMovieTitle() %></td>
	<td><%=movieList.get(i).getMovieAge() %></td>
</tr>
<%	} %>
</table>


</body>
</html>