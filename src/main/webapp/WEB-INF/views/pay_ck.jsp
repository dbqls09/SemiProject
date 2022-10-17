<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="./layout/header.jsp" %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예매 완료</title>

<style type="text/css">

.main {
 display: flex;
 justify-content: center;
 color: #fff;
 font-size: 40px;
}

.etitle{
 justify-content: center;
 text-align: center;
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
 border-radius: 10px;
}

.text1 {
 padding-top: 10px;
 padding-bottom: 10px;
 padding-left: 30px;
 height: 40px;
}

.body2 {
 width: 800px;
 height: 340px;
 background-color: #DCDCDC; 
 border-radius: 10px;
}

.img {
 margin-right: 40px;
 padding-top: 30px;
 padding-left: 30px;
 float: left;
}

.text2 {
 padding-top: 50px;
 float: left;
}

.btn {
 margin-left: 130px;
 margin-top: 20px;
}


</style>

</head>
<body>
<%
	String seat = (String)session.getAttribute("seat");
%>

	<div class="main">
		<h1>예매 완료되었습니다</h1>
	</div>
		
	<div class="bd1">	
		<div class="body1">
			<div class="text1">
				<h4 style="font-size: 20px; margin-top: 5px;">예매정보</h4>
			</div>
		</div>
	</div>
		
	<div class="bd2">
		<div class="body2">
			<span class="img">
				<img src="/imgs/444.png" style="height: 230px;">
				<br>
				<div class="etitle">
				Harry Potter
				</div>
			</span>
				
			<span class="text2">
				<span>영화: 해리포터와 마법사의 돌</span><br><br>
				<span>극장: 강남점</span><br><br>
				<span>날짜: 10월 20일</span><br><br>
				<span>좌석: <%=seat %></span><br><br>
				<span>결제: 14,000원</span><br><br>
				<button class="btn" onclick="location.href='<%=request.getContextPath() %>/main'">홈으로</button>
			</span>
		</div>
	</div>

<br><br><br><br><br>

<%@ include file="./layout/footer.jsp" %>