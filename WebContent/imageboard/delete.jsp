<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page errorPage = "/imageboard/error/error_view.jsp" %>

<%@ page import = "madvirus.gallery.Theme" %>
<%@ page import = "madvirus.gallery.ThemeManager" %>
<%@ page import = "madvirus.gallery.ThemeManagerException" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>



<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�� ����</title>
</head>
<body>
<%
	String themeId = request.getParameter("id");
	ThemeManager manager = ThemeManager.getInstance();
	Theme oldTheme = manager.select(Integer.parseInt(themeId));
%>

<c:set var="oldTheme" value="<%= oldTheme %>" />
<c:choose>
	<c:when test="${empty oldTheme}">
	<script>
	alert("���� �������� �ʽ��ϴ�.");
	location.href="list.jsp";
	</script>
	</c:when>
	
	<c:when test="${oldTheme.password != param.password}">
	<script type="text/javascript">
	alert("��ȣ�� �ٸ��ϴ�");
	history.go(-1);
	</script>
	</c:when>
	
	<c:whene test="${oldTheme.password == param.password}">
	<%
		manager.delete(oldTheme.getId());
	%>
	<script>
	alert("���� �����Ͽ����ϴ�.");
	location.href="list.jsp";
	</script>
	</c:whene>
	</c:choose>
	


</body>
</html>