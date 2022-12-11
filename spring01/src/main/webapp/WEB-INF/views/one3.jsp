<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/out.css">
</head>
<body>
<!-- dto가 전달되어 있는 상태 -->
<!-- model의 속성을 출력할떄는 EL을 쓴다 -->
<!-- expression(표현식, 출력) language(EL) -->
검색한 id >> ${dto.id} <br>
검색한 name >> ${dto.name} <br>
검색한 url >> ${dto.url} <br>
검색한 img >> <img alt="" src="resources/img/${dto.img}"> 

 <br>
 
</body>
</html>