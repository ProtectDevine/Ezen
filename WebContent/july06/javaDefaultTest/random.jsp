<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "java.util.Random" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	Random random = new Random();
	for(int i =0;i<=20; i++){
		int number = random.nextInt(10)+1;
		int number2 = (int) (Math.random()*10)+1;
%>
	<%= i %>번째 = <%=number %> 
	<%= i %>번째 = <%=number2 %><br>
<%		if(number == 7){
			if(number2 == 7) break;
	
}		
		
		
		
	} %>










</body>
</html>