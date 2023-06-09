<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JS - BOM(Browser Object Model)</title>
<script>
	let w = window.innerWidth;
	let h = window.innerHeight;
	
	document.write("width = " + w + "<br>")
	document.write("height = " + h + "<br>")
</script>
<style>
	button{
		width:120px;
		padding:9px 0;
		background:lightgray;
		border:1px solid cyan;
		border-radius:5px;
		cursor:pointer;
	}
	button:hover {
		text-decoration:underline;
	}
</style>
<script>
	function locationPage(page){
		if(page == 'naver'){
			window.location.href = "http://www.naver.com";
		}else if(page == 'google'){
			window.open('about:blank').location.href = "http://www.google.com";
		}else if(page == 'daum'){
			window.open('about:blank').location.href = "http://www.daum.net";
		}
	}
	function historypage(page) {
		let hlength = window.history.length;
		alert(hlength);
		if(page == 'prev'){
		window.history.back();
		}else if (page == 'next'){
		window.history.forward();
	 }else if (page ='go2'){
		 window.history.go(2);
	 }
	}
</script>
</head>
<body> 
	<h1>Browser Object Model</h1>
	<button type="button" onclick='locationPage("naver")'>네이버</button>
	<button type="button" onclick="locationPage('google')">구글</button>
	<button type="button" onclick="locationPage('daum')">다음</button>
	<button type="button" onclick='historypage("prev")'>Prev</button>
	<button type="button" onclick='historypage("next")'>Next</button>
	<button type="button" onclick='historypage("go2")'>Go Page 2</button>
</body>
</html>