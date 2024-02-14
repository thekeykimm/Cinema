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
		style="margin-left: 28%; line-height: 20px; padding-left: 122px; margin-top: 20px;">
		<table
			style="width: 600px; transform: translateX(-30px); color: #fff;">
			<tr>
				<td align="right" colspan="5">
					<!-- 한 페이지에 출력되는 게시글수 --> <select id="limit">
						<option value="5">상영관 수</option>
						<option value="5">5개씩</option>
						<option value="10">10개씩</option>
						<option value="20">20개씩</option>
				</select>

				</td>
			</tr>
			<tr>
				<th>영화관 이름</th>
				<th>상영관 이름</th>
				<th>상영관 좌석 수</th>

			</tr>

			<c:forEach var="list" items="${screenList}">
				<tr>
					<td>${list.cinName}</td>
					<td style="padding-left: 43px;">
						<%-- <a href="cView?CinName=${list.cinName}"> --%>${list.scrName}<!-- </a> -->
					</td>
					<td style="padding-left: 48px;">${list.scrCnt}</td>
				</tr>
			</c:forEach>

			<tr>
				<!-- 페이징 처리 -->
				<th colspan="5" style="padding-left: 196px;">
					<!-- [이전] --> <c:if test="${paging.page <= 1}">[이전]</c:if> <c:if
						test="${paging.page > 1}">
						<a href="sList?page=${paging.page-1}&limit=${paging.limit}">[이전]</a>
					</c:if> <!-- [페이지 번호] --> <c:forEach var="i" begin="${paging.startPage}"
						end="${paging.endPage}">
						<c:if test="${paging.page == i}">${i}</c:if>
						<c:if test="${paging.page != i}">
							<a href="sList?page=${i}&limit=${paging.limit}">${i}</a>
						</c:if>
					</c:forEach> <!-- [다음] --> <c:if test="${paging.page >= paging.maxPage}">[다음]</c:if>
					<c:if test="${paging.page < paging.maxPage}">
						<a href="sList?page=${paging.page+1}&limit=${paging.limit}">[다음]</a>
					</c:if>

				</th>
			</tr>
		</table>
	</div>

	<!-- ======= Footer ======= -->
	<%@ include file="../footer.jsp"%>
	<!-- End Footer -->
</body>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script>
$('#limit').change(()=>{
	let limit = $('#limit').val();
	// console.log('limit : ' + limit);
	
	location.href = "sList?limit=" + limit;
});
</script>
</html>