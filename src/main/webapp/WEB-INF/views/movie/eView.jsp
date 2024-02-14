<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>영화 상세보기</title>
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

<style>
th {
width: 100px;}
</style>
</head>
<body>

	<!-- ======= Header ======= -->
	<%@ include file="../header.jsp"%>
	<!-- End Header -->
	<div style="margin-left: 19%; line-height: 20px; padding-left: 122px; margin-top: 20px;">
	
	<table style="width: 800px; transform: translateX(-30px); color: #fff;">

		<tr>
			<th>제목</th>
			<td>${view.movTitle}</td>
		</tr>

		<tr>
			<th>개봉일</th>
			<td>${view.movOpenDate}</td>
		</tr>

		<tr>
			<th>등급</th>
			<td>${view.movGrade}</td>
		</tr>

		<tr>
			<th>장르</th>
			<td>${view.movGenre}</td>
		</tr>

		<tr>
			<th>상영시간</th>
			<td>${view.movRunTime}</td>
		</tr>

		<tr>
			<th>줄거리</th>
			<td>${view.movIntro}</td>
		</tr>

		<tr>
			<th>감독</th>
			<td>${view.movDirector}</td>
		</tr>

		<tr>
			<th>출연</th>
			<td>${view.movActors}</td>
		</tr>

		<tr>
			<th>포스터</th>
			<td><img src="./resources/fileUpload/${view.movPosterName}"
				width="200px" /></td>
		</tr>

		<tr>
			<th colspan="2">
				<button id="modify">수정</button>
				<button id="delete">삭제</button>
			</th>
		</tr>
	</table>

	<!-- 댓글 작성 공간 -->
	<c:if test="${login.MId ne null}">
		<div id="cmtWrite">
			<input type="hidden" value="${view.movNum}" id="cbNum" /> <input
				type="hidden" value="${login.MId}" id="cWriter" />
			<textarea rows="3" cols="30" id="cContents"></textarea>
			<button id="writeBtn">댓글 입력</button>
		</div>
	</c:if>

	<!-- 댓글 목록 공간 -->
	<div id="cmtArea"></div>
	</div>

	<!-- ======= Footer ======= -->
	<%@ include file="../footer.jsp"%>
	<!-- End Footer -->
</body>