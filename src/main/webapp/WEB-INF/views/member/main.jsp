<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>KLC📽️INEMA</title>
<style type="text/css">

.nav{
	height:150px;
	border-bottom : 1px solid rgb(144, 144, 144);
	display : flex;
 	align-items : flex-start;
 	margin: auto;
}

.nav-right-items{
/* 	text-decoration: none; */
	font-size: 13px;
	color: rgb(144, 144, 144);
	display:flex;
	margin-left: auto;
	margin-right: auto;
}

.nav-item{
	text-decoration: none;
	color: rgb(144, 144, 144);
	border-right: 1px solid rgba(255, 255, 255, 0.5);
/* 	margin-left : 10px; */
	padding-right: 13px;
	padding-left: 13px;
}

.title{
	margin-top: 70px;
 	margin-left: 730px;
 	margin-right: auto; 
	justify-content: center;
 	align-items: center; 
 	display: flex;
	font-size: 40px;
	font-weight: bold;
	color: rgb(255, 250, 240);
}

.main {
	justify-content: center;
	align-items: center;
	display: flex;
}

.photobox {
	
}

.movie{
	display : flex;
 	margin: 100px;
}

.movie-item{
/* 	float: left; */
	width: 1000px;
	height: 1000px;
/* 	border: 1px solid white; */
 	margin: 40px;	 
}

.movie-item-button{
/* 	padding:.5rem 1rem; */
	font-size:1.25rem;
	line-heigth:1.5;
	margin: auto;
	relative: position;
}

#btn1 {
	border: 0px;
	background-color: none;
	color: white;
	padding: 10px 10px;
	font-size: 15px;
	border-radius: 5px;
    font-family: Malgun Gothic;
}

img {
	
}

</style>
</head>

<body bgcolor="#050040">
	<div class="nav">
		<div class="title">KLC📽️INEMA</div>

		<div class="nav-right-items">
			<a class="nav-item" href="./main/login">로그인</a> 
			<a class="nav-item" href="./main/join">회원가입</a> 
			<a class="nav-item" href="#">마이페이지</a> 
			<a class="nav-item" href="#">고객센터</a> 
			<a class="nav-item" href="#" style="border-right: none;">빠른예매</a>
			<!-- 			<a class="nav-item"><button onclick="location.href='/main/join'">회원가입</button> </a> -->
		</div>

	</div>
	

	<div class="main">
		<div class="movie" style="float: left">
		
				<div class="photobox">
				<span class="movie-item"></span>
					<img src="resources/image/HarryPotter.jpg" height="400px;" width="270px">
					<div id="btn1">
						<button id="movie-item-button">바로 예매</button>
					</div>
			    </div>

			    <div class="photobox">
				<span class="movie-item"></span> 
					<img src="resources/image/Cooperation.jpg" height="400px;" width="270px">
					<div id="btn1">
						<button id="movie-item-button">바로 예매</button>
					</div>
				</div>

				<div class="photobox">
				<span class="movie-item"></span> 
					<img src="resources/image/LifeIsBeautiful.jpg" height="400px;" width="270px">
					<div id="btn1">
						<button id="movie-itme-button">바로 예매</button>
					</div>
				</div>

				<div class="photobox">
				<span class="movie-item"></span> 
					<img src="resources/image/Avatar.jpg" height="400px" width="270px">
					<div id="btn1">
						<button id="movie-item-button">바로 예매</button>
					</div>
				</div>

		</div>
	</div>



	<%@ include file="../layout/footer.jsp" %>