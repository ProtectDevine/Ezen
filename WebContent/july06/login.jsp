<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String id = request.getParameter("memberID");
	if("era13".equals(id)){
		response.sendRedirect("./now.jsp");
		//다른 폴더는 무조건 절대 경로 ex) /EzenWepStudy/july05/sub01/nowTime.jsp
	}
	else{

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>로그인 실패</title>
</head>
<body>

아이디가 era13이 아닙니다.
현재 출력한 아이디 = <%= id %>




</body>
</html>
<% } %>