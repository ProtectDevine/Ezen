<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=EUC-KR">
<title>ȸ������</title>
<link href="style.css" rel="stylesheet" type="text/css"/>

<script type="text/javascript">
	var userinput = eval("document.userinput");
	if(!userinput.id.value) {
		alert("ID�� �Է��ϼ���!")
		return false;
	}
	if(!userinput.passwd.value){
		alert("��й�ȣ�� �Է��ϼ���!")
		return false;
	}
	if(userinput.passwd.value != userinput.passwd2.value){
		alert("��й�ȣ�� �����ϴ�.")
		return false;
	}
	if(!userinput.name.value) {
		alert("�̸��� �Է��ϼ���!");
		return false;
	}
	if(!userinput.jumin1.value || !userinput.jumin2.value) {
		alert("�ֹε�Ϲ�ȣ�� �Է��ϼ���!");
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