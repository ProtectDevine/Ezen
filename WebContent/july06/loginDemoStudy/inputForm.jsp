<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=EUC-KR">
<title>회원가입</title>
<link href="style.css" rel="stylesheet" type="text/css"/>

<script type="text/javascript">
	var userinput = eval("document.userinput");
	if(!userinput.id.value) {
		alert("ID를 입력하세요!")
		return false;
	}
	if(!userinput.passwd.value){
		alert("비밀번호를 입력하세요!")
		return false;
	}
	if(userinput.passwd.value != userinput.passwd2.value){
		alert("비밀번호가 같습니다.")
		return false;
	}
	if(!userinput.name.value) {
		alert("이름을 입력하세요!");
		return false;
	}
	if(!userinput.jumin1.value || !userinput.jumin2.value) {
		alert("주민등록번호를 입력하세요!");
		return false;
	}
}




</script>

</head>
<body>
<div id="wrap">
	<Form action="inputPro.jsp" name="userinput" onsubmit="return checkIt()" method="post">
	
	
	
	</Form>
	

</div>




</body>
</html>