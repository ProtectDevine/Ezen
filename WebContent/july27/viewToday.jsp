<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page session ="false" %>  
<%@ taglib prefix="elfunc" uri="/WEB-INF/el-functions.tld" %>  
<%
	java.util.Date today = new Date();
	request.setAttribute("today", today);

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>


������ <b>${elfunc:dateFormat(today) }</b> �Դϴ�.

</body>
</html>