<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import ="ez.Member" %>
<%@ page import = "java.util.HashMap" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	Member member = new Member();
	HashMap<String, String> pref = new HashMap<String, String>();

%>



<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<!--  set�±״� ������ �����Ҵ� ����Ѵ�. �׸��� �⺻��ü�� ������ �Ӽ��������� �Ѵ� -->
<c:set var="member" value="<%= member %>" scope = "request" />
<c:set target="${member }" property="name" value="�ֹ���" />

<%-- 
Member member = new Member();
member.setName("�ֹ���");
pageContext.setAttribute("member", member);



--%>
${member.name }

<c:set var="member" value="<%=member %>" scope="page"/>
<c:set target="${member }" property="name" value="�ֹ���" />

<c:set var="pref" value="<%= pref %>" />
<c:set var="favoriateColor" value="#{pref.color }" />

ȸ�� �̸�: ${member.name },
�����ϴ� ��: ${favoriateColor }

<br />
<c:set target="${pref }" property="color" value="red" />
���� ���� �����ϴ� ��: ${favoriateColor }





</body>
</html>