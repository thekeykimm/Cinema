<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>달팽이 상영관</title>
<link href="./resources/css/bootstrap.min.css" rel="stylesheet">
<link href="./resources/css/font-awesome.min.css" rel="stylesheet">
<link href="./resources/css/global.css" rel="stylesheet">
<link href="./resources/css/index.css" rel="stylesheet">
<link href="./resources/css/table.css?after" rel="stylesheet">
<link rel="icon" type="image/x-icon" href="./resources/favicon.ico" />
<link
	href="https://fonts.googleapis.com/css2?family=Rajdhani&display=swap"
	rel="stylesheet">
<script src="./resources/js/bootstrap.bundle.min.js"></script>

</head>
<body>

	<%@ include file="../header.jsp"%>

	<div style="margin-left: 29%; line-height: 20px; padding-left:120px;">
		<form action="mJoin" method="post" enctype="multipart/form-data">
			<table style="width:800px; transform:translateX(-30px); color: #fff;">
				<tr>
					<th colspan="2" style="font-size:25px; padding-left:45px;">달팽이 상영관에 오신걸 환영합니다!</th>
				</tr>

				<tr>
					<th style="text-align:center;">항목</th>
					<th style="padding-left:75px;">내용</th>
				</tr>

				<tr>
					<th style="text-align:center;">아이디</th>
					<td><input type="text" name="mId" id="mId" />
						<p id="check1"></p></td>
				</tr>

				<tr>
					<th style="text-align:center;">비밀번호</th>
					<td><input type="password" name="mPw" id="mPw" />
						<p id="check2"></p></td>
				</tr>

				<tr>
					<th style="text-align:center;">비밀번호 확인</th>
					<td><input type="password" id="cPw" />
						<p id="check3"></p></td>
				</tr>

				<tr>
					<th style="text-align:center;">이름</th>
					<td><input type="text" name="mName" /></td>
				</tr>

				<tr>
					<th style="text-align:center;">생년월일</th>
					<td><input type="date" name="mBirth" /></td>
				</tr>

				<tr>
					<th style="text-align:center;">성별</th>
					<td>남자 <input type="radio" name="mGender" value="남자" /> 여자 <input
						type="radio" name="mGender" value="여자" />
					</td>
				</tr>

				<tr>
					<th style="text-align:center;">이메일</th>
					<td><input type="email" name="mEmail" /></td>
				</tr>

				<tr>
					<th style="text-align:center;">연락처</th>
					<td><input type="text" name="mPhone" /></td>
				</tr>

				<tr>
					<th style="text-align:center;">주소</th>
					<td><input type="text" id="sample6_postcode"
						placeholder="우편번호" name="addr1"> <input type="button"
						onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
						<input type="text" id="sample6_address" placeholder="주소"
						name="addr2"><br> <input type="text"
						id="sample6_detailAddress" placeholder="상세주소" name="addr3">
						<!-- <input
				type="text" id="sample6_extraAddress" placeholder="참고항목"> --></td>
				</tr>


				<tr>
					<th style="text-align:center;">프로필사진</th>
					<td><input type="file" name="mProfile" id="mProfile" /><br />
						<img id="preview" width=150px></td>
				</tr>

				<tr>
					<th colspan="2" style="padding-left: 200px"><input type="submit" value="가입" /> <input
						type="reset" value="초기화" /></th>
				</tr>


			</table>
		</form>
	</div>

	<%@ include file="../footer.jsp"%>

</body>
<script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>

	let mId = $('#mId');			
	let mPw = $('#mPw');			
	let checkPw = $('#checkPw');	
	
	let check1 = $('#check1');		
	let check2 = $('#check2');		
	let check3 = $('#check3');		

	
	mId.keyup(()=>{
		$.ajax({
			type : "POST",
			url : "idCheck",
			data : 
			{
				// mId => 입력창
				// mId.val() => 입력한 값 
				"mId" : mId.val()
			},
			dataType : "text",
			success : function(result){
				console.log('idoverlap함수 통신성공! result : ' + result);
				if(result=="OK"){
					check1.html("사용 가능한 아이디");
					check1.css("color", "blue");	
				} else {
					check1.html("이미 사용중인 아이디");
					check1.css("color", "red");
				}
			},
			error : function(){
				alert('idoverlap함수 통신실패!');
			}
		});
	});
	
	// 비밀번호 정규식
	mPw.keyup(()=>{
		let mVal = mPw.val();
		
		let num = mVal.search(/[0-9]/);	// 숫자 입력 여부 : 입력하면 -1이 아니다
		let eng = mVal.search(/[a-z]/);	// 영문 입력 여부 : 입력하면 -1이 아니다
		let spe = mVal.search(/[`~!@#$%^&*|\\\'\":;\/?]/);	// 특수문자 입력 여부 : 입력하면 -1이 아니다
		let spc = mVal.search(/\s/);		// 공백 여부 : 입력하면 -1이 아니다
		
		// console.log("num : " + num + ", eng : " + eng + ", spe : " + spe + ", spc : " + spc);
		
		// (1) 비밀번호 8자리~ 16자리
		// (2) 공백 유무
		// (3) 영문, 숫자, 특수문자 혼합 
		
		check2.css("color", "red");
		
		if(mVal.length < 8 || mVal.length > 16){
			check2.html("비밀번호는 8자리에서 16자리로 입력");
		} else if(spc != -1){
			check2.html("공백없이 입력");
		} else if(num == -1 || eng == -1 || spe == -1){
			check2.html("영문, 숫자, 특수문자를 혼합해서 입력");
		} else {
			check2.html("사용 가능한 비밀번호");
			check2.css("color", "blue");
		}
		
	});
	
	// 비밀번호 확인
	checkPw.keyup(()=>{
		
		if(mPw.val() == checkPw.val()){
			check3.html("비밀번호 일치");
			check3.css("color", "blue");
		} else {
			check3.html("비밀번호 불일치");
			check3.css("color", "red");
		}
				
	});
	
	// API(Application Programing Interface)
	// 응용 프로그램에서 사용할 수 있도록 운영체제나 프로그래밍 
	// 언어가 제공하는 기능을 제어할 수 있게 만든 인터페이스
	
	// 다음 주소 API
	function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                
                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("sample6_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("sample6_detailAddress").focus();
            }
        }).open();
    }
	
	/* 사진 미리보기 */
	$('#mProfile').on("change",(event) => {
		let file = event.target.files[0];
		
		let reader = new FileReader();
		reader.onload = (e) => {
			$('#preview').attr("src", e.target.result);
		}
		
		reader.readAsDataURL(file);
	});
	


</script>
</html>