<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://localhost:9000/web_project_finn/jquery/jquery-3.6.4.min.js"></script>
<style>
	div#target {
		width:500px; height:100px;
		background:mediumseagreen;
		margin:20px;
	}
</style>
<script>
	$(document).ready(function(){
		//hide 클릭이벤트
		  $("#hide").click(function(){
			 $("#target").hide(1000, function(){ alert("hide good"); });
		  });
		//show 클릭이벤트
		  $("#show").click(function(){
			  $("#target").show(1000, function(){ alert("show good"); });
		  });
		//toggle 클릭이벤트
		  $("#toggle").click(function(){
			  $("#target").toggle(1000 ,function(){ alert("toggle good"); });
		  });
		});
</script>
</head>
<body>
	<h1>Hide/Show/Toggle Method</h1>
	<div id="target"></div>
		<button type="button" id="hide">Hide</button>
		<button type="button" id="show">Show</button>
		<button type="button" id="toggle">Toggle</button>
</body>
</html>