<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="util.CookieBox" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	
	if(id.equals(password)){
		response.addCookie(CookieBox.createCookie("LOGIN", "SUCCESS", "/", -1));
		response.addCookie(CookieBox.createCookie("ID", id, "/", -1));
		out.println("�α��ο� �����߽��ϴ�.");		
	}else{
	%>
<script>
	alert("�α��ο� �����Ͽ����ϴ�.");
	history.go(-1);

</script>	
		

<%	} %>






</body>
</html>