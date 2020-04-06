<%@page import="java.sql.*"%>
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
String userId = request.getParameter("id");
String userPwd = request.getParameter("pwd");
Class.forName("oracle.jdbc.driver.OracleDriver");
String url = "jdbc:oracle:thin:@192.168.0.65:1521:xe";
String id = "jsp";    String pwd = "1234";
Connection conn = DriverManager.getConnection(url, id, pwd);
String sql = "select * from members where id='"+userId+"'";
PreparedStatement pstm = conn.prepareStatement(sql);
ResultSet rs = pstm.executeQuery();
if(rs.next()){
	if(userPwd.equals(rs.getString("pwd"))){
		session.setAttribute("userId", rs.getString("name"));
		response.sendRedirect("main.jsp");
	}else{
		%>
		<script> alert("비밀번호가 틀립니다!!!"); 
		location.href="login.jsp"; 	</script>
	<%
		//response.sendRedirect("login.jsp");
	}
}else{%>
		<script> alert("해당 아이디가 존재하지 않습니다!!!"); 
		location.href="login.jsp"; </script>
<%//response.sendRedirect("login.jsp");
}
%>

</body>
</html>










