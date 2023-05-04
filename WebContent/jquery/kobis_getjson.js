$(document).ready(function(){
	//1. json data --> $.getJson(url,function(JSON데이터를 담고 있는 변수){});
	let url = "https://kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json?key=f5eef3421c602c6cb7ea224104795888&targetDt=20230503";
	$.getJSON(url, function(kobis){
		//2. output code 생성
		let boxOffice = kobis.boxOfficeResult;
		let code = "<h1> 박스오피스 : "+boxOffice.boxofficeType+"</h1>";
		code += "<h3> 조회일자 : "+boxOffice.showRange+"</h3>";
		code += "<table>";
		code += "<tr>";
		code += "<th>순위</th>";	
		code += "<th>영화제목</th>";	
		code += "<th>개봉일</th>";	
		code += "<th>누적관객수</th>";	
		code += "<th>상영횟수</th>";
		code += "</tr>";
		for(data of boxOffice.dailyBoxOfficeList){
			code += "<tr>";
			code += "<td>"+ data.rank +"</td>";
			code += "<td>"+ data.movieNm +"</td>";
			code += "<td>"+ data.openDt +"</td>";
			code += "<td>"+ data.audiAcc +"</td>";
			code += "<td>"+ data.showCnt +"</td>";
			code += "</tr>";
			}
			code += "</table>";					
			
			//3. body 위치에 append
			$("body").append(code);
	});
	
	
	
});
