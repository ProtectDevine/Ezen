<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "ez.board.service.UpdateArticleService" %>
<%@ page import = "ez.board.model.Article" %>
<% request.setCharacterEncoding("euc-kr"); %>
<jsp:useBean id="updateRequest" class= "ez.board.model.UpdateRequest" />
<jsp:setProperty name="updateRequest" property="*"/>

<%
	String viewPage = null;
	try{
		Article article =
				UpdateArticleService.getInstance().update(updateRequest);
		request.setAttribute("updateArticle", article);
		viewPage = "update_success.jsp";
		
	}catch(Exception ex){
		request.setAttribute("updateException", ex);
		viewPage = "update_error.jsp";
	}
%>
<jsp:forward page="<%= viewPage %>" />


<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

</body>
</html>