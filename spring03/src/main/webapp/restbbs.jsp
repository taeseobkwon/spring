<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript" src="resources/js/jquery-3.6.1.js"></script>
<script type="text/javascript">
$(function() {
	$('#b1').click(function() {
		$.ajax({
			url : "jsonbbs",
			dataType : "json",
			success : function(json) {
				for (var i = 0; i < json.length; i++) {
				$('#d1').append(json[i].id+" ")
				$('#d1').append(json[i].title+" ")
				$('#d1').append(json[i].content+" ")
				$('#d1').append(json[i].writer+"<br>" )
				}
			}//success function
		})//ajax
	})//b1click
	$('#b2').click(function() {
		$.ajax({
			url : "jsonmovie",
			dataType : "json",
			success : function(array) {
				$('#d1').html("")
      google.charts.load("current", {packages:["corechart"]});
      google.charts.setOnLoadCallback(drawChart);
      function drawChart() {
      var piedata= new Array(array.length+1);
  		piedata[0]=['영화제목','상영시간'];
      for (var i = 1; i < piedata.length; i++){
			piedata[i]= new Array(2);
			piedata[i][0]=array[i-1].title;
			piedata[i][1]=array[i-1].running_time;
		}
        var data = google.visualization.arrayToDataTable(piedata);
        var options = {
          title: 'My Daily Activities',
          pieHole: 0.4,
        };
			
        var chart = new google.visualization.PieChart(document.getElementById('donutchart'));
        chart.draw(data, options);
      }
			}//success function
		})//ajax
	})//b2click
	
})
    </script>
</head>
<body>
<button id="b1">bbs목록</button>
<button id="b2">여러개의 JSON을 많이 받아보자!(리스트)</button>
<hr>
<div id='d1' style="background: yellow;"></div>
<div id="donutchart" style="width: 900px; height: 500px;"></div>
</body>
</html>
