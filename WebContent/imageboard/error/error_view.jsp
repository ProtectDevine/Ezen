<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "javax.servlet.ServletException" %>
<%@ page isErrorPage = "true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
에러가 발생했습니다<br><br>
에러메세지 :<%=exception.getMessage() %>
<% exception.printStackTrace(); %>

<%
	Throwable rootCause = null;
	if (exception instanceof ServletException){
		rootCause = ((ServletException)exception).getRootCause();
	}else{
		rootCause = exception.getCause();
	}
	if(rootCause != null){
		rootCause.printStackTrace();
		
		do{
%>
예외추적 : <%=rootCause.getMessage() %><br>
<% 			
			rootCause = rootCause.getCause();
			
		}while(rootCause != null);
		
	}


%>



</body>
</html>