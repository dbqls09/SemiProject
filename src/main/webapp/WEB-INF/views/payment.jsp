<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="/css/payStyle.css">
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

	<div class="pay-area">
	<span class="title" style="color: white;">최종 결제 금액</span>
	<div class="money">
	<span id=total></span>원
	</div>
	</div>
	
	<div class="btn-group">
	<button onclick="location.href='<%=request.getContextPath() %>/seat'" class="btn">이전</button>
	<button type="button" class="btn">다음</button>
	</div>
	
</div>
</div>

</div>


</body>
</html>