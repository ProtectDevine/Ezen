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
	response.addCookie(CookieBox.createCookie("name", "�ֹ���"));
	response.addCookie(CookieBox.createCookie("id", "madvirus", "/july09", -1));
%>

cookiebox�� �̿��Ͽ� ��Ű ����

</body>
</html>