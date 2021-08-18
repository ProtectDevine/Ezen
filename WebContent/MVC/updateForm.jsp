<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="color.jspf" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�Խ���</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script language="JavaScript" src="script.js"></script>
</head>
<body bgcolor="${bodyback_c}">
<b>�� ����</b>
<br>
<form method="post" name="writeform" 
action="/EzenWepStudy/MVC/updatePro.do?pageNum=${pageNum}" onsubmit="return writeSave()">

<table width="400" border="1" cellspacing="0" cellpadding="0" align="center">
	<tr>
		<td width="70" bgcolor="${value_c}" align="center">�̸�</td>
		<td align="left" width="330">
			<input type="text" size="10" maxlength="10" name="writer"
				value="${article.writer}">
			<input type="hidden" name="num" value="${article.num}">
		</td>
	</tr>
	<tr>
		<td width="70" bgcolor="${value_c}" align="center">����</td>
		<td align="left" width="330">
			<input type="text" size="40" maxlength="50" name="subject" value="${article.subject}"></td>
	</tr>	
	<tr>
		<td width="70" bgcolor="${value_c}" align="center">Email</td>
		<td align="left" width="330">
			<input type="text" size="40" maxlength="30" name="email" value="${article.email}"></td>
	</tr>
	<tr>
		<td width="70" bgcolor="${value_c}" align="center">����</td>
		<td align="left" width="330">
			<textarea name="content" rows="13" cols="40">${article.content}</textarea></td>
	</tr>
	<tr>
		<td width="70" bgcolor="${value_c}" align="center">��й�ȣ</td>
		<td align="left" width="330">
			<input type="password" name="passwd" size="8" maxlength="12">
		</td>
	</tr>
	<tr>
		<td colspan=2 bgcolor="${value_c}" align="center">
			<input type="submit" value="�ۼ���">
			<input type="reset" value="�ٽ��ۼ�">
			<input type="button" value="��Ϻ���"
			onclick="document.location.href='/EzenWebStudy/MVC/list.do?pageNum=${pageNum}'">
		</td>
	</tr>	
		
</table>



</form>







</body>
</html>