<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예매목록</title>
<link rel="stylesheet" href="./resources/css/table.css" />

</head>
<body>
	<h2>현재페이지 : ${paging.page}</h2>

	<table>
		<caption>예매 목록</caption>
		<tr>
			<td align="right" colspan="5">
				<!-- 한 페이지에 출력되는 게시글수 --> <select id="limit">
					<option value="5">페이지</option>
					<option value="5">5개씩</option>
					<option value="10">10개씩</option>
					<option value="20">20개씩</option>
			</select>

			</td>
		</tr>
		<tr>
			<th>예매 번호</th>
			<th>예매 인원</th>
			<th>예매일</th>
			<th>예매 금액</th>
			<th>예매자 명<th>
			<th>스케줄 넘버</th>

		</tr>

		<c:forEach var="list" items="${ticketingList}">
			<tr>
				<td>${list.ticnum}</td>
				<td>${list.tictotalpeople}</td>
				<td>${list.ticpaytime}</td>
				<td>${list.ticpaymoney}</td>
				<td>${list.MId}</td>
				<td>${list.schnum}</td>

			</tr>
		</c:forEach>

		<tr>
			<!-- 페이징 처리 -->
			<th colspan="5">
				<!-- [이전] --> <c:if test="${paging.page <= 1}">[이전]</c:if> <c:if
					test="${paging.page > 1}">
					<a href="tcList?page=${paging.page-1}&limit=${paging.limit}">[이전]</a>
				</c:if> <!-- [페이지 번호] --> <c:forEach var="i" begin="${paging.startPage}"
					end="${paging.endPage}">
					<c:if test="${paging.page == i}">${i}</c:if>
					<c:if test="${paging.page != i}">
						<a href="tcList?page=${i}&limit=${paging.limit}">${i}</a>
					</c:if>
				</c:forEach> <!-- [다음] --> <c:if test="${paging.page >= paging.maxPage}">[다음]</c:if>
				<c:if test="${paging.page < paging.maxPage}">
					<a href="tcList?page=${paging.page+1}&limit=${paging.limit}">[다음]</a>
				</c:if>

			</th>
		</tr>
	</table>
</body>


<script src="https://code.jquery.com/jquery-3.7.1.js"
	integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4="
	crossorigin="anonymous"></script>
<script>
	$('#limit').change(()=>{
		let limit = $('#limit').val();
		// console.log('limit : ' + limit);
		
		location.href = "tcList?limit=" + limit;
	});

</script>


</html>
