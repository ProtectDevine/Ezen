<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="member" scope="request"
	class = "SoloStudy.member.MemberInfo" />
<%
	member.setId("madvirus");
	member.setName("최범균");
%>
<jsp:forward page="useObject.jsp" />
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

</body>
</html>