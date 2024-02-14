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

	<!-- ======= Header ======= -->
	<%@ include file="../header.jsp"%>
	<!-- End Header -->

	<div style="margin-left: 29%; line-height: 20px; padding-left: 122px; margin-top:20px;">
		<form action="mLogin" method="post">

			<table style="width: 800px; transform: translateX(-30px); color: #fff;">
				<tr>
					<th colspan="2" style="font-size:25px; padding-left:45px;">달팽이 상영관에 오신걸 환영합니다!</th>
				</tr>

				<tr>
					<th style="padding-left:100px;">아이디 : &emsp;&emsp;&emsp;<input type="text" name="mId" /></th>
				</tr>

				<tr>
					<th style="padding-left:100px;">비밀번호 : &emsp;&emsp;<input type="password" name="mPw" /></th>
				</tr>
				
				<tr>
					<td colspan="2" style="padding-left:196px;"><input type="submit" value="로그인"/></td>
				</tr>
			</table>
		</form>
	</div>

	<!-- ======= Footer ======= -->
	<%@ include file="../footer.jsp"%>
	<!-- End Footer -->

</body>
</html>