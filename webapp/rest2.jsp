<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script type="text/javascript">
	$(function() {
		$('#b1').click(function() {
			$.ajax({
				url : "jsonResponse1",
				dataType : "json",
				success : function(json) {
					alert(json)
					$('#d1').append(json.id + "<br>" +
								json.name + " " +
								json.url + " " +
								json.img)
				} //success
			})//ajax
		}) //b1
		
		$('#b2').click(function() {
			$.ajax({
				url : "jsonResponse2",
				dataType : "json",
				success : function(array) {
					//alert(array)
					//alert(array[0].id)
					for(i = 0; i < array.length; i++){
						console.log(array[i].id + " "+ array[i].img)
						$('#d1').append(
								"아이디: " + array[i].id +
								" 북마크이름: " + array[i].name +
								" url: <a href=" + array[i].url + " >GO URL</a>" +
								" img: <img src=" + array[i].img + " width=30 height=30><br>"
						)//d1
					}//for
				} //success
			})//ajax
		}) //b1
		
		$('#b3').click(function() {
			$.ajax({
				url : "jsonResponse2",
				dataType : "json",
				success : function(array) {
					//alert(array)
					//alert(array[0].id)
					$('#d2').append("<table border=1><tr><td>아이디</td><td>북마크이름</td><td>url</td><td>img</td></tr>")
					for(i = 0; i < array.length; i++){
						console.log(array[i].id + " "+ array[i].img)
						$('#d2').append(
								"<tr>" +
								"<td>" + array[i].id +
								"</td><td>" + array[i].name +
								"</td><td><a href=" + array[i].url + ">GO URL</a>" +
								"</td><td>img: <img src=" + array[i].img + " width=30 height=30>" +
								"</td></tr>"
						)//d2
					}//for
					$("#d2").append("</table>")
				} //success
			})//ajax
		}) //b3
		
		$('#b4').click(function() {
			$.ajax({
				url : "jsonResponse3",
				dataType : "json",
				success : function(array) {
					//alert(array)
					//alert(array[0].id)
					$('#d3').append("<table border=1><tr><td>아이디</td><td>내용</td><td>작성자</td><td>제목</td></tr>")
					for(i = 0; i < array.length; i++){
						//console.log(array[i].id + " "+ array[i].img)
						$('#d3').append(
								"<tr>" +
								"<td>" + array[i].id +
								"</td><td>" + array[i].content +
								"</td><td>" + array[i].writer +
								"</td><td>" + array[i].title +
								"</td></tr>"
						)//d2
					}//for
					$("#d3").append("</table>")
				} //success
			})//ajax
		}) //b4
		
		$('#b5').click(function() {
			$.ajax({
				url : "jsonResponse4",
				dataType : "json",
				success : function(array) {
					//alert(array)
					//alert(array[0].id)
					$('#d3').empty()
					for(i = 0; i < array.length; i++){
						$('#d3').append(
						//console.log(array[i].id + " "+ array[i].img)
						
								
								"아이디: " + array[i].id +
								"내용: " + array[i].content +
								"작성자" + array[i].writer + 
								"제목" + array[i].title + "<br>"
								
								
								
						)//d1
						
						
						
					}//for
				} //success
			})//ajax
			$.ajax({
				url : "jsonResponse4",
				dataType : "json",
				success : function(array) {
					//alert(array)
					//alert(array[0].id)
					$('#d3').append("<table border=1><tr><td>아이디</td><td>내용</td><td>작성자</td><td>제목</td></tr>")
					for(i = 0; i < array.length; i++){
						//console.log(array[i].id + " "+ array[i].img)
						$('#d3').append(
								"<tr>" +
								"<td>" + array[i].id +
								"</td><td>" + array[i].content +
								"</td><td>" + array[i].writer +
								"</td><td>" + array[i].title +
								"</td></tr>"
						)//d2
					}//for
					$("#d3").append("</table>")
				} //success
			})//ajax
			
			
			
			
			
		}) //b1
반응
댓글


	}) //$
</script>
</head>
<body>
<button id="b1">우리도 JSON 받아보자!</button>
<button id="b2">우리도 JSON 많이 받아보자!</button>
<button id="b3">JSON table</button>
<button id="b4">b4</button>
<button id="b5">b5</button>
<hr>
<div id="d1" style="background: yellow; width: 800px; height: 500px;"></div>
<div id="d2" style="background: pink; width: 800px; height: 500px;"></div>
<div id="d3" style="background: lime; width: 800px; height: 500px;"></div>
<div id="d4" style="background: blue; width: 800px; height: 500px;"></div>

</body>
</html>