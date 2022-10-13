<%@page import="dao.face.MemberDao"%>
<%@page import="dao.impl.MemberDaoImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
#wrap{
	width:490px;
	text-align:center;
	margin : 0 auto 0 auto;  
}

#chk{
	text-align : center;
}




</style>


<script type="text/javascript">




</script>

</head>
<body onload="pValue()">
<div id="wrap">
	<br>
    <b><font size="4" color="gray">아이디 중복체크</font></b>
   
		<%
			String user_id = request.getParameter("user_id");
		//
		MemberDao memberDao = new MemberDaoImpl();
		
		%>
		
		
    <hr size="1" width="460">
    <br>    
	<div id="chk">
	    <form action="/id/check" method = "post" id="checkForm" name="checkForm" >
	  	<input type="text" name="user_id" id="user_id">
	   
		<input type="submit" value="중복 확인" >
	    </form> 
	
	
		<div id="msg"></div>       
		<br>      
	<input id="cancelBtn" type="button" value="취소" onclick="window.close()"><br> 
	</div>	
</div>    

</body>
</html>