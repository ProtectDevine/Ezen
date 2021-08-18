<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>테마 갤러리</title>
</head>
<style>
A { color: blue; font-weight: bold; text-decoratiion: none}
A:hover { color: blue; font-weight: bold, text-decoration: underlin}
</style>

<body>

<table width="100%" border="1" cellpadding="2" cellspacing="0">
	<tr>
		<td>
		<jsp:include page="../module/top.jsp" flush="false" />
		</td>
	</tr>
	<tr>
		<td>
		<!-- 내용부분 시작 -->
		<jsp:include page="${param.CONTENTPAGE}" flush="false" />
		<!-- 내용부분 끝 -->
		</td>
	</tr>
	<tr>
		<td>
		<jsp:include page="../module/bottom.jsp" flush="false" />
		</td>
	</tr>
	
</table>



</body>
</html>