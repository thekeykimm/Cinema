<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

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

	<!-- Header -->
	<%@ include file="../header.jsp"%>
	<!-- End Header -->

	

	<section id="blog" class="pt-4 pb-4 bg_grey">
		<div class="container-xl">
			<div class="row blog_1">
				<div class="col-md-8">
					<div class="blog_1l">
						<div class="blog_1l1">
							<div class="popular_2i1lm position-relative clearfix">
								<div class="popular_2i1lm1 clearfix">
									<div class="grid">
										<figure class="effect-jazz mb-0">
											<a href="#"><iframe width="850" height="500"
													src="https://www.youtube.com/embed/-AZ7cnwn2YI?si=mNP12zSnujIl_Phm?rel=0&vq=hd1080&controls=0"
													title="YouTube video player" frameborder="0"
													allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
													allowfullscreen></iframe></a>
										</figure>
									</div>
								</div>

							</div>
							<div class="blog_1l1i mt-3">

								<h2 class="mt-3">
									<a class="col_red" href="#">서울의 봄 </a>
								</h2>
								<h6 class="fw-normal mt-3 col_light">
									<span><i class="fa fa-clock-o me-1 align-middle col_red"></i>
										14 December 2021</span> <span class="ms-3"><i
										class="fa fa-user me-1 align-middle col_red"></i> Admin</span> <span
										class="ms-3"><i
										class="fa fa-comment me-1 align-middle col_red"></i> Comment</span>
								</h6>
								<p class="mt-3">1979년 12월 12일, 수도 서울 군사반란 발생 그날, 대한민국의 운명이
									바뀌었다 대한민국을 뒤흔든 10월 26일 이후, 서울에 새로운 바람이 불어온 것도 잠시 12월 12일, 보안사령관
									전두광이 반란을 일으키고 군 내 사조직을 총동원하여 최전선의 전방부대까지 서울로 불러들인다. 권력에 눈이 먼
									전두광의 반란군과 이에 맞선 수도경비사령관 이태신을 비롯한 진압군 사이, 일촉즉발의 9시간이 흘러가는데… 목숨을
									건 두 세력의 팽팽한 대립 오늘 밤, 대한민국 수도에서 가장 치열한 전쟁이 펼쳐진다!</p>
							</div>
						</div>
					</div>
				</div>
			</div>
	</section>

	<!-- ======= Footer ======= -->
	<%@ include file="../footer.jsp"%>
	<!-- End Footer -->

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

</body>

</html>