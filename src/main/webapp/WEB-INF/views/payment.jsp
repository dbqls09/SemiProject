<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
  //예매가 확정된 좌석 정보를 저장할 리스트
  	List<String> list = new ArrayList<>();
    
  //사용자가 예매를 희망하는 좌석 정보가 들어있는 배열
  	String[] seat = request.getParameterValues("seat");

  //예약 좌석 정보 저장 리스트
  	List<String> temp = new ArrayList<>();
  

    %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="http://code.jquery.com/jquery-2.2.4.min.js"></script>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="/css/payStyle.css">

<style type="text/css">

/* span { */
/* 	color: #6feaf6; */
/* } */

</style>

</head>
<body>

<div class="payment-wrapper">

<div class="col-xs-6">

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
<td><input type="radio" name="payment" value="card">카드</td>
<td><input type="radio" name="payment" value="phone">휴대폰 결제</td>
<td><input type="radio" name="payment" value="easypay">간편 결제</td>
<td><input type="radio" name="payment" value="bankbook">무통장 입금</td>
</tr>

<tr>
<td>카드사 선택</td>
<td colspan="3">
<select class="crad-select">
<option>카드선택</option>
</select>
</td>
</tr>
</table>
</div>

</div>


		<div class="col-xs-2">
		<div class="payment-total">
		
		
			<div class="info">
			영화정보
			</div>
		
			<%
				for(String s : seat){
					out.print( "좌석 : " + "<span>["+s+ "]</br>");
				}
			%>
<!-- 			<span id='result' style="color: #6feaf6;"></span> -->
			
			<div class="btn-group">
			<button onclick="location.href='<%=request.getContextPath() %>/seat'" class="btn">이전</button>
			<button type ="submit" class="btn">결제</button>
			</div>
			
		</div>
		</div>


<%@ include file="./layout/footer.jsp" %>