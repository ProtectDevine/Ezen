<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="ez.board.service.ReplyArticleService" %>
<%@ page import="ez.board.model.Article" %>
<% request.setCharacterEncoding("euc-kr"); %>
<jsp:useBean id="replyingRequest"
	class="ez.board.model.ReplyingRequest" />
<jsp:setProperty name="replyingRequest" property="*" />
<%
	String viewPage = null;
	try{
		Article postedArticle = ReplyArticleService.getInstance().reply(replyingRequest);
		
		request.setAttribute("postedArticle", postedArticle);
		viewPage = "reply_success.jsp";
		
	}catch(Exception ex){
		viewPage = "reply_error.jsp";
		request.setAttribute("replyException", ex);
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