<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.io.InputStream" %>
<%@ page import="java.io.IOException" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%
	InputStream is = null;
	
	out.print("[");
	out.print(request.getContentType());
	out.print("]");
	try{
		is = request.getInputStream();
		int data = -1;
		
		while((data=is.read()) != -1){
			out.println((char)data);
		}
		
		
	}finally{
		if(is != null) try{is.close(); } catch(IOException ex){}
	}

%>
