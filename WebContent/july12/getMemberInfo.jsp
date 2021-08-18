<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String memberID = (String)session.getAttribute("MEMBERID");
	String name = (String)session.getAttribute("MEMBERPASSWORD");


%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<%
	out.println("세션에서 가져온 정보는"+memberID+"/n"+name+"입니다.");


%>



</body>
</html>