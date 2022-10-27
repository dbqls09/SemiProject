<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>KLC📽️INEMA</title>

<link rel="stylesheet" href="resources/footer.css" type="text/css">

<style type="text/css">
.nav {
	/* 	height:150px; */
	/* 	border-bottom : 1px solid rgb(144, 144, 144); */
	display: flex;
	align-items: flex-start;
	margin: auto;
}

.nav-right-items {
	/* 	text-decoration: none; */
	font-size: 13px;
	color: rgb(144, 144, 144);
	display: flex;
	margin-left: auto;
	/* 	margin-right: auto; */
	justify-content: flex-end;
	margin-right: 10%;
	padding: 1%;
}

.nav-item {
	text-decoration: none;
	color: rgb(144, 144, 144);
	border-right: 1px solid rgba(255, 255, 255, 0.5);
	/* 	margin-left : 10px; */
	padding-right: 13px;
	padding-left: 13px;
}

.title {
	margin-top: 1%;
	margin-bottom: 3%;
	/*  	margin-left: 730px; */
	/*  	margin-right: auto;  */
	justify-content: center;
	align-items: center;
	display: flex;
	font-size: 40px;
	font-weight: bold;
	color: rgb(255, 250, 240);
	/* 	border-bottom : 1px solid rgb(144, 144, 144); */
}

.title1 {
	border-bottom: 1px solid rgb(144, 144, 144);
}

.main {
	justify-content: center;
	align-items: center;
	display: flex;
}

.movie {
	display: flex;
/* 	margin: 100px; */
	margin-top: 20px;
	margin-bottom: 40px;
}

.movie-item {
	/* 	float: left; */
/* 	width: 1000px; */
/* 	height: 1000px; */
	/* 	border: 1px solid white; */
/* 	margin: 30px;  */
/* 	margin-top: 100px; */
/* 	margin-bottom: 100px; */
}

.ranking{
	justify-content: center;
	align-text: center;
	display: flex;
	color: white;
	text-shadow: yes;
	font-size: 30px;
}

.movie-item-button {
	/* 	padding:.5rem 1rem; */
	font-size: 1.25rem;
	line-heigth: 1.5;
	margin: auto;
	relative: position;
}

.box-whole{
	margin: 50px;
/* 	margin-bottom: 20px; */
	
}

#btn1 {
	border: 0px;
	background-color: none;
	color: #050040;
	padding: 10px 10px;
	font-size: 15px;
	border-radius: 5px;
	font-family: Malgun Gothic;
}

img {
	border-radius: 2px;
	
	
}

.btn-item {
	padding: 1%;
	color: #050040;
	justify-content: center;
	align-text: center;
	display: flex;
/* 	width: 100px; */
}

.title > a {color: white;

 text-decoration: none;
 }


#btn1 {
	width: 200px;
}
</style>

<script type="text/javascript">
	$(document).ready(function() {

		//예매 버튼
		$("#btnUpdate").click(function() {
			this.parents("form").submit();
		})

	})
</script>

</head>
<body bgcolor="#050040">
	<div class="nav">
		<!-- 		<div class="title">KLC📽️INEMA</div> -->

		<div class="nav-right-items">
			<%-- 로그인 성공 시 --%>
			<%
			if (session.getAttribute("login") != null && (boolean) session.getAttribute("login")) {
			%>
			<a class="nav-item"><%=session.getAttribute("user_name")%>님, 환영합니다.</a><br> 
			<a class="nav-item" href="/main/logout">로그아웃</a>
			<a class="nav-item" href="./mypage">마이페이지</a>

			<%-- 비로그인 시 --%>
			<%} else if (session.getAttribute("login") == null) {%>
			<a class="nav-item" href="./main/login">로그인</a> 
			<a class="nav-item" href="./main/agreement">회원가입</a>
			<%
			}
			%>

<!-- 			<a class="nav-item" href="./mypage">마이페이지</a>  -->
			<a class="nav-item" href="/customer">고객센터</a> 
			<a class="nav-item" href="#" style="border-right: none;">빠른예매</a>
			<!-- 			<a class="nav-item"><button onclick="location.href='/main/join'">회원가입</button> </a> -->
		</div>

	</div>

	<div class="title1">
		<div class="title"> <a href="/main">KLC📽️INEMA</a></div>
	</div>

	<div class="main">
		<div class="movie">

			<form action="/movie/view" method="get" class="movieForm">
			<div class="box-whole">
				<div class="ranking">
				<div>1</div>
				</div>
				<div class="photobox">
					<div class="movie-item"> 
					<img src="resources/image/HarryPotter.jpg" height="400px;" width="270px" style="border-radius: 10px;">
						<div class="btn-item">
							<button type="submit" id="btn1">바로 예매</button>
							<input type="hidden" name="movie_code" value="444">
						</div>
					</div>
				</div>
				</div>
			</form>

			<form action="/movie/view" method="get" class="movieForm">
			<div class="box-whole">
			<div class="ranking">
				<div>2</div>
				</div>
				<div class="photobox">
					<div class="movie-item"> 
					<img src="resources/image/Cooperation.jpg" height="400px;" width="270px" style="border-radius: 10px;">
						<div class="btn-item">
							<button type="submit" id="btn1">바로 예매</button>
							<input type="hidden" name="movie_code" value="333">
						</div>
					</div>
				</div>
				</div>
			</form>

			<form action="/movie/view" method="get" class="movieForm">
			<div class="box-whole">
			<div class="ranking">
				<div>3</div>
				</div>
				<div class="photobox">
					<div class="movie-item"> 
					<img src="resources/image/LifeIsBeautiful.jpg" height="400px;" width="270px" style="border-radius: 10px;">
						<div class="btn-item">
							<button type="submit" id="btn1">바로 예매</button>
							<input type="hidden" name="movie_code" value="222">
						</div>
					</div>
				</div>
				</div>
			</form>

			<form action="/movie/view" method="get" class="movieForm">
			<div class="box-whole">
			<div class="ranking">
				<div>4</div>
				</div>
				<div class="photobox">
					<div class="movie-item"> 
					<img src="resources/image/Avatar.jpg" height="400px" width="270px" style="border-radius: 10px;">
						<div class="btn-item">
							<button type="submit" id="btn1">바로 예매</button>
							<input type="hidden" name="movie_code" value="111">
						</div>
					</div>
				</div>
			</div>
			</form>
		</div>
	</div>
	</form>




	<%@ include file="../layout/footer.jsp"%>