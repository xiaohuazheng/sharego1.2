var data = {
	labels : ["与描述相符","质量","穿着舒适","服务态度","物流","尺寸合适","实战效果"],
	datasets : [
		
		{
			fillColor : "rgba(255,0,0,0.5)",
			strokeColor : "rgba(250,250,0,1)",
			pointColor : "rgba(255,0,0,1)",
			pointStrokeColor : "#f2f2f2",
			data : [98,91,88,88,96,77,95]
		}
	]
}
//Get the context of the canvas element we want to select

window.onload = function() {
	var ctx = document.getElementById("myChart").getContext("2d");
	var myNewChart = new Chart(ctx);
	myNewChart.Radar(data);
}




