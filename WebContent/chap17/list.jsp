<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "ez.board.model.ArticleListModel" %>
<%@ page import = "ez.board.service.ListArticleService"  %>

<%
	String pageNumberString = request.getParameter("p");
	int pageNumber = 1;
	if (pageNumberString != null && pageNumberString.length() >0){
		pageNumber = Integer.parseInt(pageNumberString);
	}

	ListArticleService listService = ListArticleService.getInstance();
	ArticleListModel articleListModel = listService.getArticleList(pageNumber);
	request.setAttribute("listModel", articleListModel);
	
	if(articleListModel.getTotalPageCount()>0){
		int beginPageNumber = 
				(articleListModel.getRequestPage() - 1) / 10 * 10 + 1;
		int endPageNumber = beginPageNumber + 9;
		if(endPageNumber > articleListModel.getTotalPageCount()){
			endPageNumber = articleListModel.getTotalPageCount();
		}
		request.setAttribute("beginPage", beginPageNumber);
		request.setAttribute("endPage", endPageNumber);
		
	}

%>

<jsp:forward page="list_view.jsp" />