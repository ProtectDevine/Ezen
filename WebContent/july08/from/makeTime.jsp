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
	Calendar cal = Calendar.getInstance();
	request.setAttribute("time", cal);
	//time ���� cal �ν��Ͻ� ������ ����


%>

<jsp:forward page="/july08/to/viewTime.jsp" />

</body>
</html>