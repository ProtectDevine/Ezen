<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="color.jsp" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link href="style.css" type="text/ss" rel="stylesheet" />
<script type="text/javascript" src="script.js"></script>
</head>
<body>
<body bgcolor="<%= bodyback_c %>">
<form action="registerPro.jsp" name="regForm" method="post" onsubmit="return inputCheck()" >

<table border="1" cellpadding="5" cellspacing="0" width="800">
		<colgroup>
			<col width="20%" />
			<col width="*" />
			<col width="30%" />
		</colgroup>
		<tr>
			<td colspan="3"><strong>ȸ������</strong></td>
		</tr>
		<tr>
			<th bgcolor="<%= title_c %>">���̵�</th>
			<td bgcolor="<%= value_c %>"><input type="text" name="id" size="20" /></td>
			<td bgcolor="<%= value_c %>">���̵� �Է��ϼ���.</td>
		</tr>
		<tr>	
		<th bgcolor="<%= title_c %>">��й�ȣ</th>
			<td bgcolor="<%= value_c %>"><input type="text" name="passwd" size="20" /></td>
			<td bgcolor="<%= value_c %>">��й�ȣ�� �Է��ϼ���.</td>
		</tr>
		<tr>
			<th bgcolor="<%= title_c %>">��й�ȣ</th>
			<td bgcolor="<%= value_c %>"><input type="text" name="repasswd" size="20" /></td>
			<td bgcolor="<%= value_c %>">��й�ȣ�� ���Է��ϼ���.</td>
		</tr>
		<tr>
			<th bgcolor="<%= title_c %>">�̸�</th>
			<td bgcolor="<%= value_c %>"><input type="text" name="name" size="20" /></td>
			<td bgcolor="<%= value_c %>">�̸��� �Է��ϼ���.</td>
		</tr>
		<tr>
			<th bgcolor="<%= title_c %>">�̸���</th>
			<td bgcolor="<%= value_c %>"><input type="text" name="email" size="30" /></td>
			<td bgcolor="<%= value_c %>">�̸��� �Է��ϼ���.</td>
		</tr>
		<tr>
			<th bgcolor="<%= title_c %>">��ȭ��ȣ</th>
			<td bgcolor="<%= value_c %>"><input type="text" name="tel" size="20" /></td>
			<td bgcolor="<%= value_c %>">��ȭ��ȣ �Է��ϼ���.</td>
		</tr>
		<tr>
			<td colspan="3" height="50" align="center"><input type="submit" value="ȸ������" /> <input type="reset" value="�ٽ��ۼ�" ></td>
		</tr>
	</table>		
		




</form>



</body>
</html>