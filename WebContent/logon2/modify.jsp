<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/MVC/color.jspf"%>
<html>
<head>
<meta charset="EUC-KR">
<title>정보수정</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body>
<body bgcolor="${bodyback_c}">
 <table width=500 cellpadding="0" cellspacing="0"  align="center" >
	<tr>
		<td>
    	 	<form name="myform" action="/EzenWepStudy/logon2/modifyForm.do" method="post">
     			<input type="hidden" name="id" value="${sessionScope.memId}">
     			<input type="submit" value="회원정보 수정">
    	 	</form>
		</td>
		<td>
			<form name="myform" action="/EzenWepStudy/logon2/deleteForm.do" method="post">
				<INPUT type="hidden" name="id" value="${sessionScope.memId}">
        		<INPUT type="submit" value="회원 탈퇴">
      		</form>
	 	</td>
	 	<td>
			<form name="myform" action="/EzenWepStudy/logon2/main.do" method="post">
				<INPUT type="submit" value="메인으로">
			</form>
		</td>
	</tr>
</table>
</body>
</html>