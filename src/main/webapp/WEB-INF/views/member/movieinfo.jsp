<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>

<script type="text/javascript">



</script>

<style type="text/css">

.movie {
	justify-content: center;
	align-items: center;
	display: flex;
}

.info-whole {
	float: right;
	color: white;
	margin-left: 30px;
/* 	justify-content: center; */
/* 	align-items: center; */
/* 	display: flex; */
}

.movie-title {
/* 	float: right; */
/* 	margin-left: 30px; */
}

.movie-info {
	border-right: 2px;
	border-color: white;
	
}

.btn-reserv{
/* 	padding: 2px; */
	margin-top : 5px;
}




</style>


</head>

<body style="background-color: #050040; !important">
<br>

//비로그인 시
<% if (session.getAttribute("login") == null) { %>
<form action="/main" method="post">
<script>
   window.alert('로그인 후 이용해주세요');
   window.location.href='/main/login';
</script>
</form>

<% } else if( session.getAttribute("login") != null && (boolean) session.getAttribute("login"))  { %> 
<form action="/reservation" method="post" >

<div class="movie">
	<div class="photo">
	<img src="resources/image/HarryPotter.jpg" height="400px;" width="300px;">
		<div class="info-whole">
			<div class="movie-title">
			<h2><%= session.getAttribute("movie_title") %></h2>
			<h4>Harry Potter</h4>
			</div>
			
			<div class="movie-info">
			<span class="">감독 :<%= session.getAttribute("movie_director") %> </span>
			<span class="">배우: <%= session.getAttribute("moive_actor") %></span><br>
			<span class="">장르: <%= session.getAttribute("movie_genre") %></span>
			<span class="">등급: <%= session.getAttribute("movie_age") %></span><br>
			<span class="">개봉일: <%= session.getAttribute("movie_date") %></span>
			</div>
			
			<div class="btn-reserv">
			<input type="submit" id="btn1" class="btn" value="예매하기" style="color: #050040;">
			</div>
		</div>
		
	
	
	
	</div>
</div>
</form>

<% } %>

	
	
	
<%@ include file="../layout/footer.jsp" %>