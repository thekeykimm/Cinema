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

	<c:choose>
		<c:when test="${login ne null}">
			<!-- ======= Header ======= -->
			<%@ include file="../header2.jsp"%>
			<!-- End Header -->

			<div id="ticket">
				<div class="select-contents">
					<h1>영화예매</h1>
					<div id="select-movie">
						<div class="head">
							<h4>영화</h4>
						</div>
						<div id="movieArea" class="movie-body"></div>
					</div>

					<div id="select-theater">
						<div class="head">
							<h4>극장</h4>
						</div>
						<div id="theaterArea" class="theater-body"></div>
					</div>

					<div id="select-date">
						<div class="head">
							<h4>날짜</h4>
						</div>
						<div id="dateArea" class="date-body"></div>
					</div>

					<div id="select-time">
						<div class="head">
							<h4>시간</h4>
						</div>
						<div id="timeArea" class="time-body"></div>
					</div>
				</div>
			</div>
			<!-- ======= Footer ======= -->
			<%@ include file="../footer.jsp"%>
			<!-- End Footer -->
		</c:when>

		<c:otherwise>
			<!-- ======= Header ======= -->
			<%@ include file="../header.jsp"%>
			<!-- End Header -->

			<div id="ticket">
				<div class="select-contents">
					<h1>영화예매</h1>
					<div id="select-movie">
						<div class="head">
							<h4>영화</h4>
						</div>
						<div id="movieArea" class="movie-body"></div>
					</div>

					<div id="select-theater">
						<div class="head">
							<h4>극장</h4>
						</div>
						<div id="theaterArea" class="theater-body"></div>
					</div>

					<div id="select-date">
						<div class="head">
							<h4>날짜</h4>
						</div>
						<div id="dateArea" class="date-body"></div>
					</div>

					<div id="select-time">
						<div class="head">
							<h4>시간</h4>
						</div>
						<div id="timeArea" class="time-body"></div>
					</div>
				</div>
			</div>
			<!-- ======= Footer ======= -->
			<%@ include file="../footer.jsp"%>
			<!-- End Footer -->
		</c:otherwise>
	</c:choose>

</body>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script>
	//영화 목록 불러오기
	$.ajax({
		type : "POST",
		url : "vList",
		dataType : "json",
		success : function(list) {
			console.log(list);

			movieList(list);
		},
		error : function() {
			alert('영화목록 불러오기 실패!');
		}
	});

	function movieList(list) {
		let output = "<ul>";
		for ( let i in list) {
			output += "<li><a href='#' onclick=\"loadCinemaList('"
					+ list[i].movTitle + "')\">" + list[i].movTitle
					+ "</a></li>";
		}
		output += "</ul>";
		$('#movieArea').html(output);
	}

	//극장 목록 불러오기
	function loadCinemaList(movTitle) {
		$.ajax({
			type : "POST",
			url : "cList",
			data : {
				"movTitle" : movTitle
			},
			dataType : "json",
			success : function(list) {
				console.log(list);

				cinemaList(list, movTitle);
			},
			error : function() {
				alert('극장목록 불러오기 실패!');
			}
		});
	}

	function cinemaList(list, movTitle) {
		let output = "<ul>";
		for ( let i in list) {
			output += "<li><a href='#' onclick=\"loadDateList('"
					+ list[i].cinName + "', '" + movTitle + "')\">"
					+ list[i].cinName + "</a></li>";
		}
		output += "</ul>";
		$('#theaterArea').html(output);
	}

	//날짜 목록 불러오기
	function loadDateList(cinName, movTitle) {
		$.ajax({
			type : "POST",
			url : "dList",
			data : {
				"cinName" : cinName,
				"movTitle" : movTitle
			},
			dataType : "json",
			success : function(list) {
				console.log(list);

				dateList(list, cinName, movTitle);
			},
			error : function() {
				alert('날짜목록 불러오기 실패!');
			}
		});
	}

	function dateList(list, cinName, movTitle) {
		let output = "<ul>";
		for ( let i in list) {
			output += "<li><a href='#' onclick=\"loadTimeList('"
					+ list[i].schDate + "', '" + cinName + "', '" + movTitle
					+ "')\">" + list[i].schDate + "</a></li>";
		}
		output += "</ul>";
		$('#dateArea').html(output);
	}

	// 시간 목록 불러오기
	function loadTimeList(schDate, cinName, movTitle) {
		$.ajax({
			type : "POST",
			url : "tList",
			data : {
				"schDate" : schDate,
				"cinName" : cinName,
				"movTitle" : movTitle
			},
			dataType : "json",
			success : function(list) {
				console.log(list);

				timeList(list, schDate, cinName, movTitle);
			},
			error : function() {
				alert('시간목록 불러오기 실패!');
			}
		});
	}

	function timeList(list, schDate, cinName, movTitle) {
		
		
		let output = "<ul>";
		
		for ( let i in list) {
			console.log(list[i].schNum);
			output += "<form action='tSeatForm' id='tSeatForm'><li>"
						+ "<span id='schTime'>" + list[i].schTime + "</span>"
						+ "</li>"
						+ "<input type='hidden' value='" + list[i].schNum + "' name='SchNum' />"
						+ "</form>";
		}
		
		output += "</ul>";
		$('#timeArea').html(output);
		
		$('#schTime').click(()=>{
			$('#tSeatForm').submit();
		});
	}
</script>
</html>