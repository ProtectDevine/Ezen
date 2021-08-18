<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="ez.board.BoardDBBean" %>
<%@ page import="ez.board.BoardDataBean" %>
<%@ page import="ez.board.CommentDBBean" %>
<%@ page import="ez.board.CommentDataBean" %>
<%@ page import="java.util.List" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ include file="color.jsp" %>
<%

	
	
	int pageSize = 10;
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");

%>
<%

	System.out.println(request.getParameter("pageSize"));
	if (request.getParameter("pageSize") != null) {
		pageSize = Integer.parseInt(request.getParameter("pageSize"));
	}

	String pageNum = request.getParameter("pageNum");
	String search = request.getParameter("search");
	
	int searchn = 0;
	
	if(pageNum == null){
		pageNum = "1";
	}
	//pageNum�� �Ķ���Ͱ����� �Ѿ���� ������ ù���� �������� ����
	
	if(search == null){
		search = "";
	}else{
		searchn = Integer.parseInt(request.getParameter("searchn"));
	}

	int currentPage = Integer.parseInt(pageNum);	
	//System.out.println(currentPage);
	int startRow = (currentPage - 1) * pageSize + 1;
	int endRow = currentPage * pageSize;
	int count = 0;
	int number = 0;
	String GUBUN = "NOTICE";
	
	List articleList = null;
	BoardDBBean dbPro = BoardDBBean.getInstance();
	
	if(search.equals("")||search == null){
		count = dbPro.getArticleCount(GUBUN);
	}else{
		count = dbPro.getArticleCount(GUBUN, searchn, search);
	}
	
	CommentDBBean cdb = CommentDBBean.getInstance();
	
	if(count>=	0){
		if(search.equals("")||search == null){
			articleList = dbPro.getArticles(GUBUN, startRow, endRow);
		}else{
			articleList = dbPro.getArticles(GUBUN, startRow, endRow, searchn, search);
		}
		
	number = count-(currentPage - 1)* pageSize;
		//11-(2-1)*3=8	
	

%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org./TR/html14/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script type="text/javascript">

function changeEvent() {
	let size = document.getElementById("pageSize");
	console.log(size);
	location.href = 'list1.jsp?pageSize=' + size.value;
}

</script>
</head>
<body bgcolor="<%=bodyback_c%>">
<center>
<b>�۸�� (��ü �� : <%=count %>)</b>

<table width="700">
<tr>
<td align="left" bgcolor="<%=value_c %>">
<%
	if(session.getAttribute("memId")!=null){
%>
<%=session.getAttribute("memId") %>�� 
<input type=button value="�α׾ƿ�" onclick="document.location.href='/EzenWepStudy/logon/logout.jsp'">
<% } %>
</td>
<td align="right" bgcolor="<%=value_c %>">
<%
	if(session.getAttribute("memId")!=null){
%>
	<a href="writeForm.jsp">�۾���</a>
<%}else{ %>
    <a href="/EzenWepStudy/logon/loginForm.jsp">�α���</a>
<%} %>


</td>
</tr>
</table>

<%if(count==0){ %>
<table width="700" border="1" cellpadding="0" cellspacing="0">
	<tr>
		<td align = "center">
		�Խ��ǿ� ����� ���� �����ϴ�.
		</td>
	</tr>
</table>

<%}else{ %>
<form action="list1.jsp" method="get">
	<select name="pageSize" id="pageSize" onchange="changeEvent()">
		<option value="10">10��������</option>
		<option value="15">15��������</option>
		<option value="20">20��������</option>
	</select>
	<input type="submit" value="ȭ�麸��" />
</form>
		
		
<table width="700" border="1" cellpadding="0" cellspacing="0">
	<tr height="30" bgcolor="<%=value_c %>">
		<td align="center" width="50">
		��ȣ
		</td>
		<td align="center" width="250">
		����
		</td>
		<td align="center" width="100">
		�ۼ���
		</td>
		<td align="center" width="150">
		�ۼ���
		</td>
		<td align="center" width="50">
		��ȸ
		</td>
		<td align="center" width="100">
		IP
		</td>
	</tr>
<%
	for(int i=0; i<articleList.size(); i++){
		BoardDataBean article = (BoardDataBean) articleList.get(i);
		int com_count=cdb.getCommentCount(article.getNum());
%>
<tr height="30">
	<td align="center" width="50">
	<%=number-- %>
	</td>
	<td align="left">
	
<%
	int wid = 0;
	if(article.getRe_level()>0){ //�亯���̶��
		wid = 5*(article.getRe_level());
%>		
<image src="images/level.gif" width="<%=wid %>" hieght="16">
<image src="images/re.gif">

<%	}else{	//�亯���� �ƴϸ� ���������� ǥ��%>

	<image src="images/level.gif" width="<%=wid %>" height="16">	
		
<%	} //����Ʈ ���%>
<% if(com_count>0){ %>
	<a href="content1.jsp?num=<%=article.getNum()%>&pageNum=<%=currentPage%>">
		<%=article.getSubject()%>[<%=com_count%>]</a>
<%	}else{ %>
	<a href="content1.jsp?num=<%=article.getNum()%>&pageNum=<%=currentPage%>">
		<%=article.getSubject()%></a>
<% 	} %>

<%	if(article.getReadcount() >= 20){ %>
	<image src="images/hot.gif" border="0" height="16">
<%	} %>
	</td>
	<td align="center"><a href="mailto:<%=article.getEmail()%>"><%=article.getWriter() %></a></td>
	<td align="center"><%=sdf.format(article.getReg_date())%></td>
	<td align="center"><%=article.getReadcount() %></td>	
	<td algin="center"><%=article.getIp()%></td>

<%
	}

%>	
</table>
<%} %>
<p>
<%
	if(count>0){
		//��ü ������ �� ����
		int pageCount = count / pageSize + (count % pageSize== 0 ? 0 : 1);
		
		int startPage = (int)(currentPage/5)*5+1;
		int pageBlock = 5;
		int endPage = startPage + pageBlock-1;
		
		if(endPage > pageCount) endPage = pageCount;
		
		if(startPage >5){ //���� ������
			if(search.equals("")|| search ==null){
%>
				<a href="list1.jsp?pageNum=<%=startPage-5%>">[����]</a>				
<%			}else{%>				
				<a href="list1.jsp?pageNum=<%=startPage-5%>&search=<%=search%>&searchn=<%=searchn%>">[����]</a>
<% 			} %>				
		
<%
		}
		for(int i= startPage; i<=endPage; i++){
			//�ش� �������� �̵�
			if(search.equals("")||search == null){
%>
				<a href="list1.jsp?pageNum=<%=i%>">[<%=i %>]</a>

<% 			}else{ %>
				<a href="list1.jsp?=pageNum=<%=i%>&search=<%=search%>&searchn=<%=search%>">[<%=i%>]</a>
<%			} %>

<%			}
		
		if(endPage<pageCount){ //����������
			if(search.equals("")||search == null){
%>
				<a href="list1.jsp?pageNum=<%=startPage+5%>">[����]</a>			
<%			}else{ %>
				<a href="list1.jsp?pageNum=<%=startPage+5%>&search=<%=search%>&searchn=<%=searchn%>">[����]</a>

<%			} %>	

<%		}
	}	

	}
%>			
</p>


<% if(session.getAttribute("memId")!=null){ %>
	<form>
		<select name="searchn">
			<option value="0">�ۼ���</option>
			<option value="1">����</option>
			<option value="2">����</option>
		</select>
		<input type="text" name="search" size="15" maxlength="50" />
		<input type="submit" value="�˻�" />
	</form>
<%} %>
<br>

</center>




















</body>
</html>