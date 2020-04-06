<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script>
function pwchk(){
	pw1 = document.getElementById("pwd1").value;
	pw2 = document.getElementById("pwd2").value;
	if(pw1 == pw2){
		document.getElementById("label").innerHTML="확인!!";
	}else{
		document.getElementById("label").innerHTML="불일치!!";
		document.getElementById("pwd1").value="";
		document.getElementById("pwd2").value="";
	}
}
function chkValidate(){
	if(document.getElementById('id').value == ""){
		alert('아이디는 필수 입력 사항입니다.');
		return;
	}else if(document.getElementById('pwd1').value == ""){
		alert('비밀번호는 필수 입력 사항입니다.');
		return;
	}
	else{ form.submit(); }
}
</script>
</head>
<body>
<%response.setCharacterEncoding("utf-8");%>
<form name="form" action="chkRegister.jsp" method="post">
	<input type="text" id="id" name="id" placeholder="아이디">(*필수 항목)<br>
	<input type="text" id="pwd1" name="pwd" placeholder="비밀번호"><br>
	<input type="text" id="pwd2" onchange="pwchk()" placeholder="비밀번호 확인">
	<label id="label">(*필수 항목)</label><br>
	<input type="text" name="name" placeholder="이름"><br>
	<input type="text" name="addr" placeholder="주소"><br>
	<input type="text" name="tel" placeholder="전화번호"><br>
	<input type="button" value="회원가입" onclick="chkValidate();">			
</form>
</body>
</html>






