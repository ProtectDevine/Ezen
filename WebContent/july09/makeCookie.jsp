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
	Cookie cookie = new Cookie("name", URLEncoder.encode("최범균","euc-kr"));
	response.addCookie(cookie);


%>

<%= cookie.getName() %> = 쿠키의 값 = "<%= cookie.getValue() %>"


</body>
</html>