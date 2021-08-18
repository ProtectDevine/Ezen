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
<% CookieBox cookieBox = new CookieBox(request); 

%>

name 쿠키 = <%=cookieBox.getValue("name") %> <br>
<% if(cookieBox.exists("id")){
	out.println("id 쿠키 ="+cookieBox.getValue("id"));	


}	
	
	%>



</body>
</html>