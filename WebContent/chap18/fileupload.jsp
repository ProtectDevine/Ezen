<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.Iterator" %>
<%@ page import="java.util.List" %>
<%@ page import="org.apache.commons.fileupload.FileItem" %>
<%@ page import="org.apache.commons.fileupload.disk.DiskFileItemFactory" %>
<%@ page import="org.apache.commons.fileupload.servlet.ServletFileUpload" %>




<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>업로드 정보</title>
</head>
<body>
<%
	//1. multipart/form-data확인
	boolean isMultipart = ServletFileUpload.isMultipartContent(request);
	if(isMultipart){
		//2. 메모리나 파일로 업로드 파일 보관하는 fileItem의 factory설정
		DiskFileItemFactory factory = new DiskFileItemFactory();
		
		//3. 업로드 요청을 처리하는 ServletFileUpload 생성
		ServletFileUpload upload = new ServletFileUpload(factory);
		
		//4. 업로드 요청 파싱해서 FileItem목록 구함
		List<FileItem> items = upload.parseRequest(request);
		
		Iterator<FileItem> iter = items.iterator();
		while(iter.hasNext()){
			FileItem item = iter.next();
			//5. FileItem이 폼 입력 항목인지 여부에 따라 알맞은 처리
			if(item.isFormField()){
				String name = item.getFieldName();
				String value = item.getString("euc-kr");

%>
요청 파라미터 : <%= name %>=<%=value %><br/>
<% 

			
			}else{
				String name = item.getFieldName();
				String fileName = item.getName();
				String contentType = item.getContentType();
				boolean isInMemory = item.isInMemory();
				long sizeInBytes = item.getSize();
%>
	파일 : <%= name %>,<%= fileName %><%= sizeInBytes %>
	<%= isInMemory ? "메모리저장" : "임시파일저장" %>
	<br/>

<% 				
			}
		}
		
	}else{
		// multipart/form 아님
	%>
multipart/form요청이 아님
<%
	}
%>







</body>
</html>