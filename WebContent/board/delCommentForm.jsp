<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="color.jsp" %>
<%
	String comment_num = request.getParameter("cmn");
	String content_num = request.getParameter("ctn");
	String p_num = request.getParameter("p_num");
	String url = "content1.jsp?num="+content_num+"&pageNum="+p_num;

%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script language="JavaScript">
	function deleteSave(){
		if(document.delForm.passwd.value==''){
			alert("비밀번호를 입력하시오");
			document.delForm.passwd.focus();
			return false;
		}
	}
</script>
</head>
<body bgcolor=<%=bodyback_c %>>
<center>
<form method=post name=delForm action="delCommentPro.jsp" onsubmit="return deleteSave()">
	<table border=1 align=center cellspacing=0 cellpadding=0 width=360>
		<tr height = 30>
			<td align = center bgcolor =<%=value_c %>>
				<b>비밀번호를 입력하시오</b>
			</td>
		</tr>
		<tr height=30>
			<td align=center>
			비밀번호 : <input type="password" name=passwd size=8 maxlength=12>
					<input type=hidden name=content_num value=<%=content_num %>>
					<input type=hidden name=comment_num value=<%=comment_num %>>
					<input type=hidden name=p_num value=<%=p_num %>>
			</td>
		</tr>
		<tr height=30>
			<td align=center bgcolor=<%=value_c %>>
				<input type="submit" value="코멘트 삭제">
				<input type="button" value="취소" onclick="document.location.href='<%=url%>'">
			</td>
		</tr>
	</table>
</form>
</center>


</body>
</html>