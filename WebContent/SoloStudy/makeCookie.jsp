<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "java.net.URLEncoder" %>
<%
	Cookie cookie = new Cookie("name", URLEncoder.encode("�ֹ���", "euc-kr"));
	response.addCookie(cookie);

%>



<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%= cookie.getName() %> ��Ű�� �� = "<%= cookie.getValue() %> "


</body>
</html>