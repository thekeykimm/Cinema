<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<link href="./resources/css/table.css" rel="stylesheet">
<link rel="icon" type="image/x-icon" href="./resources/favicon.ico" />
<link
	href="https://fonts.googleapis.com/css2?family=Rajdhani&display=swap"
	rel="stylesheet">
<script src="./resources/js/bootstrap.bundle.min.js"></script>

</head>
<body>
	<c:choose>
		<c:when test="${login.MId eq 'admin'}">
			<!-- Header -->
			<%@ include file="header3.jsp"%>
			<!-- End Header -->

			<!-- Contents -->
			<%@ include file="contents.jsp"%>
			<!-- End Contents -->

			<!-- ======= Footer ======= -->
			<%@ include file="footer.jsp"%>
			<!-- End Footer -->
		</c:when>

		<c:when test="${login ne null}">
			<!-- Header -->
			<%@ include file="header2.jsp"%>
			<!-- End Header -->

			<!-- Contents -->
			<%@ include file="contents.jsp"%>
			<!-- End Contents -->

			<!-- ======= Footer ======= -->
			<%@ include file="footer.jsp"%>
			<!-- End Footer -->
		</c:when>

		<c:otherwise>
			<!-- Header -->
			<%@ include file="header.jsp"%>
			<!-- End Header -->

			<!-- Contents -->
			<%@ include file="contents.jsp"%>
			<!-- End Contents -->

			<!-- ======= Footer ======= -->
			<%@ include file="footer.jsp"%>
			<!-- End Footer -->
		</c:otherwise>
	</c:choose>

</body>
<script>
	window.onscroll = function() {
		myFunction()
	};

	var navbar_sticky = document.getElementById("navbar_sticky");
	var sticky = navbar_sticky.offsetTop;
	var navbar_height = document.querySelector('.navbar').offsetHeight;

	function myFunction() {
		if (window.pageYOffset >= sticky + navbar_height) {
			navbar_sticky.classList.add("sticky")
			document.body.style.paddingTop = navbar_height + 'px';
		} else {
			navbar_sticky.classList.remove("sticky");
			document.body.style.paddingTop = '0'
		}
	}

	function changeDate(dayChange) {
		const date = new Date();
		console.log(date.getFullYear());
		const lastDay = new Date(date.getFullYear(), date.getMonth() + 1, 0);
		console.log(lastDay);
		const reserveDate = document.querySelector(".date-body");
		console.log(reserveDate);
		const weekOfDay = [ "일", "월", "화", "수", "목", "금", "토" ]
		const year = date.getFullYear();
		const month = date.getMonth() + 1;
		console.log(weekOfDay);
		console.log(year);
		console.log(month);
		for (i = date.getDate(); i <= lastDay.getDate(); i++) {
			const button = document.createElement("button");
			const spanWeekOfDay = document.createElement("span");
			const spanDay = document.createElement("span");
			const dayOfWeek = weekOfDay[new Date(year + "-" + month + "-" + i)
					.getDay()];
			if (dayOfWeek === "토") {
				spanWeekOfDay.classList.add("saturday");
				spanDay.classList.add("saturday");
			} else if (dayOfWeek === "일") {
				spanWeekOfDay.classList.add("sunday");
				spanDay.classList.add("sunday");
			}
			spanWeekOfDay.innerHTML = dayOfWeek;
			button.append(spanWeekOfDay);
			// 날짜넣기
			spanDay.innerHTML = i;
			button.append(spanDay);
			// button.append();
			reserveDate.append(button);
			
			dayClickEvent(button);
		}
	}
	
	function dayClickEvent(button){
		button.addEventListener("click", function() {
			const movieDateWrapperActive = document.querySelectorAll(".movie-date-wrapper-active");
			movieDateWrapperActive.forEach((list) => {
				list.classList.remove("movie-date-wrapper-active");
			})
			button.classList.add("movie-date-wrapper-active");
		})
	}
</script>
</html>