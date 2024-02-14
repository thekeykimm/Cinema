<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>영화관 등록</title>
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
<body onload="list()">

	<!-- ======= Header ======= -->
	<%@ include file="../header3.jsp"%>
	<!-- End Header -->
	<div id="cinList"
		style="margin-left: 29%; line-height: 20px; padding-left: 122px; margin-top: 20px;">
		<h1 style="color: #fff; padding-left: 100px;">상영관 등록</h1>

		<form action="sRegist" method="post" enctype="multipart/form-data">
			<table
				style="width: 800px; transform: translateX(-30px); color: #fff;">

				<tr>
					<th>항목</th>
					<th>내용</th>
				</tr>

				<tr>
					<th>영화관 선택</th>
					<td id="cinemaList"></td>
				</tr>

				<tr>
					<th>상영관 이름</th>
					<td><input type="text" name="ScrName" /></td>
				</tr>

				<tr>
					<th>상영관 좌석 수</th>

					<td><input type="text" name="ScrCnt" /></td>
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
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script>
	//ajax로 영화관 목록 가져오기 

	function list() {
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
	}

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
</script>
</html>