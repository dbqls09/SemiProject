<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./layout/header.jsp" %>
    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<style type="text/css">

.seat{
	display: flex;
	justify-content: center;
	align-items: center;
}

 input[type="checkbox"] { 
 	display: inline-block; 
 	width: 20px; 
 	height: 20px; 
 	border: 2px solid #bcbcbc; 
 	cursor: pointer; 
	background-color: #ff8955;
 } 

.seat-wrapper {
	width:50%;
	height:280px;
	float:left;
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

.seatchk {
    background-color: #444;
    border-radius: 1em;
    width: 234px;
    padding: 5px;
    margin-top: 60px;
    margin-left: 500px;
}

</style>
<script type="text/javascript">

function getCheckboxValue()  {
	
	//체크박스 체크된 개 수 구한 뒤 허용 갯 수 넘으면 체크박스 외 disabled 
	var cnt=$("input:checkbox[name=seat]:checked").length;

	if(cnt>3){
		$(":checkbox:not(:checked)").attr("disabled", "disabled");

	}else {
	        $("input[name=chk]:checkbox").removeAttr("disabled");
	    }
	
	  // 선택된 목록 가져오기
	  const query = 'input[name="seat"]:checked';
	  const selectedEls = 
	      document.querySelectorAll(query);
	  
	  // 선택된 목록에서 value 찾기
	  let result = '';
	  selectedEls.forEach((el) => {
	    result += el.value + ' ' + ' / ';
	  });
	  
	  // 출력
	  document.getElementById('result').innerText
	    = result;
	}
	

</script>
</head>
<body>

<%
    List<String> list = new ArrayList<>();
    %>

		<form action="./pay">
		<div class="seat-wrapper">
		
		<div class="seatchk">
			<div><img src="./imgs/screen.png" width="233px;" height="40px;" style="border-radius:4px; margin-top:5px;" ></div> <br> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<%for(char c = 'A'; c<='F'; c++){%>
				<small><%=c %></small>&nbsp;&nbsp;
				<%} %><br>
				
			<%for(int r=1 ; r<=3; r++) {%>
				<%=r %>
				<%for(char c = 'A'; c<='F';c++){ %>
				<%if(list.contains(c+"-"+r)){ %>
					<input type="checkbox" class="seat" name="seat" id="seat" value="<%=c %>-<%=r%>" onclick="getCheckboxValue()" disabled>
					<label for="seat"></label>
					
				<%} else { %>
					<input type="checkbox" class="seat" name="seat" id="seat" value="<%=c %>-<%=r%>" onclick="getCheckboxValue()">
					<label for="seat"></label>
				
					<%} %>
				<%} %>
				<br>
				<%} %>
			
				<br>
			<%for(int r=4 ; r<=6;  r++) {%>
				<%=r %>
				<%for(char c = 'A'; c<='F';c++){ %>
				<%if(list.contains(c+"-"+r)){ %>
					<input type="checkbox" class="seat" name="seat" id="seat" value="<%=c %>-<%=r%>" onclick="getCheckboxValue()" disabled>
					<label for="seat"></label>
					
				<%} else { %>
					<input type="checkbox" class="seat" name="seat" id="seat" value="<%=c %>-<%=r%>" onclick="getCheckboxValue()">
					<label for="seat"></label>
				
					<%} %>
				
				<%} %>
				<br>
				<%} %>
			</div>
				
				<br>

		</div>
		
		<div class="payment-total">
		
			<div class="info">
			영화정보
			</div>
		
			<span id='result'></span>
			
			<div class="btn-group">
			<button type ="submit" class="btn">예매</button>
			<button type="button" onclick="location.href='<%=request.getContextPath() %>/reservation'" class="btn">이전</button>
			</div>
			
		</div>
			</form>
		
		
<%@ include file="./layout/footer.jsp" %>		

</body>
</html>