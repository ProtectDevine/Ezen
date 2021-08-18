<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<%
	String name = request.getParameter("name");
	String value = request.getParameter("value");
	
	if(name != null && value != null){
		application.setAttribute(name, value);
	

%> 
</head>
<body>

application의 기본 객체 속성 설정:
<%= name %> = <%= value %>
<%}else{ %>
application 기본 객체 속성 설정 안함
<%} %>


</body>
</html>