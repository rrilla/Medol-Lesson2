<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/shopping.css">
<script type="text/javascript" src="js/product.js"></script>
</head>
<body>

<c:set var="msg" value="${param.msg}"/>
<c:if test="${not empty msg}">
<script type="text/javascript">
	alert("${msg}")
</script>
</c:if>
<script type="text/javascript">
</script>

<div id="wrap" align="center">
<h1>상품 등록-관리자 페이지</h1>
<form method="post" enctype="multipart/form-data" name="frm">
<table>
<tr>
	<th>상품명</th><td><input type="text" name="name" size=80></td>
</tr>
<tr>
	<th>가격</th><td><input type="text" name="price" size=80></td>
</tr>
<tr>
	<th>사진</th><td><input type="file" name="pictureurl"><br>
		(주의 사항 : 이미지를 선택하세요)
	</td>
</tr>
<tr>
	<th>설명</th><td>
		<textarea rows="10" cols="50" name="description"></textarea>
		</td>
</tr>
<tr>
	<td colspan=2 align="center">
	<input type="submit" value="등록" onClick="check()">
	<input type="reset" value="다시작성">
	<input type="button" value="목록보기"onClick="location.href='list.do'">
	</td>
	
</tr>
</table>
</form>
</div>
</body>
</html>