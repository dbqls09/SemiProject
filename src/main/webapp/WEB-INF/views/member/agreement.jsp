<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
.agreebox {
	display: flex;
/* 	margin: 0 auto; */
	justify-content: center;
	
}

.wholebox {
	text-align: center;
	margin-bottom: 1%;
}
</style>
<script>
	function send(f) {
		if (f.agree.checked == true) {
			return true;
		} else {
			alert("약관에 동의해주시기 바랍니다.");
			return false;
		}
	}
</script>
</head>
<body>

	<div style="text-align: center">회원약관</div>

	<br>
	<form action="/main/join" onsubmit="return send(this)">


		<table border="0" align="center">
			<tr>
				<td><textarea cols="55" rows="14" readonly
						style="width: 800px; height: 500px; padding-top: 30px; padding-left: 30px; padding-right: 30px;">
영화예메 서비스 약관(2022.10.12)

제 1장 총칙

제 1 조 [목적]

본 약관은 KLCINEMA의 기관 홈페이지의 이용조건 및 절차, 이용자와 당 사이트의 권리, 의무, 책임사항과 기타 필요한 사항을 규정함을 목적으로 합니다.

제 2 조 [약관의 명시와 개정]

1. 당 사이트는 이 약관의 내용과 주소지, 관리자의 성명, 개인정보보호 담당자의 성명, 연락처(전화, 팩스, 전자우편 주소 등) 등을 이용자가 알 수 있도록 당 사이트의 초기 서비스화면(전면)에 게시합니다.
2. 당 사이트는 약관의규제에관한법률, 전자거래기본법, 전자서명법, 정보통신망이용촉진및정보보호이용등에관한법률, 방문판매등에관한법률, 소비자보호법 등 관련법을 위배하지 않는 범위에서 이 약관을 개정할 수 있습니다.
3. 당 사이트가 약관을 개정할 경우에는 적용일자 및 개정사유를 명시하여 현행약관과 함께 당 사이트의 초기화면에 그 적용일자7일이전부터 적용일자 전일까지 공지합니다.
4. 당 사이트는 귀하가 본 약관 내용에 동의하는 것을 조건으로 귀하에게 서비스를 제공할 것이며, 귀하가 본 약관의 내용에 동의하는 경우, 당 사이트의 서비스 제공 행위 및 귀하의 서비스 사용 행위에는 본 약관이 우선적으로 적용될 것입니다.
5. 이 약관에 동의하는 것은 정기적으로 웹을 방문하여 약관의 변경사항을 확인하는 것에 동의함을 의미합니다. 변경된 약관에 대한 정보를 알지 못해 발생하는 이용자의 피해는 당 사이트에서 책임지지 않습니다.
6. 회원은 변경된 약관에 동의하지 않을 경우 회원 탈퇴(해지)를 요청할 수 있으며, 변경된 약관의 효력 발생일로부터 7일 이후에도 거부의사를 표시하지 아니하고 서비스를 계속 사용할 경우 약관의 변경 사항에 동의한 것으로 간주됩니다.
7. 본 약관에 명시되지 않은 사항은 전기통신기본법, 전기통신사업법, 정보통신윤리위원회심의규정, 정보통신 윤리강령, 프로그램보호법 및 기타 관련 법령의 규정에 의합니다.
제 3 조 [용어의 정의]

본 약관에서 사용하는 용어의 정의는 다음과 같습니다.
1. 이용자: 본 약관에 따라 당 사이트가 제공하는 서비스를 받는 자.
2. 이용계약: 서비스 이용과 관련하여 당 사이트와 이용자간에 체결하는 계약을 말합니다.
3. 가 입: 당 사이트가 제공하는 신청서 양식에 해당 정보를 기입하고, 본 약관에 동의하여 서비스 이용계약을 완료시키는 행위
4. 회 원: 당 사이트에 회원가입에 필요한 개인 정보를 제공하여 회원 등록을 한 자로서, 당 사이트의 정보 및 서비스를 이용할 수 있는 자
5. 이용자아이디(ID): 이용고객의 식별과 이용자가 서비스 이용을 위하여 이용자가 선정하고 당 사이트가 부여하는 문자와 숫자의 조합을 말합니다.
6. 비밀번호(PW): 이용자가 등록회원과 동일인인지 신원을 확인하고 통신상의 자신의 개인정보보호를 위하여 이용자 자신이 선정한 문자와 숫자의 조합
7. 탈퇴(해지): 회원이 이용계약을 종료시키는 행위
8. 본 약관에서 정의하지 않은 용어는 개별서비스에 대한 별도약관 및 이용규정에서 정의합니다.
제 2 장 이용계약의 성립 및 해지

			</textarea></td>
			</tr>
		</table>


		<div class="wholebox">
			<div class="agreebox">
				<input type="checkbox" name="agree" />
				<h4 style="color: white;">약관에 동의합니다</h4>
			</div>
			<input type="submit" value="회원가입" /> 
			<input type="button" value="취소" onclick="javascript:history.back();" />
		</div>




	</form>
	<%@ include file="../layout/footer.jsp"%>