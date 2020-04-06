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
String sql = "select * from student";
PreparedStatement pstm = conn.prepareStatement(sql);
ResultSet rs = pstm.executeQuery(sql);
%>
<table border='1'>
<tr>
<th>학번</th><th>이름</th><th>국어</th><th>영어</th><th>수학</th>
</tr>
<%
while(rs.next()){
	out.print("<tr>");
	out.print("<td>"+rs.getString("id")+"</td>");
	%>
	<td><a href='user.jsp?name=<%=rs.getString("id")%>'>
	<%=rs.getString("name")%></a></td>
	<%
	out.print("<td>"+rs.getString("kor")+"</td>");
	out.print("<td>"+rs.getString("eng")+"</td>");
	out.print("<td>"+rs.getString("math")+"</td>");
	out.print("</tr>");
}
%>
</table>

</body>
</html>


