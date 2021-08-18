<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% request.setAttribute("name", "최범균"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

요청 URI: ${pageContext.request.requestURI }<br>
<%--
	<%= pageContext.getRequest().getRequestURI()%>
 --%>

request의 name 속성 :${requestScope.name }<br>
<%-- <%=request.getAttribute("name") --%>

code 파라미터:${param.code }
<%-- <%=request.getParameter("code") --%>
</body>
</html>