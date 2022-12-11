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
<a href="food.jsp">뒤로가기</a> <br>
<!-- dto가 전달되어 있는 상태 -->
<!-- model의 속성을 출력할떄는 EL을 쓴다 -->
<!-- expression(표현식, 출력) language(EL) -->
id >> ${dto.id} <br>
식당이름>> ${dto.name} <br> <!-- dto.getName() -->
주소>> ${dto.add} <br>
메인메뉴>> ${dto.menu} <br>
메인메뉴사진>> <img alt="" src="resources/img/${dto.img}"> 

 <br>
 
</body>
</html>