<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page isErrorPage = "true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

요청 처리 과정에서 예외가 발생하였습니다.<br>
빠른 시간 내에 문제를 해결하도록 하겠습니다.
<p>
에러타입 : <%= exception.getClass().getName() %><br>
에러메세지 :<b> <%= exception.getLocalizedMessage() %></b>

</body>
</html>