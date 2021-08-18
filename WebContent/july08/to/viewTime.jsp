<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "java.util.Calendar" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<% 
	Calendar cal = (Calendar) request.getAttribute("time");
	//요청 받은 값을 받는다(time). 받을 값이 calendar이기에
	//cal이라는 인스턴스 변수를 만듦
%>

현재 시간은	 	<%= ca l.get(Calendar.HOUR) %>시
			<%= cal.get(Calendar.MINUTE) %>분
			<%= cal.get(Calendar.SECOND) %>초 입니다.


</body>
</html>