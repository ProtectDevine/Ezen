<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="ez.board.service.ReadArticleService" %>
<%@ page import="ez.board.service.ArticleNotFoundException" %>
<%@ page import="ez.board.model.Article" %>
<%
	int articleId = Integer.parseInt(request.getParameter("articleId"));
	String viewPage = null;
	
	try{
		Article article = ReadArticleService.getInstance().readArticle(articleId);
		request.setAttribute("article", article);
		viewPage = "read_view.jsp";
		
		
		
	}catch(ArticleNotFoundException ex){
		viewPage = "article_not_found.jsp";
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