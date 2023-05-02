<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://localhost:9000/web_project_finn/jquery/jquery-3.6.4.min.js"></script>
<script>
	$(document).ready(function(){
		//데이터 넣기 버튼 클릭이벤트
	$("#set_data").click(function(){
		//1. form 태그에 데이터 넣기 : value --> val()
		//document.getElementById("name").value = "son"; --> $("name").val("son");
		 $("#name").val("손흥민");
		 
		 //2. innerHTML --> text()
		 $("#addr").text("서울시 강남구");
		 
		 //text에 html태그를 추가하는 경우 --> html()
		 //$("#hobby").html("<li>영화보기</li>");
		 
		 //4. append(html태그)
		 $("#hobby").append("<li>영화보기</li>").append("<li>게임하기</li>")
		 .append("<li>등산하기</li>").append("<li>노래듣기</li>");
		 
		 //a태그 링크 형태로 d1에 추가하기
		$("#d1").html("<a href='http://www.naver.com'>Naver</a>");	
		//이미지 태그 형태로  d2에 이미지 추가하기
		$("#d2").html("<img src='../images/son.png'>");
		$("#d2 > img").css("width","20%");
	});	
		
	//데이터 가져오기 버튼
	$("#get_data").click(function(){
		//id가 name인 폼에서 데이터를 가져와서 --> id가getName인 폼에 넣기
		$("#getName").val($("#name").val());
		//네이버의 href 속성을 s1에 넣기
		$("#s1").text($("#d1 a").attr("href"));
		
		$("#s2").text($("#d2 img").attr("src"));
	});
});
</script>
</head>
<body>
	<h1>Set/Get Content</h1>
	 이름 : <input type="text" name="name" id="name"><br>
	 주소 : <p id="addr"></p>
	 취미 : <ul id="hobby"></ul>
	 네이버 주소  : <div id="d1"></div>
	 이미지 주소  : <div id="d2"></div>
	 <button type="button" id="set_data">데이터 넣기</button>
	 <hr>
	 Get Name : <input type="text" id="getName"><br>
	 네이버 주소 가져오기(href 속성만) : <span id="s1"></span><br>
	 이미지 주소 가져오기(src 속성만) : <span id="s2"></span><br>
	 <button type="button" id="get_data">데이터 가져오기</button>
	 
</body>
</html>





