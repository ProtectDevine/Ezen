<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<form action="<%=request.getContextPath() %>/july09/member/login.jsp" method="post">

아이디 	<input type="text" name="id" size="10">
암호 		<input type="password" name="password" size="10">
		<input type="submit" value="로그인">

</form>



</body>
</html>