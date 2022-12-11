<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/out.css">
<script type="text/javascript" src="resources/js/out.js"></script>
<script type="text/javascript">
</script>
</head>
<body>
북마크페이지입니다. <br>
<hr>
<h3>북마크 검색하기</h3>
<a href="one3.multi?id=1">1번 북마크 검색</a> <br>
<a href="one3.multi?id=2">2번 북마크 검색</a> <br>
<form action="one3.multi">
	id : <input name="id"> <br>
	<button class="btn btn-danger">북마크 검색</button>
</form>
<hr>
<h3>북마크전체검색</h3>
<a href="list.multi">전체 검색</a>


<h3>북마크삭제하기</h3>
<a href="delete3.multi?id=1">1번 북마크 삭제</a> <br>
<a href="delete3.multi?id=2">2번 북마크 삭제</a> <br>
<a href="delete3.multi?id=3">3번 북마크 삭제</a> <br>
<form action="insert3.multi">
name : <input name="name"> <br>
url : <input name="url"> <br>
img : <input name="img"> <br>
<button>북마크 전송</button> <br>
</form>

</body>
</html>