<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	Ŭ���̾�Ʈ IP = <%=request.getRemoteAddr() %> <br>
	��û�������� = <%=request.getContentLength() %><Br>
	��û���� ���ڵ� = <%= request.getCharacterEncoding() %><Br>
	��û���� ����ƮŸ�� = <%= request.getContentType() %> <br>
	��û���� �������� = <%= request.getProtocol() %><Br>
	��û���� ���۹�� = <%= request.getMethod() %><Br>
	��û URI = <%= request.getRequestURI() %><Br>
	���ؽ�Ʈ ��� = <%= request.getContextPath() %><br>
	���� �̸� = <%= request.getServerName()%><br>
	������Ʈ = <%= request.getServerPort() %><Br>	


</body>
</html>