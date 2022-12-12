<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet" href="resources/css/out.css">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript">
	$(function() {
		$('#b3').click(function() {
			$.ajax({
				url : "jsonBook",
				dataType : "json",
				success : function(array) {
					//alert(array)
					//alert(array[0].id)
					$('#d2').empty()
					$('#d2').append("<table border='1' class='table table-striped table-hover'><tr><td>아이디</td><td>북마크이름</td><td>url</td><td>img</td></tr>")
					for(i = 0; i < 5; i++){
						$('#d2').append(
								"<tr  class='table table-striped table-hover''>" +
								"<td>" + array[i].id +
								"</td><td>" + array[i].name +
								"</td><td><a href=" + array[i].url + ">GO URL</a>" +
								"</td><td>img: <img src=" + array[i].img + " width=100 height=100>" +
								"</td></tr>"
						)//d2
					}//for
					$("#d2").append("</table>")
				} //success
			})//ajax
		}) //b3
	}) //$
</script>
</head>
<body>
<button id="b3">우리도 JSON 많이 받아보자!(테이블로)</button>
<hr>
<div id="d2"></div>
</body>
</html>