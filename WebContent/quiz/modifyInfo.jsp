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
<%
request.setCharacterEncoding("utf-8");
response.setCharacterEncoding("utf-8");
Class.forName("oracle.jdbc.driver.OracleDriver");
String url = "jdbc:oracle:thin:@localhost:1521:xe";
Connection connect = DriverManager.getConnection(url, "jsp", "1234");
String id = request.getParameter("id");
String sql = "update members set pwd=?,name=?,addr=?,tel=? where id=?";
PreparedStatement ps = connect.prepareStatement(sql);
ps.setString(1, request.getParameter("pwd"));
ps.setString(2, request.getParameter("name"));
ps.setString(3, request.getParameter("addr"));
ps.setString(4, request.getParameter("tel"));
ps.setString(5, request.getParameter("id"));
ps.executeUpdate();
session.setAttribute("sessionName", request.getParameter("name"));
response.sendRedirect("main.jsp");
%>

</body>
</html>







