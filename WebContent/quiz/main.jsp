<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	if(session.getAttribute("userId") != null){
		%>
		<script type="text/javascript">
			alert('<%=session.getAttribute("userId")%>'+"환영");
		</script>
	<%	
	}
%>

</body>
</html>





