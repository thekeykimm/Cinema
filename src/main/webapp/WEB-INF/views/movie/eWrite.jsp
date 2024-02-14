<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>영화 등록</title>
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

	<%@ include file="../header3.jsp"%>

	<div style="margin-left: 29%; line-height: 20px; padding-left: 120px;">
		<form action="eWrite" method="post" enctype="multipart/form-data">
			<table
				style="width: 800px; transform: translateX(-30px); color: #fff;">
				<tr>
					<th colspan="2" style="font-size: 25px; padding-left: 190px;">영화
						등록</th>
				</tr>

				<tr>
					<th>항목</th>
					<th>내용</th>
				</tr>

				<tr>
					<th>제목</th>
					<td><input type="text" name="movTitle" size="40" /></td>
				</tr>

				<tr>
					<th>개봉일</th>
					<td><input type="date" name="movOpenDate"></td>
				</tr>
				<tr>
					<th>등급</th>
					<td><input type="text" name="movGrade"></td>
				</tr>
				<tr>
					<th>장르</th>
					<td><input type="text" name="movGenre"></td>
				</tr>
				<tr>
					<th>상영시간</th>
					<td><input type="text" name="movRunTime"></td>
				</tr>
				<tr>
					<th>줄거리</th>
					<td><textarea rows="20" cols="40" name="movIntro"></textarea></td>
				</tr>
				<tr>
					<th>감독</th>
					<td><input type="text" name="movDirector"></td>
				</tr>
				<tr>
					<th>출연</th>
					<td><textarea cols="40" name="movActors"></textarea></td>
				</tr>
				<tr>
					<th>포스터</th>
					<td><input type="file" name="movPoster" id="movPoster" /></br> <img
						id="preview" width="150px;"></td>
				</tr>

				<tr>
					<th colspan="2"><input type="hidden" value="${login.MId}" />
						<input type="submit" value="작성" /></th>
				</tr>

			</table>
		</form>
	</div>

	<%@ include file="../footer.jsp"%>
</body>


<%-- <c:if test="${login.MId eq null}">
	<script>
		alert('로그인 후 사용해주세요.');
		location.href = "loginForm";
	</script>
</c:if> --%>

<script src="https://code.jquery.com/jquery-3.7.1.js"
	integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4="
	crossorigin="anonymous"></script>
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<script>


    /*
    
        Ajax(Asynchoronous JavaScript And XML) : 비동기식 자바스크립트 XML
          -HTML만으로도 어려운 다양한 작업을 웹 페이지에 구현해 이용자가 웹페이지와 자유롭게 
           상호작용 할 수 있도록 하는 기술
          -JSP 페이지 이동 없이 데이터베이스 정보를 가져 올 수 있다.
          -AJAX 를 사용하려면 JSON에 대해서 알아야 한다.
          
          
        JSON(JavaScript Object Notation) : 자바스크립트에서 객체를 만들 때 사용하는 표현식
          -중괄호를 사용해서 key와 value로 구분
          -key는 이름, value는 값.
        
          
        Ajax를 사용하려면 반드시 jQuery가 필요하다.
        
        
        ajax 예시)
        
        $.ajax({
        	type : 통신타입(GET과 POST중 선택),
        	url : 요청 할 주소(controller에서 RequestMapping으로 받을 값(value)),
        	data : 서버에 요청시 보낼 파라미터(매개변수) <- JSON으로 보내야 한다.
        	{
        		"keyName1" : keyValue1,
        		"keyName2" : keyValue2,
        		
        	},
        	datatype : 응답 받을 데이터의 타입(text,json 등등),
        	success : funtion(result){
        		요청 및 응답에 성공 했을 경우, result(결과값)을 가져온다
        	},
        	error : funtion(){
        		요청 및 응답에 실패했을 경우
        	}
        });
        
    */

    
 /* 사진 미리보기 */
 $('#movPoster').on("change",(event)=> {
	 let file = event.target.files[0];
	 
	 let reader = new FileReader();
	 reader.onload=(e)=>{
		 $('#preview').attr("src",e.target.result);
	 }
		reader.readAsDataURL(file);
	
 }); 
    
    		
    

	
</script>


</html>