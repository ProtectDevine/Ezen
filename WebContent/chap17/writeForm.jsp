<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<form action="<c:url value='write.jsp' />" method = "post">
제목 : <input type="text" name="title" size="20" /> <br/>
작성자: <input type="text" name="writerName" /><br/>
글암호: <input type="password" name="password" /><br/>
글내용 : <br/>
<textarea name="content" cols="40" rows="5"></textarea>
<br/>
<input type="submit" value="전송"/>

</form>






</body>
</html>