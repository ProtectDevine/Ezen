<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "java.net.URLEncoder" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<%
	Cookie cookie1 = new Cookie("id", "madvirius");
	cookie1.setDomain(".ssol");
	response.addCookie(cookie1);
	
	Cookie cookie2 = new Cookie("only", "onlycookie");
	response.addCookie(cookie2);

	Cookie cookie3 = new Cookie("invalid", "invalidcookie");
	cookie3.setDomain("javacan.tistory.com");
	response.addCookie(cookie3);
%>

쿠키 생성

다음과 같이 쿠키를 생성했습니다. <br>

<%= cookie1.getName() %> = <%= cookie1.getValue() %> <br>
[<%= cookie1.getDomain() %>]
<br>
<%= cookie2.getName()%> = <%= cookie2.getValue() %> <br>
[<%= cookie2.getDomain() %>]
<br>
<%= cookie3.getName() %> = <%= cookie3.getValue() %> <br>
[<%= cookie3.getDomain() %>]




</body>
</html>