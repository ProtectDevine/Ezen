<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	
	if(id.equals(password)){
		session.setAttribute("MEMBERID", id);
	


%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
�α��� ����
<%
	}else{
	%>
<scripit>
alert("�α��ο� �����Ͽ����ϴ�.");
history.go(-1);
</scripit>
<%
}
%>
</body>
</html>