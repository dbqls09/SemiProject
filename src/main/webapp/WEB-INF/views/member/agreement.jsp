<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
function send(f){
	if(f.agree.checked==true){
		return true;
	}else{
		alert("약관에 동의해주시기 바랍니다.");
		return false;
	}
}
</script>
</head>
<body>

<div style="text-align: center"> 회원약관 </div>

<br>
<form action="/main/join" onsubmit="return send(this)">


<table border="0" align="center">
	<tr> 
		<td>
		<textarea cols="55" rows="14" readonly>
영화예메 서비스 약관(2022.10.12)


 
① 영화~~~~~~~~~~~~~~~~~~
 
② 개인정보~~~~~~~~~~~~~~

 
① 사용자~~~~~~~~~~~
 
회원가입~~~~~~~~~~~~~~~~~
약관동의
약관동의
약관동의
약관동의
			</textarea>
		</td>
	</tr>
</table>


<div style="text-align: center">
  <input type="checkbox" name="agree"/> 약관에 동의합니다
  <input type="submit" value="회원가입"/> 
  <input type="button" value="취소" onclick="javascript:history.back();"/>
</div>




</form>
</body>
</html>