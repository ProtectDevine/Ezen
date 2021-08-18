<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<%
	request.setCharacterEncoding("euc-kr");

%>
<jsp:useBean id="memberInfo" class="member.MemberInfo" />
<jsp:setProperty name="memberInfo" property="*" />
<jsp:setProperty name="memberInfo" property="password" value="<%= memberInfo.getId() %>" />


<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<table width="400" bother="1" cellpadding="0" cellspacing="0">
<tr>
	<td>아이디</td>
	<td><jsp:getProperty name="memberInfo" property="id" /></td>
	<td>암호</td>
	<td><jsp:getProperty property="password" name="memberInfo"/></td>
</tr>
<tr>
	<td>이름</td>
	<td><jsp:getProperty property="name" name="memberInfo"/></td>
	<td>이메일</td>
	<td><jsp:getProperty property="email" name="memberInfo"/></td>
</tr>
 <tr>
 	<td>주소</td>
	<td colspan="3">
	<jsp:getProperty name="memberInfo" property="address" />
</tr>


</table>

</body>
</html>