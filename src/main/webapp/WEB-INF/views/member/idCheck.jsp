<%@page import="dao.impl.MemberDaoImpl"%>
<%@page import="dao.face.MemberDao"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

</style>
<script type="text/javascript">
	function result(){
		
		opener.document.userInfo.idDuplication.value ="idCheck";
								 
		opener.document.userInfo.user_id.value = document.wfr.user_id.value;
		
		opener.document.userInfo.user_id.readOnly=true;
		
		
		
		window.close();
}

</script>



</head>
<body>
<h2>아이디 중복 체크</h2>

	<%
	
		String user_id = request.getParameter("user_id");
		MemberDao memberDao = new MemberDaoImpl();
	
		int result = memberDao.joinIdCheck(user_id);
		if(result == 1){
			out.print("사용 가능한 아이디");
	%>
		<input type="button" value="아이디 사용하기" onclick="result();">
	<%
		 
		}else if(result ==0){
			out.print("중복된 아이디");
		}else{
			out.print("에러발새에");
		}
	%>

<fieldset>
	
	<form action="/id/check" method="get" name="wfr">
		ID : <input type="text" name="user_id" value="<%=user_id%>">
		<input type="submit" value="중복 확인">	 
		
	</form>
</fieldset>	





</body>
</html>