<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	request.setCharacterEncoding("euc-kr");
%>
<jsp:forward page="/imageboard/template/template.jsp">
	<jsp:param name="CONTENTPAGE" value="/imageboard/list_view.jsp" />
</jsp:forward>

