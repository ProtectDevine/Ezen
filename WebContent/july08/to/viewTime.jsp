<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "java.util.Calendar" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<% 
	Calendar cal = (Calendar) request.getAttribute("time");
	//��û ���� ���� �޴´�(time). ���� ���� calendar�̱⿡
	//cal�̶�� �ν��Ͻ� ������ ����
%>

���� �ð���	 	<%= ca l.get(Calendar.HOUR) %>��
			<%= cal.get(Calendar.MINUTE) %>��
			<%= cal.get(Calendar.SECOND) %>�� �Դϴ�.


</body>
</html>