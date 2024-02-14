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
			<%@ include file="../header3.jsp"%>
			<!-- End Header -->

			<!-- Contents -->
			<div
				style="margin-left: 19%; line-height: 20px; padding-left: 122px; margin-top: 20px;">
				<table
					style="width: 600px; transform: translateX(132px); color: #fff;">

					<tr>
						<th>항목</th>
						<th>내용</th>
					</tr>

					<tr>
						<th>아이디</th>
						<td>${view.MId}</td>
					</tr>

					<tr>
						<th>이름</th>
						<td>${view.MName}</td>
					</tr>

					<tr>
						<th>생년월일</th>
						<td>${view.MBirth}</td>
					</tr>

					<tr>
						<th>성별</th>
						<td>${view.MGender}</td>
					</tr>

					<tr>
						<th>이메일</th>
						<td>${view.MEmail}</td>
					</tr>

					<tr>
						<th>연락처</th>
						<td>${view.MPhone}</td>
					</tr>

					<tr>
						<th>주소</th>
						<td>${view.MAddr}</td>
					</tr>

					<tr>
						<th>프로필사진</th>
						<td><img src="./resources/profile/${view.MProfileName}"
							width="200px" /></td>
					</tr>


					<!-- 로그인 아이디와 현재 페이지의 아이디가 동일해야 수정/삭제 버튼 출력 -->
					<!-- 로그인 아이디와 관리자일 경우에도 수정/삭제 버튼 출력 -->
					<c:if test="${login.MId eq view.MId || login.MId eq 'admin'}">
						<tr>
							<th colspan="2"><input type="button" value="수정" id="modify" />
								<input type="button" value="삭제" id="delete" /></th>
						</tr>
					</c:if>

				</table>
			</div>
			<!-- End Contents -->

			<!-- ======= Footer ======= -->
			<%@ include file="../footer.jsp"%>
			<!-- End Footer -->
		</c:when>

		<c:when test="${login ne null}">
			<!-- Header -->
			<%@ include file="../header2.jsp"%>
			<!-- End Header -->

			<!-- Contents -->
			<div
				style="margin-left: 19%; line-height: 20px; padding-left: 122px; margin-top: 20px;">
				<table
					style="width: 600px; transform: translateX(132px); color: #fff;">

					<tr>
						<th>항목</th>
						<th>내용</th>
					</tr>

					<tr>
						<th>아이디</th>
						<td>${view.MId}</td>
					</tr>

					<tr>
						<th>이름</th>
						<td>${view.MName}</td>
					</tr>

					<tr>
						<th>생년월일</th>
						<td>${view.MBirth}</td>
					</tr>

					<tr>
						<th>성별</th>
						<td>${view.MGender}</td>
					</tr>

					<tr>
						<th>이메일</th>
						<td>${view.MEmail}</td>
					</tr>

					<tr>
						<th>연락처</th>
						<td>${view.MPhone}</td>
					</tr>

					<tr>
						<th>주소</th>
						<td>${view.MAddr}</td>
					</tr>

					<tr>
						<th>프로필사진</th>
						<td><img src="./resources/profile/${view.MProfileName}"
							width="200px" /></td>
					</tr>


					<!-- 로그인 아이디와 현재 페이지의 아이디가 동일해야 수정/삭제 버튼 출력 -->
					<!-- 로그인 아이디와 관리자일 경우에도 수정/삭제 버튼 출력 -->
					<c:if test="${login.MId eq view.MId || login.MId eq 'admin'}">
						<tr>
							<th colspan="2"><input type="button" value="수정" id="modify" />
								<input type="button" value="삭제" id="delete" /></th>
						</tr>
					</c:if>

				</table>
			</div>
			<!-- End Contents -->

			<!-- ======= Footer ======= -->
			<%@ include file="../footer.jsp"%>
			<!-- End Footer -->
		</c:when>

		<c:otherwise>
			<!-- Header -->
			<%@ include file="../header.jsp"%>
			<!-- End Header -->

			<!-- Contents -->
			<!-- End Contents -->

			<!-- ======= Footer ======= -->
			<%@ include file="../footer.jsp"%>
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
</script>
</html>