$(document).ready(function(){
	//실행 버튼 이벤트
	$("#submit").click(function(kobis){
		if($("#s1").val() == "default"){
			alert("박스오피스를 선택해주세요");
			$("#s1").focus();
			return false;
		}else if($("input[type='text']").val() == ""){
			alert("날짜를 입력해주세요");
			$("input[type='text']").focus();
			return false;
		}else{
			//1.일별,주말 박스오피스 JSON 데이터 가져오기 
			let kdate = $("input[type='text']").val();
			let ktype = $("#s1").val();
			let url = "";
			if(ktype == "Daily"){
				//일별 박스오피스 url 생성
				url = "https://kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/search"+ktype+"BoxOfficeList.json?key=f5eef3421c602c6cb7ea224104795888&targetDt="+ kdate;
			
			}else{
				url = "http://kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/search"+ktype+"BoxOfficeList.json?key=f5eef3421c602c6cb7ea224104795888&targetDt="+kdate;
			}			
			$.getJSON(url, function(kobis){
				//2. output code 생성
				let boxOffice = kobis.boxOfficeResult;
				let code = "<div id='d2'>"; 
				code += "<h1> 박스오피스 : "+boxOffice.boxofficeType+"</h1>";
				code += "<h3> 조회일자 : "+boxOffice.showRange+"</h3>";
				code += "<table border=1>";
				code += "<tr>";
				code += "<th>순위</th>";	
				code += "<th>영화제목</th>";	
				code += "<th>개봉일</th>";	
				code += "<th>누적관객수</th>";	
				code += "<th>상영횟수</th>";
				code += "</tr>";
				
				let listName = null;
				if(ktype == "Daily"){
					listName = boxOffice.dailyBoxOfficeList;
				}else{
					listName = boxOffice.weeklyBoxOfficeList;
				}
				for(data of listName){
					code += "<tr>";
					code += "<td>"+ data.rank +"</td>";
					code += "<td>"+ data.movieNm +"</td>";
					code += "<td>"+ data.openDt +"</td>";
					code += "<td>"+ data.audiAcc +"</td>";
					code += "<td>"+ data.showCnt +"</td>";
					code += "</tr>";
					}
					code += "</table>";
					code += "</div>";
					//이전 출력화면 삭제!
					$("div#d2").remove();
					
					//$("body").append(code);
					//$().before();
					$("#p1").css("background","tomato");
					$("#d1").after(code);
			});
		}
	});	
});
