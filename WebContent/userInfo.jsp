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
	<%=request.getParameter("id") %>
	<%
		Class.forName("oracle.jdbc.driver.OracleDriver");
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String id="java", pwd="1234";
		Connection con = DriverManager.getConnection(url,id,pwd);
		String sql = "select * from newst where id='"+
									request.getParameter("id")+"'";
		PreparedStatement ps = con.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		if(rs.next()){%>
			<%=rs.getString("id") %><br>
			<%=rs.getString("name") %><br>
			<%=rs.getInt("age") %><br>
		<%}	%>
</body>
</html>















