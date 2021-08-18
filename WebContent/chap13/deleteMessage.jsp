<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page errorPage="errorView.jsp" %>
<%@ page import="service.DeleteMessageService" %>
<%@ page import="service.InvalidMessagePassowrdException" %>

<%
	int messageId = Integer.parseInt(request.getParameter("messageId"));
	String password = request.getParameter("password");
	boolean invalidPassowrd = false;
	try{
		DeleteMessageService deleteService = DeleteMessageService.getInstance();
		deleteService.deleteMessage(messageId, password);
		
	}catch(InvalidMessagePassowrdException ex){
		invalidPassowrd = true;
	}


%>


<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<% if(!invalidPassowrd) { %>
메시지를 삭제하였습니다.
<% }else{ %>
입력한 암호가 올바르지 않습니다. 암호를 확인해주세요.
<% } %>
<br/>
<a href="list.jsp">[목록 보기]</a>

</body>
</html>