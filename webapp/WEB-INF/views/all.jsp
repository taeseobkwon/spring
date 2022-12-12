<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="pink">
검색결과
<hr>
<c:forEach var="vo" items="${list}">
검색한 id: ${vo.id} <br>
검색한 pw: ${vo.pw} <br> 
검색한 name: ${vo.name} <br>
검색한 tel: ${vo.tel} <br>
<hr color="red">
</c:forEach>
</body>
</html>