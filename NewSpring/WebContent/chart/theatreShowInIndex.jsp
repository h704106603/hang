<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>首页中的剧场活动展示</title>

  <link href="<%=request.getContextPath()%>/chart/common/css/font-awesome.min.css" rel="stylesheet">
  <link href="<%=request.getContextPath()%>/chart/common/css/bootstrap.min.css" rel="stylesheet">
  <link href="<%=request.getContextPath()%>/chart/common/css/bootstrap-datetimepicker.min.css" rel="stylesheet">  
  <link href="<%=request.getContextPath()%>/chart/common/css/flexslider.css" rel="stylesheet">
  <link href="<%=request.getContextPath()%>/chart/common/css/templatemo-style.css" rel="stylesheet">

  </head>
  <body class="tm-gray-bg">
  	<div class="section-margin-top">
			<div class="row">				
				<div class="tm-section-header">
					<div class="col-lg-3 col-md-3 col-sm-3"><hr></div>
					<div class="col-lg-6 col-md-6 col-sm-6"><h2 class="tm-section-title">近期剧场活动</h2></div>
					<div class="col-lg-3 col-md-3 col-sm-3"><hr></div>	
				</div>
			</div>
			<div class="row" id="theatreShow">
			
				<c:forEach var="TheatreShowDetails" items="${theatreShowDetailsList}"> 
				<div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 col-xxs-12">
					<div class="tm-home-box-2">						
						<img src="<%=request.getContextPath()%>/chart/common/img/${TheatreShowDetails.imgSrc}" alt="image" class="img-responsive">
						<h3>${TheatreShowDetails.name}</h3>
						<p class="tm-date">${TheatreShowDetails.time}</p>
						<div class="tm-home-box-2-container">
							<a href="#" class="tm-home-box-2-link" id="thumbs" value="${TheatreShowDetails.id}"><i class="fa fa-heart tm-home-box-2-icon border-right"></i></a>
							<a href="#" class="tm-home-box-2-link"><span class="tm-home-box-2-description">点赞</span></a>
							<a href="#" class="tm-home-box-2-link"><i class="fa fa-star-o tm-home-box-2-icon border-left"><span style="font-size: 3px">${TheatreShowDetails.count}</span></i></a>
						</div>
					</div>
				</div>
				</c:forEach>
			</div>
			<div class="row">
				<div class="col-lg-12">
					<p class="home-description">每个账号可以通过点赞来支持你所喜欢的活动</p>					
				</div>
			</div>			
		</div>
	</body>
	
	<script type="text/javascript" src="<%=request.getContextPath()%>/chart/common/js/jquery-1.7.js"></script>
  	<script type="text/javascript" src="<%=request.getContextPath()%>/chart/common/js/moment.js"></script>							<!-- moment.js -->
	<script type="text/javascript" src="<%=request.getContextPath()%>/chart/common/js/bootstrap.min.js"></script>					<!-- bootstrap js -->
	<script type="text/javascript" src="<%=request.getContextPath()%>/chart/common/js/bootstrap-datetimepicker.min.js"></script>	<!-- bootstrap date time picker js, http://eonasdan.github.io/bootstrap-datetimepicker/ -->
	<script type="text/javascript" src="<%=request.getContextPath()%>/chart/common/js/jquery.flexslider-min.js"></script>
 	<script>
	 	$("#theatreShow").on('click', '#thumbs', function(){ 
	 		var id = $(this).attr("value");
			location.href = "<%=request.getContextPath()%>/TheatreThumbs?id="+id+'';
			
		});
	</script>
 </html>