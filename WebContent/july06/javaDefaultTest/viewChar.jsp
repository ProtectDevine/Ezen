<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<% char ch = '한'; %>

변수에 저장해 사용 <%= ch %><br>

표현식에서 직접 사용 : <%= '\ucd08' %><%= '\uae30' %><%= '\ud654' %>


</body>
</html>