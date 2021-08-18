<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>multipart폼</title>
</head>
<body>
<form action="multipart_data.jsp" method = "post" enctype="multipart/form-data">
	text 1: <input type="text" name="text1" /><br/>
	file 1: <input type="file" name="file1"/><br/>
	file 2: <input type="file" name="file2"/><br/>
	<input type="submit" value="잔송" />
	



</form>



</body>
</html>