<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<form action="upload.jsp" method="post" enctype="multipart/form-data">
	파일: <input type="file" name="file" /><br/>
	설명: <input type="text" name="description" /><br/>
	<input type="submit" value="업로드" />
</form>




</body>
</html>