<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ page errorPage = "/imageboard/error/error_view.jsp" %>
<!DOCTYPE html>
<style>
A {color: blue; font-weight: bold; text-decoration: none}
A:hover { color:blue; font-weight: bold; text-decoration: underline}

</style>

<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<table width="100%" border="1" cellpadding="2" cellspacing="0">
	<tr>
		<td>
			<tiles:insertAttribute name="header" />
		</td>
	</tr>
	<tr>
		<td>
			<tiles:insertAttribute name="body" />
		</td>
	</tr>
	<tr>
		<td>
			<tiles:insertAttribute name="footer" />
		</td>
	</tr>


</table>






</body>
</html>