<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>KLC📽️INEMA</title>
<!-- icon -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" />

<!-- jQuery 2.2.4 -->
<script type="text/javascript" src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
<!-- icon -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" />

<!-- <link rel="stylesheet" href="resources/footer.css" type="text/css"> -->
<link rel="stylesheet" href="/resources/footer.css" type="text/css">

<style type="text/css">

.nav{
/* 	height:150px; */
/* 	border-bottom : 1px solid rgb(144, 144, 144); */
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
/* 	margin-right: auto; */
	justify-content: flex-end;
	margin-right: 10%;
	padding: 1%;
	
	
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
/*  	border-bottom : 1px solid rgb(144, 144, 144);  */
}

.title1 {
	border-bottom : 1px solid rgb(144, 144, 144);
}

.main {
	justify-content: center;
	align-items: center;
	display: flex;
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

.title > a {color: white;

 text-decoration: none;
 }

</style>
</head>

<body style = "background-color: #050040; !important">

	<div class="nav">
<!-- 		<div class="title">KLC📽️INEMA</div> -->

		<div class="nav-right-items">
			<%-- 로그인 성공 시 --%>
			<% if(session.getAttribute("login") != null && (boolean) session.getAttribute("login")) { %>
            <a class="nav-item"><%=session.getAttribute("user_name") %>님, 환영합니다.</a><br>
            <a class="nav-item" href="/main/logout">로그아웃</a> 
             
			<%-- 비로그인 시 --%>
			<% } else if( session.getAttribute("login") == null) {%>
			<a class="nav-item" href="<%=request.getContextPath()%>/main/login">로그인</a> 
			<a class="nav-item" href="<%=request.getContextPath()%>/main/agreement">회원가입</a> 
			<% } %>
			 
			<a class="nav-item" href="<%=request.getContextPath()%> /mypage">마이페이지</a> 
			<a class="nav-item" href="<%=request.getContextPath()%> /customer">고객센터</a> 
			<a class="nav-item" href="#" style="border-right: none;">빠른예매</a>
			<!-- 			<a class="nav-item"><button onclick="location.href='/main/join'">회원가입</button> </a> -->
		</div>

	</div>
	
	<div class="title1">
	<div class="title"><a href="/main"> KLC📽️INEMA </a></div>
	</div>
	
