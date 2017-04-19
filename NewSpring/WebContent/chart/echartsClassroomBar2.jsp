<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" isELIgnored="false"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix='fmt' uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge"> 
<meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
<title>教室明细情况（刷新周期2分钟）</title>

<script  Charset="UTF-8" type="text/javascript" src="<%=request.getContextPath()%>/chart/common/echarts/esl.js"></script>
<script  Charset="UTF-8" type="text/javascript" src="<%=request.getContextPath()%>/chart/common/js/jquery-1.3.2.min.js"></script>
<link href="<%=request.getContextPath()%>/chart/common/css/echartsClassroom.css" rel="stylesheet">
</head>
<body style="background-color: #000000">
	<div id="chartdiv1" style="height:96%; width:96%; position:absolute; top: 0px;  left:0px;  border:0px solid #FCDD44;">			
 	</div>
 	<div id="classroomInput" style="height:96%; width:96%; position:absolute; top: 100%;">
 	    <input type="text" name="name" />
 	</div>
 	<select name="classroomId" id="classroomId">
		<c:forEach items="${ClassroomIdList}" var="ClassroomId">
			<option value="${ClassroomId}">${ClassroomId}</option>
		</c:forEach>
	</select>
 	
    <script type="text/javascript">
    if(typeof window.addEventListener=="undefined"){
		 window.attachEvent("resize",function(){
		    	option.chart.resize();s
		    });
	}
	else{
		window.addEventListener("resize",function(){
	    	option.chart.resize();
	    });
	}
    var timer = window.setInterval(showSecondes,60000);
	function showSecondes() {
		location.href = "<%=request.getContextPath()%>/EchartsClassroomBar";
	}
    require.config({
        paths:{ 
        	'echarts' : '<%=request.getContextPath()%>/chart/common/echarts/echarts',
            'echarts/chart/map' : '<%=request.getContextPath()%>/chart/common/echarts/echarts-map'
        }
    });

    require(
        [
            'echarts',
            'echarts/chart/map'
        ],
        function (ec) {
            // --- 地图 ---
        	var option = ec.init(document.getElementById('chartdiv1'));
        	      
        	var update = {"classroom":"10"};
        	
        	$.getJSON("<%=request.getContextPath()%>/EchartsClassroomById",update, function(msg){
        		var data = msg.data;
        		var json = JSON.parse(data);
        		option.setOption(json);
        	});
            
            
        }
    );

    </script>
</body>
</html>