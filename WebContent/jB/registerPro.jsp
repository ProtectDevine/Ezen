<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="color.jsp" %> 
<% request.setCharacterEncoding("euc-kr"); %> 
<jsp:useBean id="regBean" class="member.RegisterBean" />
<jsp:setProperty name="regBean" property="*"></jsp:setProperty> 
<!-- �� setProperty�� �޾ƿ� ���� ���� id, passwd, repasswd, name, email, tel-->
  
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link href="style.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="script.js"></script>
</head>
<body>
<body bgcolor="<%= bodyback_c %>">
<table border="1" cellpadding="5" cellspacing="0" width="800">
	<colgroup>
			<col width="20%" />
			<col width="*" />
		</colgroup>
	<tr>
		<td colspan="3"><strong>ȸ������ Ȯ��</strong></td>
	</tr>
	<tr>
		<th bgcolor="<%= title_c %>">���̵�</th>
		<td bgcolor="<%= value_c %>"><jsp:getProperty name="regBean" property="id"></jsp:getProperty></td>
	</tr>
	<tr>
		<th bgcolor="<%= title_c %>">��й�ȣ</th>
		<td bgcolor="<%= value_c %>"><jsp:getProperty name="regBean" property="passwd"></jsp:getProperty></td>
	</tr>
	<tr>
		<th bgcolor="<%= title_c %>">��й�ȣ</th>
		<td bgcolor="<%= value_c %>"><jsp:getProperty name="regBean" property="repasswd"></jsp:getProperty></td>
	</tr>
	<tr>
		<th bgcolor="<%= title_c %>">�̸�</th>
		<td bgcolor="<%= value_c %>"><jsp:getProperty name="regBean" property="name"></jsp:getProperty></td>
	</tr>
	<tr>
		<th bgcolor="<%= title_c %>">�̸���</th>
		<td bgcolor="<%= value_c %>"><jsp:getProperty name="regBean" property="email"></jsp:getProperty></td>
	</tr>
	<tr>
		<th bgcolor="<%= title_c %>">��ȭ��ȣ</th>
		<td bgcolor="<%= value_c %>"><jsp:getProperty name="regBean" property="tel"></jsp:getProperty></td>
	</tr>
</table>
		
		



</body>
</html>