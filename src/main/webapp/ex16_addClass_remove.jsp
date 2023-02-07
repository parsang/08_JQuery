<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> CSS 적용 </title>
	<style type="text/css">
		.important{font-weight: bold;}
		.blue{color: blue;}
		.bg_tomato{background-color: tomato;}
	</style>
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
	<script type="text/javascript">
		$(function() {
			// CSS 적용
			// $("선택자").addClass("클래스 이름") : 선택된 요소 스타일 클래스 추가
			// $("선택자").removeClass("클래스 이름") : 선택된 요소 스타일 클래스 삭제
			// $("선택자").toggleClass("클래스 이름") : 선택된 요소 스타일 클래스 추가/삭제
			// $("선택자").css("속성", "값") : 선택된 요소 CSS속성 설정
			$("#btn1").click(function() {
				$("h1, h2").addClass("blue");
				$("p").addClass("bg_tomato");
				$("div").addClass("bg_tomato blue important");
			});
			
			$("#btn2").click(function() {
				$("h1, h2").removeClass("blue");
				$("p").removeClass("bg_tomato");
				$("div").removeClass("bg_tomato blue important");
			});
			
			$("#btn3").click(function() {
				$("h1, h2").toggleClass("blue");
				$("p").toggleClass("bg_tomato");
				$("div").toggleClass("bg_tomato blue important");
			});
			
			$("#btn4").click(function() {
				$("h1, h2").css("backgroundColor", "skyblue");
				$("p").css("font-size", "24px").css("color", "red");
				$("div").css({"background" : "yellow", "width" : "200px", "border" : "1px solid red"});
			});
		});
	</script>
</head>
<body>
	<h1> 이것은 헤더 태그입니다. </h1>
	<h2> 이것은 헤더 태그입니다. </h2>
	
	<p> 이것은 문단 태그입니다. </p>
	<p> 이것은 문단 태그입니다. </p>
	<p> 이것은 문단 태그입니다. </p>
	
	<div> 이것은 영역 태그입니다. </div>
	<hr>
	
	<button id="btn1"> addClass </button>
	<button id="btn2"> removeClass </button>
	<button id="btn3"> toggleClass </button>
	<button id="btn4"> css </button>
</body>
</html>