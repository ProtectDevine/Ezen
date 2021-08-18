<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	클라이언트 IP = <%=request.getRemoteAddr() %> <br>
	요청정보길이 = <%=request.getContentLength() %><Br>
	요청정보 인코딩 = <%= request.getCharacterEncoding() %><Br>
	요청정보 컨텐트타입 = <%= request.getContentType() %> <br>
	요청저보 프로토콜 = <%= request.getProtocol() %><Br>
	요청정보 전송방식 = <%= request.getMethod() %><Br>
	요청 URI = <%= request.getRequestURI() %><Br>
	컨텍스트 경로 = <%= request.getContextPath() %><br>
	서버 이름 = <%= request.getServerName()%><br>
	서버포트 = <%= request.getServerPort() %><Br>	


</body>
</html>