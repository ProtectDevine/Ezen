<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String id = request.getParameter("memberID");
	if("era13".equals(id)){
		response.sendRedirect("./now.jsp");
		//�ٸ� ������ ������ ���� ��� ex) /EzenWepStudy/july05/sub01/nowTime.jsp
	}
	else{

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�α��� ����</title>
</head>
<body>

���̵� era13�� �ƴմϴ�.
���� ����� ���̵� = <%= id %>




</body>
</html>
<% } %>