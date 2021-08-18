<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%-- 버퍼가 없을 경우 <jsp:forward 액션 태그가 올바르게 실행되지 않을 수 있따 --%>

이 페이지는 from.jsp가 생성한 것입니다.

<jsp:forward page="/july08/to/to.jsp" />


</body>
</html>