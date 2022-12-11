<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- @지시자, @taglib는 c를 앞에 붙여서 사용하면, 
	jsp/servlet엔진이 자바문법으로 바꾸어줘!  -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- model의 속성으로 지정된 list를 전달받은 상태! -->
<a href="food.jsp">뒤로가기</a> <br>
<c:forEach var="dto" items="${list}">
id >> ${dto.id} <br>
식당이름>> ${dto.name} <br> <!-- dto.getName() -->
주소>> ${dto.add} <br>
메인메뉴>> ${dto.menu} <br>
메인메뉴사진>> <img alt="" src="resources/img/${dto.img}"> 
<hr color="lime">

</c:forEach>







</body>
</html>
