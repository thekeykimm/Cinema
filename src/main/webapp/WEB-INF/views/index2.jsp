<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>달팽이 상영관</title>
<link rel="stylesheet" href="./resources/css/style.css?after" />
<link rel="icon" type="image/x-icon"
	href="./resources/assets/favicon.ico" />
</head>
<body>
	<c:choose>
		<c:when test="${login.MId eq 'admin'}">
			<!-- Header -->
			<%@ include file="header3.jsp"%>
			<!-- End Header -->
			
			<!-- Container -->
			<div class="admin-content">
				<h1>관리자 페이지</h1>
			</div>
			<!-- End Container -->

			<!-- ======= Footer ======= -->
			<%@ include file="footer.jsp"%>
			<!-- End Footer -->

		</c:when>

		<c:when test="${login ne null}">
			<%@ include file="header2.jsp"%>

			<div class="movie_title">
				<ul>
					<li class="active"><a href="#">박스오피스</a></li>
					<li><a href="#">최신개봉작</a></li>
					<li><a href="#">상영예정작</a></li>
					<li><a href="#">큐레이션</a></li>
				</ul>
			</div>
			<div>
				<div class="poster">
					<figure>
						<img src="./resources/assets/img/더 마블스.jpg"
							srcset="./resources/assets/img/더 마블스.jpg 2x" alt="더마블스">
					</figure>
					<div class="rank">
						<strong>1</strong>
					</div>
					<div class="mx">
						<span class="icon m ir_pm">Mx</span> <span class="icon b ir_pm">Boutique</span>
					</div>
				</div>
				<div class="infor">
					<h3>
						<span class="icon all ir_pm">12세 이상 관람가</span> <strong>더
							마블스</strong>
					</h3>
					<div class="infor_btn">
						<a href="#">상세보기</a> <a href="#">예매하기</a>
					</div>
				</div>
			</div>
			<!-- ======= Footer ======= -->
			<%@ include file="footer.jsp"%>
			<!-- End Footer -->
		</c:when>

		<c:otherwise>
			<%@ include file="header.jsp"%>

			<div id="container">
				<div class="swipe-wrapper">
					<ul>
						<li><a href="#"><img
								src="./resources/assets/img/더 마블스.jpg" /></a></li>
					</ul>
				</div>
			</div>
			<!-- ======= Footer ======= -->
			<%@ include file="footer.jsp"%>
			<!-- End Footer -->
		</c:otherwise>
	</c:choose>
</body>
</html>