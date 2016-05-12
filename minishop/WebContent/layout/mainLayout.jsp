<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<!-- <style type="text/css">
 #sky {
	position: absolute;
	width: 100px;
	left: 50%;
	top: 150px;
	margin-left: 400px;
	background: #ffffff;
	border:solid #ccc;
	height: 200px;
} 
</style> -->
<!-- <script src="//code.jquery.com/jquery-1.4.2.min.js"></script>
<script type="text/javascript">
	$(function() {
	 	var cssTop = parseInt($("#sky").css("top"));
	 		$(window).scroll(function() {
	 			var position = $(window).scrollTop();
			$("#sky").stop().animate({
				"top" :position+cssTop + "px"
			}, 500); 
		}); 
	});
</script> -->
</head>
<body>
	<div style="width: 800px; margin-left: auto; margin-right: auto;">
		<div>
			<jsp:include page="../top.jsp"></jsp:include>
		</div>


		<div style="width: 900px; margin-left: auto; margin-right: auto;">
			<jsp:include page="${pathurl}"></jsp:include>
		</div>
	
	</div>
</body>
</html>






