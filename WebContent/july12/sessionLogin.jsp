<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<%
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	
	if(id.equals(password)) {
		session.setAttribute("MEMBERID", id);
		session.setAttribute("MEMBERPASSWORD", password);

%>


<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

�α��ο� �����߽��ϴ�

<%
	}else{
		
%>
<script>
alert("�α��ο� �����߽��ϴ�.");
history.go(-1);

</script>

<%} %>


</body>
</html>