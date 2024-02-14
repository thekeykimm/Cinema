<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>달팽이 상영관</title>
<link href="./resources/css/bootstrap.min.css" rel="stylesheet">
<link href="./resources/css/font-awesome.min.css" rel="stylesheet">
<link href="./resources/css/global.css" rel="stylesheet">
<link href="./resources/css/index.css" rel="stylesheet">
<link href="./resources/css/table.css" rel="stylesheet">
<link href="./resources/css/ticketing.css" rel="stylesheet">

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
	<div style="margin-left: 17%; line-height: 20px; padding-left: 122px; margin-top: 20px;">
		<form action="tSeat" method="post">
			<fieldset style="width: 800px; transform: translateX(152px); color: #fff;">
				<legend style="font-weight:bold; font-size:40px; margin-left:120px;">좌석 선택</legend><br><br>
				인원 수 : &emsp;1 <input type="radio" name="normal" onclick="showValue(1)"/>&emsp;
				2 <input type="radio" name="normal" onclick="showValue(2)"/>&emsp;
				3 <input type="radio" name="normal" onclick="showValue(3)"/>&emsp;
				4 <input type="radio" name="normal" onclick="showValue(4)"/>&emsp;
				5 <input type="radio" name="normal" onclick="showValue(5)"/>&emsp;
				6 <input type="radio" name="normal" onclick="showValue(6)"/>&emsp;
				7 <input type="radio" name="normal" onclick="showValue(7)"/>&emsp;
				8 <input type="radio" name="normal" onclick="showValue(8)"/>&emsp;
				<br><br>
				<input type="submit" value="예매" style="margin-left:190px;">
			</fieldset>
				<input type="hidden" name="SchNum" value="${SchNum}"/>
				<input type="hidden" name="mId" value="${login.MId}"/>
			<div id="result" style="color:#fff; font-size:40px;" ></div>
			<div id="result1" style="color:#fff; font-size:40px;" ></div>
		</form>
	</div>
	<!-- ======= Footer ======= -->
	<%@ include file="../footer.jsp"%>
	<!-- End Footer -->
</body>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script>
function showValue(TicTotalPeople) {
		let output = "";
	
		let TicPayMoney = TicTotalPeople * 12000;

		output += "<input type='hidden' name='TicTotalPeople' value='"+TicTotalPeople+"'/>";
		output += "<input type='hidden' name='TicPayMoney' value='"+TicPayMoney+"'/>";
		
		
		
		document.getElementById('result').innerText = '금액: ' + TicPayMoney + "원";
		document.getElementById('result1').innerHTML = output;
	}
</script>
</html>