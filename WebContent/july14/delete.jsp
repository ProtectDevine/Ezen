<%@ page contentType="text/html; charset=euc-kr" %>
<%@ page import ="java.sql.DriverManager" %> 
<%@ page import ="java.sql.Connection" %>
<%@ page import ="java.sql.PreparedStatement" %>
<%@ page import ="java.sql.SQLException" %>

<html>
<head><title>회원 정보 삭제</title></head>
<body>
회원정보가 삭제되었습니다.
<%
	request.setCharacterEncoding("euc-kr");
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection conn = null;
	PreparedStatement pstmt = null;
	String memberID= request.getParameter("memberID");
	
	try {
		String jdbcDriver="jdbc:oracle:thin:@localhost:1522:XE";
		String dbUser="ez2";
		String dbPass="oracle";
		conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
		pstmt = conn.prepareStatement(
				"delete from MEMBER where memberID=?");
		pstmt.setString(1, memberID);
		pstmt.executeUpdate();
		
	}finally{
		if(pstmt != null) try { pstmt.close();} catch(SQLException ex) {}
		if(conn != null) try{ conn.close();} catch(SQLException ex) {}
	}
%>
</body>
</html>