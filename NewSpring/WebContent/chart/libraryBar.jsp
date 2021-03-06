<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>图书馆近两小时人数明细(刷新周期5分钟)</title>
<script type="text/javascript" src="<%=request.getContextPath()%>/chart/common/js/jquery-1.3.2.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/chart/common/FusionCharts/FusionChartsV3.js"></script>
<style type="text/css">
	html,body{
		margin:0px;
		height:100%;
		padding:0px;
	}
</style>
</head>
<body style="overflow-y:auto" scroll="no">
	<div id="chartdiv1" align="center" style="width:100%; height:33%;top:0%;position:absolute;"></div>
	<div id="chartdiv2" align="center" style="width:100%; height:33%;top:33%;position:absolute;"></div>
	<div id="chartdiv3" align="center" style="width:100%; height:34%;top:66%;position:absolute;"></div>
	

</body>
	<script type="text/javascript">
	  var timer = window.setInterval(showSecondes,30000);
		function showSecondes() {
			location.href = "<%=request.getContextPath()%>/LibraryBar";
		}
		
	var chart1 = new FusionCharts("<%=request.getContextPath()%>/chart/common/FusionCharts/MSStackedColumn2DLineDY.swf",
			"chartId1", "100%", "100%", "0", "0");
	var chart2 = new FusionCharts("<%=request.getContextPath()%>/chart/common/FusionCharts/MSStackedColumn2DLineDY.swf",
			"chartId2", "100%", "100%", "0", "0");
	var chart3 = new FusionCharts("<%=request.getContextPath()%>/chart/common/FusionCharts/MSStackedColumn2DLineDY.swf",
			"chartId3", "100%", "100%", "0", "0");
	
	var data = ${message};
	chart1.setDataXML(data.FirstReadingRoom);
	chart1.render("chartdiv1");
	chart2.setDataXML(data.DigitalReadingRoom);
	chart2.render("chartdiv2");
	chart3.setDataXML(data.SelfStudyRoom);
	chart3.render("chartdiv3");

	</script>
</html>