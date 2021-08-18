<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "java.util.Date" %>
<%@ page import = "java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
<%
	Date time = new Date();
	SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:MM:SS");

%>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

세션ID: <%= session.getId() %><br>
<%
	time.setTime(session.getCreationTime());
	
	
	%>
세션생성시간:<%=formatter.format(time) %><br>
<%
	time.setTime(session.getLastAccessedTime());

%>

최근 접근시간 : <%= formatter.format(time) %>


</body>
</html>