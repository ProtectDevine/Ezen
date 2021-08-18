<%@ page contentType = "text/html; charset=euc-kr" %>
<%@ page import="member.MemberInfo" %>   

<jsp:useBean id="member" scope="request" class="member.MemberInfo" />

 
<%
	//MemberInfo member = new MemberInfo();
	member.setId("EZEN");
	member.setName("이젠");
	member.setPassword("1234");
	member.setAddress("서울 종로");
	member.setEmail("ezen@ezenac.co.kr");
	//request.setAttribute("member", member);
%>
<jsp:forward page="./useObject.jsp" />













