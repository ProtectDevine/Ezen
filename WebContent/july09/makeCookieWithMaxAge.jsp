<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	Cookie cookie = new Cookie ("oneh", "1time");
	cookie.setMaxAge(10);
	response.addCookie(cookie);
%>

 ��ȿ �ð� 1�ð�


</body>
</html>