<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>영화관 목록</title>
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

	<c:choose>
		<c:when test="${login.MId eq 'admin'}">
			<!-- ======= Header ======= -->
				<%@ include file="../header3.jsp"%>
				<!-- End Header -->
				<div
					style="margin-left: 12%; line-height: 20px; padding-left: 122px; margin-top: 20px;">
					<table
						style="width: 800px; transform: translateX(152px); color: #fff;">
						<tr>
							<td align="right" colspan="5">
								<!-- 한 페이지에 출력되는 게시글수 --> <select id="limit">
									<option value="5">영화관수</option>
									<option value="5">5개씩</option>
									<option value="10">10개씩</option>
									<option value="20">20개씩</option>
							</select>

							</td>
						</tr>
						<tr>
							<th style="width: 225px;">영화관 이름</th>
							<th>영화관 주소</th>

						</tr>

						<c:forEach var="list" items="${cinemaList}">
							<tr>
								<td>${list.cinName}</td>
								<td>${list.cinAddr}</td>
							</tr>
						</c:forEach>

						<tr>
							<!-- 페이징 처리 -->
							<th colspan="5" style="padding-left: 250px;">
								<!-- [이전] --> <c:if test="${paging.page <= 1}">[이전]</c:if> <c:if
									test="${paging.page > 1}">
									<a href="cList?page=${paging.page-1}&limit=${paging.limit}">[이전]</a>
								</c:if> <!-- [페이지 번호] --> <c:forEach var="i"
									begin="${paging.startPage}" end="${paging.endPage}">
									<c:if test="${paging.page == i}">${i}</c:if>
									<c:if test="${paging.page != i}">
										<a href="cList?page=${i}&limit=${paging.limit}">${i}</a>
									</c:if>
								</c:forEach> <!-- [다음] --> <c:if test="${paging.page >= paging.maxPage}">[다음]</c:if>
								<c:if test="${paging.page < paging.maxPage}">
									<a href="cList?page=${paging.page+1}&limit=${paging.limit}">[다음]</a>
								</c:if>

							</th>
						</tr>
					</table>
				</div>
				<!-- ======= Footer ======= -->
				<%@ include file="../footer.jsp"%>
				<!-- End Footer -->
		</c:when>
			<c:when test="${login ne null}">
				<!-- ======= Header ======= -->
				<%@ include file="../header2.jsp"%>
				<!-- End Header -->
				<div
					style="margin-left: 19%; line-height: 20px; padding-left: 122px; margin-top: 20px;">
					<table
						style="width: 600px; transform: translateX(152px); color: #fff;">
						<tr>
							<td align="right" colspan="5">
								<!-- 한 페이지에 출력되는 게시글수 --> <select id="limit">
									<option value="5">영화관수</option>
									<option value="5">5개씩</option>
									<option value="10">10개씩</option>
									<option value="20">20개씩</option>
							</select>

							</td>
						</tr>
						<tr>
							<th>영화관 이름</th>
							<th>영화관 주소</th>

						</tr>

						<c:forEach var="list" items="${cinemaList}">
							<tr>
								<td>${list.cinName}</td>
								<td>${list.cinAddr}</td>
							</tr>
						</c:forEach>

						<tr>
							<!-- 페이징 처리 -->
							<th colspan="5" style="padding-left: 147px;">
								<!-- [이전] --> <c:if test="${paging.page <= 1}">[이전]</c:if> <c:if
									test="${paging.page > 1}">
									<a href="cList?page=${paging.page-1}&limit=${paging.limit}">[이전]</a>
								</c:if> <!-- [페이지 번호] --> <c:forEach var="i"
									begin="${paging.startPage}" end="${paging.endPage}">
									<c:if test="${paging.page == i}">${i}</c:if>
									<c:if test="${paging.page != i}">
										<a href="cList?page=${i}&limit=${paging.limit}">${i}</a>
									</c:if>
								</c:forEach> <!-- [다음] --> <c:if test="${paging.page >= paging.maxPage}">[다음]</c:if>
								<c:if test="${paging.page < paging.maxPage}">
									<a href="cList?page=${paging.page+1}&limit=${paging.limit}">[다음]</a>
								</c:if>

							</th>
						</tr>
					</table>
				</div>
				<!-- ======= Footer ======= -->
				<%@ include file="../footer.jsp"%>
				<!-- End Footer -->
			</c:when>

			<c:otherwise>
				<!-- ======= Header ======= -->
				<%@ include file="../header.jsp"%>
				<!-- End Header -->
				<div
					style="margin-left: 19%; line-height: 20px; padding-left: 122px; margin-top: 20px;">
					<table
						style="width: 600px; transform: translateX(152px); color: #fff;">
						<tr>
							<td align="right" colspan="5">
								<!-- 한 페이지에 출력되는 게시글수 --> <select id="limit">
									<option value="5">영화관수</option>
									<option value="5">5개씩</option>
									<option value="10">10개씩</option>
									<option value="20">20개씩</option>
							</select>

							</td>
						</tr>
						<tr>
							<th>영화관 이름</th>
							<th>영화관 주소</th>

						</tr>

						<c:forEach var="list" items="${cinemaList}">
							<tr>
								<td>${list.cinName}</td>
								<td>${list.cinAddr}</td>
							</tr>
						</c:forEach>

						<tr>
							<!-- 페이징 처리 -->
							<th colspan="5" style="padding-left: 147px;">
								<!-- [이전] --> <c:if test="${paging.page <= 1}">[이전]</c:if> <c:if
									test="${paging.page > 1}">
									<a href="cList?page=${paging.page-1}&limit=${paging.limit}">[이전]</a>
								</c:if> <!-- [페이지 번호] --> <c:forEach var="i"
									begin="${paging.startPage}" end="${paging.endPage}">
									<c:if test="${paging.page == i}">${i}</c:if>
									<c:if test="${paging.page != i}">
										<a href="cList?page=${i}&limit=${paging.limit}">${i}</a>
									</c:if>
								</c:forEach> <!-- [다음] --> <c:if test="${paging.page >= paging.maxPage}">[다음]</c:if>
								<c:if test="${paging.page < paging.maxPage}">
									<a href="cList?page=${paging.page+1}&limit=${paging.limit}">[다음]</a>
								</c:if>

							</th>
						</tr>
					</table>
				</div>
				<!-- ======= Footer ======= -->
				<%@ include file="../footer.jsp"%>
				<!-- End Footer -->
			</c:otherwise>
	</c:choose>


</body>


<script src="https://code.jquery.com/jquery-3.7.1.js"
	integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4="
	crossorigin="anonymous"></script>
<script>
	$('#limit').change(()=>{
		let limit = $('#limit').val();
		// console.log('limit : ' + limit);
		
		location.href = "cList?limit=" + limit;
	});

</script>


</html>
