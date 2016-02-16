var data = {
	labels : ["好评率","正品","质量不错","没有色差","穿着舒适","服务满意","物流快"],
	datasets : [
		
		{
			fillColor : "rgba(255,0,0,0.5)",
			strokeColor : "rgba(250,250,0,1)",
			pointColor : "rgba(255,0,0,1)",
			pointStrokeColor : "#f2f2f2",
			data : chartsData
		}
	]
}
//Get the context of the canvas element we want to select

window.onload = function() {
	var ctx = document.getElementById("myChart").getContext("2d");
	var myNewChart = new Chart(ctx);
	myNewChart.Radar(data);
}




