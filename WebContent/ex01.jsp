
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>ex01.jsp<br>
<%@page import="java.sql.*"%>
	<%
		Class.forName("oracle.jdbc.driver.OracleDriver");
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String id="java", pwd="1234";
		Connection con = DriverManager.getConnection(url,id,pwd);
		String sql = "select * from newst";
		PreparedStatement ps = con.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		out.print("<table border='1'><tr><th>id</th><th>name</th><th>age</th></tr>");
		while(rs.next()){%>
			<tr>
			<td><%=rs.getString("id") %></td>
			<td>
	<a href="userInfo.jsp?id=<%=rs.getString("id") %>"><%=rs.getString("name") %></a>
			</td>
			<td><%=rs.getInt("age") %></td>
			</tr>
		<%}%>
		</table>
</body>
</html>

































