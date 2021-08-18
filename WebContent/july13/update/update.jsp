<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import ="java.sql.DriverManager" %>
<%@ page import ="java.sql.Connection" %>
<%@ page import ="java.sql.Statement" %>
<%@ page import ="java.sql.SQLException" %>

<!DOCTYPE html>
<html>
<head>
<%
	request.setCharacterEncoding("euc-kr");

	String memberID = request.getParameter("memberID");
	String name = request.getParameter("name");
	
	int updateCount = 0;
	
	Class.forName("oracle.jdbc.driver.OracleDriver");
	
	Connection conn = null;
	Statement stmt = null;
	
	try {
		String jdbcDriver = "jdbc:oracle:thin:@localhost:1521:XE";
		String dbUser = "ez2";
		String dbPass = "oracle";
		
		String query = "update member set name = '"+name+"' where memberid = '"+memberID+"'";
		
		
		conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
		stmt = conn.createStatement();
		updateCount = stmt.executeUpdate(query);
		
		
		
		
	}finally{
		if(stmt != null) try {stmt.close();}catch(SQLException ex) {};
		if (conn != null) try {conn.close();}catch(SQLException ex) {};
	}
	
	%>

<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<% if(updateCount >0 ) { %>
<%= memberID %>의 이름을 <%= name %>(으)로 변경
<% }else{ %>
<%= memberID %> 아이디가 존재하지 않음
<% } %>





</body>
</html>