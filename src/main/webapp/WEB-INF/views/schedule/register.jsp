<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>달팽이 상영관</title>
<link href="./resources/css/bootstrap.min.css" rel="stylesheet">
<link href="./resources/css/font-awesome.min.css" rel="stylesheet">
<link href="./resources/css/global.css" rel="stylesheet">
<link href="./resources/css/index.css" rel="stylesheet">
<link href="./resources/css/table.css" rel="stylesheet">
<link href="./resources/css/ticketing.css" rel="stylesheet">

<link rel="icon" type="image/x-icon" href="./resources/favicon.ico" />
<link
	href="https://fonts.googleapis.com/css2?family=Rajdhani&display=swap"
	rel="stylesheet">
<script src="./resources/js/bootstrap.bundle.min.js"></script>
</head>
<body>
	<!-- ======= Header ======= -->
	<%@ include file="../header3.jsp"%>
	<!-- End Header -->

	<div id="mvList"></div>
	<div id="cinList"></div>

	<div
		style="margin-left: 19%; line-height: 20px; padding-left: 122px; margin-top: 20px;">
		<form action="hRegist" method="post" enctype="multipart/form-data">
			<table
				style="width: 800px; transform: translateX(-30px); color: #fff;">

				<tr>
					<th>항목</th>
					<th>내용</th>
				</tr>

				<tr>
					<th>영화 제목</th>
					<td id="movieList"></td>
				</tr>

				<tr>
					<th>영화관</th>
					<td id="cinemaList">
				</tr>

				<tr>
					<th>상영관</th>
					<td><label><input type="radio" name="scrNum"
							value="1관">1관</label> <label><input type="radio"
							name="scrNum" value="2관">2관</label> <label><input
							type="radio" name="scrNum" value="3관">3관</label> <label><input
							type="radio" name="scrNum" value="4관">4관</label> <label><input
							type="radio" name="scrNum" value="5관">5관</label></td>
				</tr>


				<tr>
					<th>영화 상영 날짜</th>
					<td><div id="dateArea"></div></td>
				</tr>

				<tr>
					<th>영화 시간</th>
					<td><div id="timeArea"></div></td>
				</tr>

				<tr>
					<th colspan="2"><input type="hidden" value="${login.MId}" />
						<input type="submit" value="작성" /></th>
				</tr>

			</table>
		</form>
	</div>
	<!-- ======= Footer ======= -->
	<%@ include file="../footer.jsp"%>
	<!-- End Footer -->
</body>

<script src="https://code.jquery.com/jquery-3.7.1.js"
	integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4="
	crossorigin="anonymous"></script>

<script>
	//ajax로 상영관 목록 가져오기 

	$.ajax({
		type : "POST",
		url : "mvList",
		dataType : "json",
		success : function(list) {
			console.log(list);
			//cineList()함수 호출
			mvList(list);
		},
		error : function() {
			alert('목록 불러오기 실패!');
		}
	});

	//SELECT 세팅
	let movieList = $("#movieList");
	function mvList(list) {
		let output = "";
		output += "<select name=";
			output += "movTitle>";
		output += "<option>영화 선택</option>";
		for ( let i in list) {
			output += '<option';
			output += ' value="';
			output += list[i].movTitle;
			output += '">';
			output += list[i].movTitle;
			output += "</option>";
		}
		output += "</select>";
		movieList.html(output);
	}

	//ajax로 영화관 목록 가져오기 

	$.ajax({
		type : "POST",
		url : "cineList",
		dataType : "json",
		success : function(list) {
			console.log(list);
			//cineList()함수 호출
			cineList(list);
		},
		error : function() {
			alert('목록 불러오기 실패!');
		}
	});

	//SELECT 세팅
	let cinemaList = $("#cinemaList");
	function cineList(list) {
		let output = "";
		output += "<select name=";
			output += "CinName>";
		output += "<option>영화관 선택</option>";
		for ( let i in list) {
			output += '<option';
			output += ' value="';
			output += list[i].cinName;
			output += '">';
			output += list[i].cinName;
			output += "</option>";
		}
		output += "</select>";
		cinemaList.html(output);
	}

	let output = "";

	// 상영시간 select-option 세팅
	let movieTime1 = 7; // 첫 번째 타임 시간
	let movieTime2 = "";
	let movieTime3 = "";
	let mtTime = "";
	let timeArea = $("#timeArea");
	output += "<select name=\"schTime\">";
	output += "<option>상영시간</option>";
	for (let i = 0; i < 16; i++) {
		mtTime = String(movieTime1).padStart(2, '0');
		for (let j = 0; j < 2; j++) {
			if (j == 0) {
				movieTime2 = "00";
			} else {
				movieTime2 = "30";
			}
			movieTime3 = mtTime + ":" + movieTime2;
			output += '<option';
			output += ' value="';
			output += movieTime3;
			output += '">';
			output += movieTime3;
			output += "</option>";
		}
		movieTime1++;
	}
	output += "</select>";
	timeArea.html(output);

	// 상영날짜 select-option 세팅
	let dateArea = $("#dateArea");
	output = "<select name=\"schDate\">";
	output += "<option>상영날짜</option>";
	for (let i = 0; i < 7; i++) { // 오늘 포함 몇일까지 보여줄건지 세팅
		let today = new Date();
		let days = new Date(today);
		days.setDate(today.getDate() + i);
		let year = days.getFullYear(); // 연도
		let month = days.getMonth() + 1; // 월
		let date = days.getDate(); // 일
		let dayIdx = days.getDay(); // 요일(index)
		let day; // 요일
		let nDays = ""; // yyyy/mm/dd/(요일)
		if (dayIdx == 0) {
			day = '(일)';
		} else if (dayIdx == 1) {
			day = '(월)';
		} else if (dayIdx == 2) {
			day = '(화)';
		} else if (dayIdx == 3) {
			day = '(수)';
		} else if (dayIdx == 4) {
			day = '(목)';
		} else if (dayIdx == 5) {
			day = '(금)';
		} else if (dayIdx == 6) {
			day = '(토)';
		}
		nDays = year + '/' + month + '/' + date + day;
		output += '<option';
			output += ' value="';
			output += nDays;
			output += '">';
		output += nDays;
		output += "</option>";
	}
	output += "</select>";
	dateArea.html(output);
</script>
</html>