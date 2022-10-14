<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예매확인</title>

<style type="text/css">

.main {
 display: flex;
 justify-content: center;
}

.main2 {
 display: flex;
 justify-content: center;
}

.bd1 {
 display: flex;
 justify-content: center;
}

.bd2 {
 display: flex;
 justify-content: center;
}

.body1 {
 width: 800px;
 background-color: #2F4F4F;
 color: White;
}

.text1 {
 padding-top: 10px;
 padding-bottom: 10px;
 padding-left: 15px;
}

.body2 {
 width: 800px;
 height: 300px;
 background-color: #DCDCDC; 
}

.img {
 margin-right: 50px;
 padding-top: 15px;
 padding-left: 15px;
 float: left;
}

.text2 {
 padding-top: 30px;
 float: left;
}

.title {

}


</style>

</head>
<body>

<div class="main">
	<h1>KLCinema</h1>
</div>
<br>
<div class="main2">
	<h3>예매 완료되었습니다</h3>
</div>
<br>
	
<didv class="bd1">	
<div class="body1">
	<div class="text1">
		<a>예매정보</a>
		<button class="recancel">예매취소</button>
	</div>
</div>
</didv>
	
<div class="bd2">
<div class="body2">
	<span class="img">
		<img src="/imgs/img1.png" style="height: 230px;">
		<br>
		<span class="title">
		아바타
		</span>
	</span>
		
	<span class="text2">
		<a>영화: 아바타</a><br><br>
		<a>날짜: 10월 20일</a><br><br>
		<a>좌석: A7</a><br><br>
		<a>결제: 14,000원</a><br><br>
		<button>홈으로</button>
	</span>
</div>
</div>


</body>
</html>