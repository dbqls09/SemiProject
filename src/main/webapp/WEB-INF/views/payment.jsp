<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="./layout/header.jsp" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">

.payment-wrapper {
	width:50%;
	height:280px;
	float:left;
	margin-left: 500px;
}

.payment-select {
	border: 1px solid black;
	width: 280px;
	height: 500px;
	
}

.select {
	width:400px;
	height: 35px;
}

.payment-table {
	border: 1px solid black;
	border-bottom-color: black;
}

.crad-select {
	width:300px;
	height: 35px;
}

.info {
	position: relative;
    min-height: 350px;
    margin: 0px;
    padding: 15px;
}

.payment-total {
	width: 280px;
	height: 500px;
	border: 1px solid #696969;
	background-color: #696969;
	color: #fff;
	border-radius: 3em;
	position: relative;
	margin-left: 1000px
}

.btn-group {
	position: absolute;
    left: 0;
    bottom: 0;
    width: 100%;
    margin: 0;
    padding: 0;
}

.btn-group .btn {
	width: 100%;
    height: 40px;
}

h3 {
	color: white;
}

table span {
	color: white;
}
</style>

</head>
<body>
    <%
  //예매가 확정된 좌석 정보를 저장할 리스트
  	List<String> list = new ArrayList<>();
    
  //사용자가 예매를 희망하는 좌석 정보가 들어있는 배열
  	String[] seat = request.getParameterValues("seat");

  //예약 좌석 정보 저장 리스트
  	List<String> temp = new ArrayList<>();
    %>

<div class="payment-wrapper">

<h3>관람권 및 할인적용</h3>
<div>
<select class="select">
<option>포인트/쿠폰</option>
</select><br>
<select class="select">
<option>관람권/모바일상품권</option>
</select><br>
<select class="select">
<option>제휴포인트</option>
</select><br>
</div>

<h3>결제 수단 선택</h3>
<div class="payment-option">

<table class="payment-table">

<tr>
<td><input type="radio" name="payment" value="card"><span>카드</span></td>
<td><input type="radio" name="payment" value="phone"><span>휴대폰 결제</span>></td>
<td><input type="radio" name="payment" value="easypay"><span>간편 결제</span>></td>
<td><input type="radio" name="payment" value="bankbook"><span>무통장 입금</span>></td>
</tr>

<tr>
<td><span>카드사 선택</span>></td>
<td colspan="3">
<select class="crad-select">
<option>카드선택</option>
</select>
</td>
</tr>
</table>
</div>


</div>


		<div class="payment-total">
		
		
			<div class="info">
			<span>해리포터와 마법사의 돌</span><br><br>
			<span>극장: 강남점</span><br><br>
			<span>날짜: 10월 20일</span>
			</div>
			
			<div style="padding-left: 15px; ">
			<%
				for(String s: seat) {
					out.print( "좌석 : " + "<span>["+s+ "]");
				}
			%>
			</div>
<!-- 			<span id='result' style="color: #6feaf6;"></span> -->
			
			<div class="btn-group">
			<button onclick="location.href='<%=request.getContextPath() %>/seat'" class="btn">이전</button>
			<button onclick="location.href='<%=request.getContextPath() %>/pay_ck'" type ="submit" class="btn">결제</button>
			</div>
			
		</div>


<%@ include file="./layout/footer.jsp" %>