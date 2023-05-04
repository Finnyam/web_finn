<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>KOBIS</title>
<script src="http://localhost:9000/web_project_finn/jquery/jquery-3.6.4.min.js"></script>
<script src="kobis_getjson2.js"></script>
<style>
	table,td,th {
		border:1px solid gray;
	}
</style>
</head>
<body>
	<h1>KOBIS 영화 박스오피스</h1>
	<div id="d1">
		<span>박스오피스 선택</span>
		<select id="s1">
			<option value="default">선택</option>
			<option value="day">평일</option>
			<option value="weekend">주말</option>
		</select>
			<input type="text" placeholder="날짜입력 예)20200202">	
			<button type="button" id="submit">실행</button>
	</div>
</body>
</html>