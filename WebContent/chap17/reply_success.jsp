<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
답변글을 등록했습니다.
<br/>
<a href="list.jsp?=${param.p }">목록보기</a>
<a href="read.jsp?articleId=${postedArticle.id }&p=${param.p}">게시글 읽기</a>
</body>
</html>