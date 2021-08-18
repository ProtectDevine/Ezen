<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <%@ include file="color.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link href="style.css" rel="stylesheet" type="text/css">

	<script language="javascript">
	
	function begin(){
		document.mtform.id.focus();
	}
	function checkIt(){
		if(!document.mtform.id.value){
			alert("아이디를 입력하지 않으셨습니다.");
			document.myform.id.focus();
			return false;
		}
		if(!document.mtform.passwd.value){
			alert("비밀번호를 입력하지 않으셨습니다.");
			document.mtform.passwd.focus();
			return false;
		}
	}
	
	</script>
</head>
<body onload="begin()" bgcolor="<%=bodyback_c%>">
<form name="myform" action="loginPro.jsp" method="post" obnSubmit="return checkIt()">
<TABLE cellspacing=1 width="260" border=1 align = "center">
	
	<TR height="30">
		<TD colspan="2" align="middle" bgcolor="<%=title_c %>"><strong>회원로그인</strong>
		
	<TR height="30">
		<TD width="100" bgcolor="<%=title_c %>" align=center>아이디</TD>
		<TD width="150" bgcolor="<%=value_c %>" align=center>
			<INPUT type="text" name="id" size="15" maxlength="12"></TD></TR>
		<TR hieght="30">
			<TD width="110" bgcolor="<%=title_c %>" align=center>비밀번호</TD>
			<TD width="150" bgcolor="<%=value_c %>" align=center>
				<input type=password name="passwd" size="15" maxlength="12"></TD></TR>
		<TR hieght="30">
			<TD colspan="2" align="middle" bgcolor="<%= title_c %>" >
				<input type=submit value="로그인">
				<input type=reset value="다시입력">
				<input type="button" value="회원가입" onclick="javascript:window.location='inputForm.jsp'"></TD></TR>

</TABLE>
</form>


</body>
</html>