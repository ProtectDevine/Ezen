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
	int val = 45000;
	short val2 = (short) val;

%>
<%= val %> 값을 short 타입으로 변환한 결과 -> <%=val2 %>



</body>
</html>