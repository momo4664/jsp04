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
Class.forName("oracle.jdbc.driver.OracleDriver");
String url = "jdbc:oracle:thin:@192.168.50.235:1521:xe";
String id = "jsp";
String pwd = "1234";
Connection conn = DriverManager.getConnection(url, id, pwd);
String sql = "select * from student where id="+
								request.getParameter("name");
PreparedStatement pstm = conn.prepareStatement(sql);
ResultSet rs = pstm.executeQuery();
if(rs.next()){ %>
	<h1>인적 사항</h1>
	<h3>학번 : <%=rs.getString("id") %></h3>
	<h3>이름 : <%=rs.getString("name") %></h3>
	<h3>국,영,수 : 
	<% 
	out.print(rs.getString("kor")+",");
	out.print(rs.getString("eng")+",");
	out.print(rs.getString("math"));
	%>
	</h3>
<% } %>
<button onclick='history.back();'>뒤로</button>

</body>
</html>






