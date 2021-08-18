<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<%!
	public int multiply(int a, int b){
	int c = a*b;
	return c;
}

%>

<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

10*25 = <%= multiply(10, 25) %>



</body>
</html>