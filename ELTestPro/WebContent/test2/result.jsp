<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	아디 : ${list[0].id }<br>
	비번 : ${list[0].pw }<br>
	이름 : ${list[0].name }<br>	<!-- 빈클래스의 멤벼 변수에 직접접근x -->
	이멜 : ${list[0].email }<br><br>	<!-- getter에 접근하는 것임. id=getId() -->
	
	아디 : ${list[1].id }<br>
	비번 : ${list[1].pw }<br>
	이름 : ${list[1].name }<br>	
	이멜 : ${list[1].email }<br><br>
	
	아디 : ${list[2].id }<br>
	비번 : ${list[2].pw }<br>
	이름 : ${list[2].name }<br>	
	이멜 : ${list[2].email }<br><br>
</body>
</html>