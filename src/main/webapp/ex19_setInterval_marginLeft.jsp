<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> setInterval / marginLeft를 활용한 애니메이션 </title>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
	<script type="text/javascript">
		$(function() {
			var position = 0;
			var timer;
			
			$("#btn").click(function() {
				timer = setInterval(() => {
					position += 5;
					$("img").css("marginLeft", position).css("marginTop", position);
				}, 200);	
			});
			
			$("img").click(function() {
				clearInterval(timer);
			});
		});
	</script>
</head>
<body>
	<p><button id="btn"> 이동 </button></p>
	<div>
		<img src="images/image1.gif">
	</div>
</body>
</html>