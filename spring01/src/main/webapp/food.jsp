<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="resources/js/out.js"></script>
<script type="text/javascript">
</script>

</head>
<body>
맛집<br>
<hr>
<h3>맛집등록</h3>
<form action="food_insert">
이름 : <input name="name"> <br>
주소 : <input name="add"> <br>
메인메뉴 : <input name="menu"> <br>
메인메뉴사진 : <input name="img"> <br>
<input type="submit" value="맛집글쓰기완료"> <br>
<hr>
</form>
<h3>맛집삭제</h3>
<form action="food_delete">
삭제할 이름 : <input name="name"> <br>
<input type="submit" value="맛집삭제">
</form>
<hr>
<h3>맛집전체검색</h3>
<a href="food_list">전체검색</a> <br>
<hr>
<h3>맛집하나검색</h3>
<form action="food_one">
id : <input name="name"> <br>
<button>맛집 검색</button>
</form>
<hr>
<h3>맛집갱신</h3>
<form action="food_update">
이름 : <input name="name"> <br>
주소 : <input name="add"> <br>
메인메뉴 : <input name="menu"> <br>
메인메뉴사진 : <input name="img"> <br>
<input type="submit" value="맛집갱신"> <br>
</form>
</body>
</html>