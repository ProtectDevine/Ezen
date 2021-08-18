<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page errorPage = "/imageboard/error/error_view.jsp" %>

<%@ page import = "java.sql.Timestamp" %>    
<%@ page import = "java.io.File" %>    
<%@ page import = "org.apache.commons.fileupload.FileItem" %>    
<%@ page import = "madvirus.util.ImageUtil" %>    
<%@ page import = "madvirus.fileupload.FileUploadRequestWrapper" %>    
<%@ page import = "madvirus.gallery.Theme" %>    
<%@ page import = "madvirus.gallery.ThemeManager" %>    
<%@ page import = "madvirus.gallery.ThemeManagerException" %>    
    
<%
	FileUploadRequestWrapper requestWrap = new FileUploadRequestWrapper(
			request, -1, -1,
			"C:\\StudyJava\\Study\\EzenWepStudy\\WebContent\\temp");
	HttpServletRequest tempRequest = request;
	request = requestWrap;
%> 
 
<jsp:useBean id="theme" class="madvirus.gallery.Theme">
	<jsp:setProperty name="theme" property="*" />
</jsp:useBean>

<%
	FileItem imageFileItem = requestWrap.getFileItem("imageFile");
	String image = "";
	if(imageFileItem.getSize() > 0){
		image = Long.toString(System.currentTimeMillis());
		
		//이미지를 경로에 저장
		File imageFile = new File(
				"C:\\StudyJava\\Study\\EzenWepStudy\\WebContent\\image",
				image);
		out.print("저장완료");
		
		
		//같은 이름 파일이름 처리
		if(imageFile.exists()){
			for(int i=0; true; i++){
				imageFile = new File(
						"C:\\StudyJava\\Study\\EzenWepStudy\\WebContent\\image",
						image+"_"+i);
				if(!imageFile.exists()){
                    image = image + "_" + i;
					break;
				}
				
				
			}
		}
		imageFileItem.write(imageFile);
		
		
		//썸네일 이미지 생성
		File destFile = new File(
				"C:\\StudyJava\\Study\\EzenWepStudy\\WebContent\\image",
				image+".small.jpg");
		ImageUtil.resize(imageFile, destFile, 50, ImageUtil.RATIO);
		
		
	}
	
	theme.setRegister(new Timestamp(System.currentTimeMillis()));
	theme.setImage(image);
	
	ThemeManager manager = ThemeManager.getInstance();
	manager.insert(theme);
%>	

<script>
	alert("새로운 이미지를 등록했습니다.");
	location.href = "list.jsp";

</script>

 
 
 
 
 
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

</body>
</html>