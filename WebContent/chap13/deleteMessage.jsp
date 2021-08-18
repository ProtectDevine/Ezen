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
�޽����� �����Ͽ����ϴ�.
<% }else{ %>
�Է��� ��ȣ�� �ùٸ��� �ʽ��ϴ�. ��ȣ�� Ȯ�����ּ���.
<% } %>
<br/>
<a href="list.jsp">[��� ����]</a>

</body>
</html>