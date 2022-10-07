<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.nav{
	height:70px;
	border-bottom : 1px solid black;
	display : flex;
	align-items : center;
}
.nav-right-items{
	display:flex;
	margin-left:auto;
}
.nav-item{
	margin-left : 10px;
}
.title{
	margin-left  : 600px;
	font-size:40px;
	font-weight:bold;
}
.movie{
	display : flex;
}
.movie-item{
	width:300px;
	height:300px;
	border:1px solid black;
	margin:60px;	
}
.movie-item-button{
	padding:.5rem 1rem;
	font-size:1.25rem;
	line-heigth:1.5;
	margin-left  : 170px;
}
</style>
</head>
<body>
	<div class="nav">
		<div class="title">
			TITLE
		</div>

		<div class="nav-right-items">
			<div class="nav-item">메뉴</div>
			<div class="nav-item">메뉴</div>
			<div class="nav-item">메뉴</div>
			<div class="nav-item">메뉴</div>
			<div class="nav-item"> <button onclick="location.href='/main/login'">로그인</button> </div>
			<div class="nav-item"> <button onclick="location.href='/main/join'">회원가입</button> </div>
		</div>

	</div>

	<div class="main">




	<div class="movie">
	<div>
		<div class="movie-item">1</div> 
		<div> <button class="movie-item-button">click</button> </div>
	</div>	
		<div class="movie-item">1</div>
		<div class="movie-item">1</div>



	</div>



	</div>
</body>
</html>