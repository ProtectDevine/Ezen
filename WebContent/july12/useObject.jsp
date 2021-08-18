<%@ page contentType = "text/html; charset=euc-kr" %>
<%@ page import="member.MemberInfo" %>   

<jsp:useBean id="member" scope="request" class="member.MemberInfo" />

<html>
<head><title>인사말</title></head>
<body>
<%
	//MemberInfo member = 
	//(MemberInfo)request.getAttribute("member");
%>
<%= member.getName() %> (<%= member.getId() %>) 회원님
안녕하세요.<br>
<%= member.getPassword() %><br>
<%= member.getEmail() %><br>
<%= member.getAddress() %>
</body>
</html>
