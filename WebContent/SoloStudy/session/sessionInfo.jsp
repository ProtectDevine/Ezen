<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page session = "true" %>
<%@ page import = "java.util.Date" %>
<%@ page import = "java.text.SimpleDateFormat" %>
<%
	Date time = new Date();
	SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>세션 정보</title>
</head>
<body>
세션ID : <%= session.getId() %>
<%
time.setTime(session.getLastAccessedTime());
%>
최근 접근 시간 : <%= formatter.format(time) %>



</body>
</html>