<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "java.net.URLEncoder" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<%
	Cookie cookie1 = new Cookie("path1", URLEncoder.encode("���:/july08", "euc-kr"));
	cookie1.setPath("/july08");	
	response.addCookie(cookie1);
	
	Cookie cookie2 = new Cookie("path2", URLEncoder.encode("���:", "euc-kr"));
	response.addCookie(cookie2);
	
	Cookie cookie3 = new Cookie("path3", URLEncoder.encode("���:/","euc-kr"));
	cookie3.setPath("/");
	response.addCookie(cookie3);
	
	Cookie cookie4 = new Cookie("path4", URLEncoder.encode("���:/july02","euc-kr"));
	cookie4.setPath("/july02");
	response.addCookie(cookie4);

%>


������ ���� ��Ű�� �����߽��ϴ�.

<%= cookie1.getName() %> = <%= cookie1.getValue() %>
[<%= cookie1.getPath() %>]
<br>
<%= cookie2.getName() %> = <%= cookie2.getValue() %>
[<%= cookie2.getPath() %>]
<br>
<%= cookie3.getName() %> = <%= cookie3.getValue() %>
[<%= cookie3.getPath() %>]
<br>
<%= cookie4.getName() %> = <%= cookie4.getValue() %>
[<%= cookie4.getPath() %>]
<br>


</body>
</html>