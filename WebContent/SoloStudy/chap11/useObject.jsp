<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="member" scope="request" class="SoloStudy.member.MemberInfo" />
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%= member.getId() %>(<%=member.getName() %>)회원님 
안녕하세요

</body>
</html>