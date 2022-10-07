<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@include file="./menu.jsp" %>

<div class="board">

<h1>게시글 작성</h1>
<hr>

<form action="./write" method="post" enctype="multipart/form-data">

<table class="table table-bordered">

<tr><td class="info">제목</td><td><input type="text" name="title"  style="width:100%;"></td></tr>

<tr><td class="info" colspan="2">본문</td></tr>
<tr><td  colspan="2"><textarea id="content" name="content"  style="width:100%;"></textarea></td></tr>

	
</table>	

첨부파일 <input type="file" name="file">


</form>

<div class="text-center">
	<button id="btnWrite" class="btn btn-primary">작성</button>
	<button id="btnCancel" class="btn btn-danger">취소</button>
</div>




</div>
</div> <!--innerwrap -->
</body>
</html>