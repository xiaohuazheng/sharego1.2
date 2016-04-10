
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
var data1 = {
	labels : ["好评率(标准/实际)","正品(标准/实际)","质量不错(标准/实际)","没有色差(标准/实际)","穿着舒适(标准/实际)","服务满意(标准/实际)","物流快(标准/实际)"],
	datasets : [
		{
			fillColor : "rgba(220,220,220,0.5)",
			strokeColor : "rgba(220,220,220,1)",
			data : [100,100,100,100,100,100,100]
		},
		{
			fillColor : "rgba(151,187,205,0.5)",
			strokeColor : "rgba(151,187,205,1)",
			data : chartsData
		}
	]
}
//Get the context of the canvas element we want to select

/*window.onload = function() {
	var ctx = document.getElementById("myChart").getContext("2d");
	var myNewChart = new Chart(ctx);
	myNewChart.Radar(data);

	var ctx1 = document.getElementById("myChart1").getContext("2d");
	var myNewChart = new Chart(ctx1);
	myNewChart.Bar(data1);
}*/
$(function() {
	var ctx = document.getElementById("myChart").getContext("2d");
	var myNewChart = new Chart(ctx);
	myNewChart.Radar(data);

	var ctx1 = document.getElementById("myChart1").getContext("2d");
	var myNewChart = new Chart(ctx1);
	myNewChart.Bar(data1);

	//点击切换图表
	$('#myChart1').hide();
	$('.randar_char').on('click', function() {
		$('#myChart1').hide();
		$('#myChart').show();
	});
	$('.bar_char').on('click', function() {
		$('#myChart').hide();
		$('#myChart1').show();
	});
});




