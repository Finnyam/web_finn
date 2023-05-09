<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MYCGV</title>
</head>
<body>
	<!-- header -->
	
	
	<!-- content -->
	<div class="content">
		<section class="join">
			<h1 class="title">회원가입</h1>
			<form name="joinForm" action="#" method="get">
				<ul>
					<li>
						<label>아이디</label>
						<input type="text" name="id" placeholder="*8자 이상 영문으로 입력해주세요" class="input1" id="id">	
						<button type="button" class="btn_style2">중복체크</button>
					</li>
					<li>
						<label>비밀번호</label>
						<input type="text" name="pass" class="input1" id="pass">
					</li>
					<li>
						<label>비밀번호 확인</label>
						<input type="password" name="cpass" class="input1" id="cpass">
						<span id ="cmsg"></span>
					</li>
					<li>
						<label>성명</label>
						<input type="text" name="name" class="input1" id="name">
					</li>
					<li>
						<label>성별</label>
						<input type="radio" name="gender" value="male" ><span>남자</span>
						<input type="radio" name="gender" value="female"><span>여자</span>
					</li>
					<li>
						<label>이메일</label>
						<input type="text" name="email1" class="email" id="email1"> @ <input list="browsers" class="email" id="email2">
						<datalist id="browsers">
							<option value="naver.com">
							<option value="gmail.com">
							<option value="daum.com">
							<option value="hanmail.com">
							<option value="korea.com">
						</datalist>
					</li>
					<li>
						<label>주소</label>
						<input type="text" name="addr" class="input1" id="addr1">
						<button type="button" class="btn_style2" id="btnSearchAddr">주소찾기</button>
					</li>
					<li>
						<label>상세주소</label>
						<input type="text" name="addr2" class="input1" id="addr2">
					</li>		
					<li>
						<label>휴대폰</label>
							<input type="radio" name="phone" value="skt" ><span>SKT</span>
							<input type="radio" name="phone" value="lhu+"><span>LGU+</span>
							<input type="radio" name="phone" value="kt"><span>KT</span>
						<select name="tel" id="tel"> 
							<option value="default">선택</option>
							<option value="010">010</option>
							<option value="011">011</option>
							<option value="012">012</option>
						</select>
							- <input type="text" name="phone1" id="phone1">
							- <input type="text" name="phone2" id="phone2">
					</li>
					<li>
						<label>취미</label>
							<input type="checkbox" name="hobby" value="영화"><span>영화보기</span>
							<input type="checkbox" name="hobby" value="등산"><span>등산하기</span>
							<input type="checkbox" name="hobby" value="게임"><span>게임하기</span>
							<input type="checkbox" name="hobby" value="잠자기"><span>잠자기</span>
					</li>
					<li>
						<label>자기소개</label>
							<textarea name="intro"  placeholder="200자 이내로 작성" ></textarea>
					</li>			
					<li>
						<button type="button" class="btn_style" id="btnJoin">가입하기</button>
						<button type="reset" class="btn_style">다시입력</button>
					</li>
				</ul>
	        </form>
		</section>
	</div>
	
	<!-- footer -->
</body>
</html>









