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
<body>

	<!-- ======= Header ======= -->
	<%@ include file="../header3.jsp"%>
	<!-- End Header -->
	<div
		style="margin-left: 29%; line-height: 20px; padding-left: 122px; margin-top: 20px;">
		<h1 style="color: #fff; padding-left: 100px;">영화관 등록</h1>

		<form action="cRegist" method="post" enctype="multipart/form-data">
			<table
				style="width: 800px; transform: translateX(-30px); color: #fff;">

				<tr>
					<th>항목</th>
					<th>내용</th>
				</tr>

				<tr>
					<th>영화관 이름</th>
					<td><input type="text" name="CinName" size="50" /></td>
				</tr>

				<tr>
					<th>영화관 주소</th>

					<td><input type="text" name="CinAddr" size="50" /></td>
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
</html>