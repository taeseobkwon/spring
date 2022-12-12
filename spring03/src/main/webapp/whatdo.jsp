<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="resources/js/jquery-3.6.1.js"></script>
<script type="text/javascript">
$(function() {
	$('#b1').click(function() {
		$.ajax({
			url : 'fruit',
			success : function(x) { //x는 테이블 형태
				$('#result').html(x)
			}
		})
	})
})
$(function() {
	$('#b2').click(function() {
		$.ajax({
			url : 'travel',
			success : function(y) { //x는 테이블 형태
				$('#result').html(y)
			}
		})
	})
})
</script>

</head>
<body>
<button id="b1">과일 목록을 가지고 와보자</button> <br>
<button id="b2">여행 목록을 가지고 와보자</button> <br>
<div id="result"></div>
</body>
</html>