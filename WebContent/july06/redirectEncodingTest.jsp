<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.net.URLEncoder" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<%
	String value = "�ڹ�";
	String encodedValue = URLEncoder.encode(value, "euc-kr");
	response.sendRedirect("index.jsp?name="+encodedValue);


%>

</body>
</html>