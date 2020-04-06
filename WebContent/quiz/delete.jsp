<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@page import="java.sql.*"%>
<h1>삭제되었습니다</h1>
<%
request.setCharacterEncoding("utf8");
Class.forName("oracle.jdbc.driver.OracleDriver");
String url = "jdbc:oracle:thin:@localhost:1521:xe";
Connection connect = DriverManager.getConnection(url, "jsp", "1234");
String id = (String)session.getAttribute("sessionId");
String query = "delete from members where id = '"+ id +"'";
Statement stmt = connect.createStatement();
int result = stmt.executeUpdate(query);
response.sendRedirect("logout.jsp");
%>

</body>
</html>





