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

로그인에 성공했습니다

<%
	}else{
		
%>
<script>
alert("로그인에 실패했습니다.");
history.go(-1);

</script>

<%} %>


</body>
</html>