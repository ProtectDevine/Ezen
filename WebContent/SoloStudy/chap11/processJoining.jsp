<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	request.setCharacterEncoding("euc-kr");
%>
<jsp:useBean id="memberInfo" class = "SoloStudy.member.MemberInfo" />
	<jsp:setProperty name="memberInfo" property="*" />
	<jsp:setProperty name="memberInfo" property="password" value="<%= memberInfo.getId() %>" />


<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<table width="400" border="1" cellpadding="0" cellspacing="0">
	<tr>
		<td>���̵�</td>
		<td><jsp:getProperty name="memberInfo" property="id" /></td>
		<td>��ȣ</td>
		<td><jsp:getProperty name="memberInfo" property="password" /></td>
	</tr>
	<tr>
		<td>�̸�</td>
		<td><jsp:getProperty name="memberInfo" property="name" /></td>
		<td>�̸���</td>
		<td><jsp:getProperty name="memberInfo" property="email" /></td>
	</tr>
	<tr>
		<td>�ּ�</td>
		<td colspan="3">
		<jsp:getProperty name="memberInfo" property="address" />
		</td>
	</tr>
</table>



</body>
</html>