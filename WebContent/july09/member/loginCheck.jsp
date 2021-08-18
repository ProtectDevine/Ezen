<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "util.CookieBox" %>
<%
	CookieBox cookieBox = new CookieBox(request);
	boolean login = cookieBox.exists("LOGIN") &&
			cookieBox.getValue("LOGIN").equals("SUCCESS");
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>로그인 여부 검사</title>
</head>
<body>
<%
	if(login){
		out.println(cookieBox.getValue("ID")+"로 로그인한 상태");
	}
	else{
		out.println("로그인하지 않은 상태");
	}
%>


</body>
</html>