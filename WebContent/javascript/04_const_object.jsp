<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>JS - Const:Object</title>
	<script>
		/* let x = 100;
		let y = 100; */
		const x_arr = ["java", "oracle"];  //배열 : 대괄호[]
		const y_arr = ["java", "oracle"];
		//JSON 타입 : {name:value, name:value...} - REST
		const json1 = {"subject1":"java", "subject2":"oracle"}; 
		const score = {name:"홍길동", kor:90, eng:90, math:90, tot:270.0, avg:90.0}; 
		
		/* const x_arr = ["java", "oracle", "html"]; -const 키워드는 재정의 불가 */
		
		document.write('x_arr-->' + x_arr +'<br>');
		document.write('x_arr[0]-->' + x_arr[0] +'<br>');
		document.write('y_arr-->' + y_arr +'<br>');
		document.write('y_arr[1]-->' + y_arr[1] +'<br>');
		document.write('json1-->' + json1 +'<br>');
		document.write('score.name-->' + score.name +'<br>');
		document.write('score.kor-->' + score.kor +'<br>');
		document.write('score.avg-->' + score.avg +'<br>');
	
	</script>
</head>
<body>

</body>
</html>