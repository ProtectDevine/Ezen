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
	String code = request.getParameter("code");
	String viewPageURI = null;
	
	if(code.equals("A")) {
		viewPageURI = "/viewModule/a.jsp";
	}else if(code.equals("B")) {
		viewPageURI = "/viewModule/b.jsp";
	}else if(code.equals("C")) {
		viewPageURI = "/viewModule/c.jsp";
	}

%>
<jsp:forward page="<%= viewPageURI %>" />


</body>
</html>