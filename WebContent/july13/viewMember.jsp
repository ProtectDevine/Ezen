<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "java.sql.DriverManager" %>    
<%@ page import = "java.sql.Connection" %>    
<%@ page import = "java.sql.Statement" %>    
<%@ page import = "java.sql.ResultSet" %>    
<%@ page import = "java.sql.SQLException" %>    
    
<% String memberID = request.getParameter("memberID"); %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<%
	Class.forName("oracle.jdbc.driver.OracleDriver");

	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	
	try{
		String jdbcDriver = "jdbc:oracle:thin:@localhost:1521:XE";
		String dbUser = "ez2";
		String dbPass = "oracle";
		String query = "select*from member where memberid = '"+memberID+"'";
		
		conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
		stmt = conn.createStatement();
		
		rs = stmt.executeQuery(query);
		
		if(rs.next()){
%>			
<table border="1">
<tr>
	<td>아이디</td><td><%= memberID %></td>
</tr>
<tr>
	<td>암호</td><td><%= rs.getString("PASSWORD") %></td>
</tr>
<tr>
	<td>이메일</td><td><%= rs.getString("NAME") %></td>
</tr>

</table>
	
	
	
<%		}else{ %>

<%= memberID %> 에 해당하는 정보가 존재하지 않습니다.


<%
		
		
		
	}}catch (SQLException ex) {
%>		
		
에러발생 : <%= ex.getMessage() %>

<% } finally{
	if (rs != null) try {rs.close(); } catch(SQLException ex) {}	
	if (stmt != null) try {stmt.close(); } catch(SQLException ex) {}
	if (conn != null) try {conn.close(); } catch(SQLException ex) {}
}








%>






</body>
</html>