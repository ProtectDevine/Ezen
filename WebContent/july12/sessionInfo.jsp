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

技记ID: <%= session.getId() %><br>
<%
	time.setTime(session.getCreationTime());
	
	
	%>
技记积己矫埃:<%=formatter.format(time) %><br>
<%
	time.setTime(session.getLastAccessedTime());

%>

弥辟 立辟矫埃 : <%= formatter.format(time) %>


</body>
</html>