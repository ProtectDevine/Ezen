<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "util.CookieBox" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	response.addCookie(CookieBox.createCookie("name", "최범균"));
	response.addCookie(CookieBox.createCookie("id", "madvirus", "/july09", -1));
%>

cookiebox를 이용하여 쿠키 생성

</body>
</html>