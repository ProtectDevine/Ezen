<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.Enumeration" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<%
	Enumeration attrEnum = application.getAttributeNames();
	while(attrEnum.hasMoreElements()){
		String name = (String)attrEnum.nextElement();
		Object value = application.getAttribute(name);
	
	
	
%>

application �Ӽ� :<b><%= name %></b> = <%= value %> <br>
<%} %>


</body>
</html>