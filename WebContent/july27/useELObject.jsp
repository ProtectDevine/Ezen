<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% request.setAttribute("name", "�ֹ���"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

��û URI: ${pageContext.request.requestURI }<br>
<%--
	<%= pageContext.getRequest().getRequestURI()%>
 --%>

request�� name �Ӽ� :${requestScope.name }<br>
<%-- <%=request.getAttribute("name") --%>

code �Ķ����:${param.code }
<%-- <%=request.getParameter("code") --%>
</body>
</html>