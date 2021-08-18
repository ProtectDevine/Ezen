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
	HttpServletRequest httpRequest =
	(HttpServletRequest)pageContext.getRequest();
	
	
	
	%>
	
request 기본 객체와 pageContext.getRequest()의 동일 여부
<%= request == httpRequest %>	

<br>

pageContext.getOut() 메서드를 사용한 출력

<%pageContext.getOut().println("안녕!"); %>


</body>
</html>