<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "java.io.*" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<%
	FileReader fr = null;
	char[] buff = new char[512];
	int len = -1;
	
	try{
		fr = new FileReader(
				"C:\\StudyJava\\Study\\EzenWepStudy\\WebContent\\message\\notice\\notice");
		while ( (len = fr.read(buff)) != -1 ){
			out.print(new String(buff,0,len)); //buff�� �����Ѱ� 0 ���� ��� ���
		}
			
			
			
			
			
					
	}catch(IOException e){
		out.println("���� �߻� : "+e.getMessage());
	}finally{
		if (fr != null) try{fr.close();} catch(IOException ex){}
	}
	
	
	
	%>



</body>
</html>