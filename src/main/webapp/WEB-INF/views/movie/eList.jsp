<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>영화 목록</title>
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
		<c:when test="${login ne null}">

			<!-- Header -->
			<%@ include file="../header2.jsp"%>
			<!-- End Header -->

			<div
				style="margin-left: 19%; line-height: 20px; padding-left: 122px; margin-top: 20px;">



				<table
					style="width: 800px; transform: translateX(-30px); color: #fff;">
					<tr>
						<td align="right" colspan="5">
							<!-- 한 페이지에 출력되는 게시글수 --> <select id="limit">
								<option value="5">게시글수</option>
								<option value="5">5개씩</option>
								<option value="10">10개씩</option>
								<option value="20">20개씩</option>
						</select>

							<form action="eSearch" method="GET">
								<!-- 검색 카테고리 -->
								<select name="category">
									<option value="movTitle">제목</option>
									<option value="movDirector">감독</option>

								</select>

								<!-- 검색어 -->
								<input type="text" name="keyword" />

								<!-- 검색버튼 -->
								<input type="submit" value="검색" />

							</form>
						</td>
					</tr>
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>개봉일</th>
						<th>등급</th>
					</tr>

					<c:forEach var="list" items="${movieList}">
						<tr>
							<td>${list.movNum}</td>
							<td><a href="eView?movNum=${list.movNum}">${list.movTitle}</a></td>
							<td>${list.movOpenDate}</td>
							<td>${list.movGrade}</td>
						</tr>
					</c:forEach>

					<tr>
						<!-- 페이징 처리 -->
						<th colspan="5" style="padding-left: 290px;">
							<!-- [이전] --> <c:if test="${paging.page <= 1}">[이전]</c:if> <c:if
								test="${paging.page > 1}">
								<a href="eList?page=${paging.page-1}&limit=${paging.limit}">[이전]</a>
							</c:if> <!-- [페이지 번호] --> <c:forEach var="i" begin="${paging.startPage}"
								end="${paging.endPage}">
								<c:if test="${paging.page == i}">${i}</c:if>
								<c:if test="${paging.page != i}">
									<a href="eList?page=${i}&limit=${paging.limit}">${i}</a>
								</c:if>
							</c:forEach> <!-- [다음] --> <c:if test="${paging.page >= paging.maxPage}">[다음]</c:if>
							<c:if test="${paging.page < paging.maxPage}">
								<a href="eList?page=${paging.page+1}&limit=${paging.limit}">[다음]</a>
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
			<!-- Header -->
			<%@ include file="../header.jsp"%>
			<!-- End Header -->
			<div
				style="margin-left: 19%; line-height: 20px; padding-left: 122px; margin-top: 20px;">

				<table
					style="width: 800px; transform: translateX(-30px); color: #fff;">
					<tr>
						<td align="right" colspan="5">
							<!-- 한 페이지에 출력되는 게시글수 --> <select id="limit">
								<option value="5">게시글수</option>
								<option value="5">5개씩</option>
								<option value="10">10개씩</option>
								<option value="20">20개씩</option>
						</select>

							<form action="eSearch" method="GET">
								<!-- 검색 카테고리 -->
								<select name="category">
									<option value="movTitle">제목</option>
									<option value="movDirector">감독</option>

								</select>

								<!-- 검색어 -->
								<input type="text" name="keyword" />

								<!-- 검색버튼 -->
								<input type="submit" value="검색" />

							</form>
						</td>
					</tr>
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>개봉일</th>
						<th>등급</th>


					</tr>

					<c:forEach var="list" items="${movieList}">
						<tr>
							<td>${list.movNum}</td>
							<td><a href="eView?movNum=${list.movNum}">${list.movTitle}</a></td>
							<td>${list.movOpenDate}</td>
							<td>${list.movGrade}</td>


						</tr>
					</c:forEach>

					<tr>
						<!-- 페이징 처리 -->
						<th colspan="5" style="padding-left: 290px;">
							<!-- [이전] --> <c:if test="${paging.page <= 1}">[이전]</c:if> <c:if
								test="${paging.page > 1}">
								<a href="eList?page=${paging.page-1}&limit=${paging.limit}">[이전]</a>
							</c:if> <!-- [페이지 번호] --> <c:forEach var="i" begin="${paging.startPage}"
								end="${paging.endPage}">
								<c:if test="${paging.page == i}">${i}</c:if>
								<c:if test="${paging.page != i}">
									<a href="eList?page=${i}&limit=${paging.limit}">${i}</a>
								</c:if>
							</c:forEach> <!-- [다음] --> <c:if test="${paging.page >= paging.maxPage}">[다음]</c:if>
							<c:if test="${paging.page < paging.maxPage}">
								<a href="eList?page=${paging.page+1}&limit=${paging.limit}">[다음]</a>
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
		
		location.href = "eList?limit=" + limit;
	});

</script>


</html>

