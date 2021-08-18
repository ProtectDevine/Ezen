<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "java.net.URLDecoder" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
쿠키목록<br>

<%
	Cookie[] cookies = request.getCookies();
	if(cookies != null && cookies.length > 0){
		for (int i = 0; i<cookies.length; i++){
			out.println(cookies[i].getName() + "=");
			out.println(URLDecoder.decode(cookies[i].getValue(), "euc-kr"));
		}
	}else{
		out.println("쿠키가 존재하지 않습니다.");
	}



%>

</body>
</html>