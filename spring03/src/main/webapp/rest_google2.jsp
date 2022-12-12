<html>
<head>
<script type="text/javascript" src="resources/js/jquery-3.6.1.js"></script>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
	google.charts.load("current", {
		packages : [ "corechart" ]
	});
	google.charts.setOnLoadCallback(drawChart);
	
	
	function drawChart() {
		$.ajax({
			url : "jsonResponse6",
			dataType : "json",
			success : function(array) {
				var d1 = new Array(list.length + 1);
				var headr = ["Task", "hours"];
				d1[0] = header
				
				for(i = 0; i < list.length; i++) {
					one = new Array(2)
					one[0] = list[i].task;
					one[1] = list[i].hours;
					d1[i + 1] = one
				}
				
				
				var data = google.visualization.arrayToDataTable([
		/* 				[ 'task', 'hours' ], 
						[ array[0].task, array[0].hours ],
						[ array[1].task, array[1].hours ],
						[ array[2].task, array[2].hours ],
						]); */

				var options = {
					title : 'My Daily Activities',
					pieHole : 0.4,
				};

				var chart = new google.visualization.PieChart(document.getElementById('donutchart'));
				chart.draw(data, options);

			}

		})

	}
</script>
</head>
<body>
	<div id="donutchart" style="width: 900px; height: 500px;"></div>
</body>
</html>