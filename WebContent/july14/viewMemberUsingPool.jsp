<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "java.sql.DriverManager" %>
<%@ page import = "java.sql.Connection" %>
<%@ page import = "java.sql.Statement" %>
<%@ page import = "java.sql.ResultSet" %>
<%@ page import = "java.sql.SQLException" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

MEMBER 테이블의 내용 커넥션풀 사용 (신경호)
<table width="100%" border="1">
<tr>
	<td>이름</td><td>아이디</td><td>이메일</td>
</tr>
<%
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	
	try {
		String jdbcDriver = "jdbc:apache:commons:dbcp:/pool";
		String query = "select*from member order by memberid";
		conn = DriverManager.getConnection(jdbcDriver);
		stmt = conn.createStatement();
		rs = stmt.executeQuery(query);
		
		while(rs.next()){
%>
<tr>
	<td><%= rs.getString("name") %></td>
	<td><%= rs.getString("memberid") %></td>	
	<td><%= rs.getString("email") %></td>	

			
<% 	}

	}finally {
		if (rs != null) try {rs.close(); } catch (SQLException ex) {}
		if (stmt != null) try {stmt.close(); } catch (SQLException ex) {}
		if (conn != null) try {conn.close(); } catch (SQLException ex) {}
	}


%>
	







</table>





</body>
</html>