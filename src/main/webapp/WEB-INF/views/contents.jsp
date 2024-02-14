<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<section id="center" class="center_home">
	<div id="carouselExampleCaptions" class="carousel slide"
		data-bs-ride="carousel">
		<div class="carousel-indicators">
			<button type="button" data-bs-target="#carouselExampleCaptions"
				data-bs-slide-to="0" class="active" aria-label="Slide 1"></button>
			<button type="button" data-bs-target="#carouselExampleCaptions"
				data-bs-slide-to="1" aria-label="Slide 2" class=""
				aria-current="true"></button>
			<button type="button" data-bs-target="#carouselExampleCaptions"
				data-bs-slide-to="2" aria-label="Slide 3"></button>
			<button type="button" data-bs-target="#carouselExampleCaptions"
				data-bs-slide-to="3" aria-label="Slide 4"></button>
			<button type="button" data-bs-target="#carouselExampleCaptions"
				data-bs-slide-to="4" aria-label="Slide 5"></button>
		</div>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img th:src="@{img/더 마블스.jpg}" class="d-block w-100" alt="...">
				<div class="carousel-caption d-md-block">
					<h1 class="font_60">더 마블스</h1>

					<a class="bg_red p-2 pe-4 ps-4 ms-3 text-white d-inline-block"
						href="#" style="transform: translateX(-17px);">예매하기</a>

					<p class="mt-3">2023년, 캡틴 마블이 돌아온다! 함께, 더 높이! 더 멀리! 더 빨리! 역대급
						파장을 일으킬 마블의 NEW 팀업이 시작된다!</p>
					<p class="mb-2">
						<span class="col_red me-1 fw-bold">주연:</span> 브리 라슨, 테요나 래리스, 이만
						벨라니, 자웨 애쉬튼, 사무엘 L. 잭슨, 박서준
					</p>
					<p class="mb-2">
						<span class="col_red me-1 fw-bold">장르:</span> 액션,SF
					</p>
					<p>
						<span class="col_red me-1 fw-bold">상영 시간:</span> 1시간 45분
					</p>
					<h6 class="mt-4">
						<a class="button"
							href="https://www.youtube.com/watch?v=wS_qbDztgVY"><i
							class="fa fa-play-circle align-middle me-1"></i> 예고편</a>
					</h6>
				</div>
			</div>
			<div class="carousel-item">
				<img th:src="@{img/다크나이트.jpg}" class="d-block w-100" alt="...">
				<div class="carousel-caption d-md-block">
					<h1 class="font_60">다크나이트</h1>

					<a class="bg_red p-2 pe-4 ps-4 ms-3 text-white d-inline-block"
						href="#" style="transform: translateX(-17px);">예매하기</a>

					<p class="mt-3">이 도시에 정의는 죽었다! 배트맨을 죽여라! 마침내 최강의 적을 만나다! 밤의 기사,
						그 전설의 서막이 열린다!</p>
					<p class="mb-2">
						<span class="col_red me-1 fw-bold">주연:</span> 크리스찬 베일
					</p>
					<p class="mb-2">
						<span class="col_red me-1 fw-bold">장르:</span> 액션
					</p>
					<p>
						<span class="col_red me-1 fw-bold">상영 시간:</span> 2시간 32분
					</p>
					<h6 class="mt-4">
						<a class="button"
							href="https://www.youtube.com/watch?v=k6Bg9FROE4o"><i
							class="fa fa-play-circle align-middle me-1"></i> 예고편</a>
					</h6>
				</div>
			</div>
			<div class="carousel-item">
				<img th:src="@{img/서울의 봄.jpg}" class="d-block w-100" alt="...">
				<div class="carousel-caption d-md-block">
					<h1 class="font_60">서울의 봄</h1>

					<a class="bg_red p-2 pe-4 ps-4 ms-3 text-white d-inline-block"
						href="#" style="transform: translateX(-17px);">예매하기</a>

					<p class="mt-3">1979년 12월 12일, 수도 서울 군사반란 발생 그날, 대한민국의 운명이 바뀌었다
						목숨을 건 두 세력의 팽팽한 대립 오늘 밤, 대한민국 수도에서 가장 치열한 전쟁이 펼쳐진다!</p>
					<p class="mb-2">
						<span class="col_red me-1 fw-bold">주연:</span> 황정민, 정우성, 이성민, 박해준,
						김성균
					</p>
					<p class="mb-2">
						<span class="col_red me-1 fw-bold">장르:</span> 드라마
					</p>
					<p>
						<span class="col_red me-1 fw-bold">상영 시간:</span> 2시간 21분
					</p>
					<h6 class="mt-4 mb-0">
						<a class="button"
							href="https://www.youtube.com/watch?v=-AZ7cnwn2YI"><i
							class="fa fa-play-circle align-middle me-1"></i> 예고편</a>
					</h6>
				</div>
			</div>
			<div class="carousel-item">
				<img th:src="@{img/비투비타임.jpg}" class="d-block w-100" alt="...">
				<div class="carousel-caption d-md-block">
					<h1 class="font_60">비투비 타임 : 비투게더 더 무비</h1>

					<a class="bg_red p-2 pe-4 ps-4 ms-3 text-white d-inline-block"
						href="#" style="transform: translateX(-17px);">예매하기</a>

					<p class="mt-3">
						2022년 겨울, 우리의 멜로디가 올림픽 공원을 가득 채웠다. 4년 만에 완전체로 돌아온 비투비의 10주년 콘서트,
						함께 했던 과거, 함께하는 지금, 그리고 함께할 앞으로까지, 아주 특별한 시간여행을 선물해 줄
						<비투비 타임: 비투게더 더 무비>가 2023년 11월, 스크린에서 펼쳐진다! 
					</p>
					<p class="mb-2">
						<span class="col_red me-1 fw-bold">주연:</span> 비투비
					</p>
					<p class="mb-2">
						<span class="col_red me-1 fw-bold">장르:</span> 다큐멘터리/공연
					</p>
					<p>
						<span class="col_red me-1 fw-bold">상영 시간:</span> 1시간 42분
					</p>
					<h6 class="mt-4 mb-0">
						<a class="button"
							href="https://www.youtube.com/watch?v=_fz0DeoXVSc"><i
							class="fa fa-play-circle align-middle me-1"></i> 예고편</a>
					</h6>
				</div>
			</div>
			<div class="carousel-item">
				<img th:src="@{img/여귀교.jpg}" class="d-block w-100" alt="...">
				<div class="carousel-caption d-md-block">
					<h1 class="font_60">여귀교 : 저주를 부르는 게임</h1>

					<a class="bg_red p-2 pe-4 ps-4 ms-3 text-white d-inline-block"
						href="#" style="transform: translateX(-17px);">예매하기</a>

					<p class="mt-3">※경고※ 저주를 부르는 게임, 플레이 하시겠습니까? 퀘스트가 계속될수록, 현실과
						게임의 경계가 무너지고 예상치 못한 기묘한 일들이 벌어지는데...!</p>
					<p class="mb-2">
						<span class="col_red me-1 fw-bold">주연:</span> 시백우, 왕유훤, 임철희
					</p>
					<p class="mb-2">
						<span class="col_red me-1 fw-bold">장르:</span> 호러
					</p>
					<p>
						<span class="col_red me-1 fw-bold">상영 시간:</span> 1시간 42분
					</p>
					<h6 class="mt-4 mb-0">
						<a class="button"
							href="https://www.youtube.com/watch?v=_fz0DeoXVSc"><i
							class="fa fa-play-circle align-middle me-1"></i> 예고편</a>
					</h6>
				</div>
			</div>
		</div>
		<button class="carousel-control-prev" type="button"
			data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Previous</span>
		</button>
		<button class="carousel-control-next" type="button"
			data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Next</span>
		</button>
	</div>
</section>

<section id="trend" class="pt-4 pb-5">
	<div class="container">
		<div class="row trend_1">
			<div class="col-md-6 col-6">
				<div class="trend_1l">
					<h4 class="mb-0" style="color: #fff">
						<i class="fa fa-youtube-play align-middle col_red me-1"></i> 무비차트
					</h4>
				</div>
			</div>

		</div>
		<div class="row trend_2 mt-4">
			<div id="carouselExampleCaptions1" class="carousel slide"
				data-bs-ride="carousel">
				<div class="carousel-indicators">
					<button type="button" data-bs-target="#carouselExampleCaptions1"
						data-bs-slide-to="0" class="active" aria-label="Slide 1"></button>
					<button type="button" data-bs-target="#carouselExampleCaptions1"
						data-bs-slide-to="1" aria-label="Slide 2" class=""
						aria-current="true"></button>
				</div>
				<div class="carousel-inner">
					<div class="carousel-item active">
						<div class="trend_2i row">
							<div class="col-md-3 col-6">
								<div class="trend_2im clearfix position-relative">
									<div class="trend_2im1 clearfix">
										<div class="grid">
											<figure class="effect-jazz mb-0">
												<a href="#"><img src="./resources/img/서울의 봄 순위.jpg"
													class="w-100" alt="./resources/img25"></a>
											</figure>
										</div>
									</div>
									<div
										class="trend_2im2 clearfix text-center position-absolute w-100 top-0">
										<span class="fs-1"><a class="col_red"
											th:href="@{https://www.youtube.com/watch?v=-AZ7cnwn2YI"><i
												class="fa fa-youtube-play}"></i></a></span>
									</div>
								</div>
								<div class="trend_2ilast bg_grey p-3 clearfix">
									<h5>
										<a class="col_red" href="eInfo">서울의 봄</a>
									</h5>
									<p class="mb-2" style="font-size: 12px">1979년 12월 12일,
										대한민국의 운명이 바뀌었다 목숨을 건 두 세력의 팽팽한 대립 오늘 밤, 대한민국 수도에서 가장 치열한 전쟁이
										펼쳐진다!</p>
									<span class="col_red"> <i class="fa fa-star"></i> <i
										class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fa fa-star"></i> <i class="fa fa-star"></i>
									</span>
									<p class="mb-0">1 Views</p>
								</div>
							</div>
							<div class="col-md-3 col-6">
								<div class="trend_2im clearfix position-relative">
									<div class="trend_2im1 clearfix">
										<div class="grid">
											<figure class="effect-jazz mb-0">
												<a href="#"><img src="./resources/img/비투비타임 순위.jpg"
													class="w-100" alt="./resources/img25"></a>
											</figure>
										</div>
									</div>
									<div
										class="trend_2im2 clearfix text-center position-absolute w-100 top-0">
										<span class="fs-1"><a class="col_red"
											href="https://www.youtube.com/watch?v=_fz0DeoXVSc"><i
												class="fa fa-youtube-play"></i></a></span>
									</div>
								</div>
								<div class="trend_2ilast bg_grey p-3 clearfix">
									<h5>
										<a class="col_red" href="#">비투비 타임:비투게더 더 무비</a>
									</h5>
									<p class="mb-2" style="font-size: 12px">
										아주 특별한 시간여행을 선물해 줄
										<비투비 타임: 비투게더 더 무비>가 2023년 11월, 스크린에서 펼쳐진다! 
									</p>
									<span class="col_red"> <i class="fa fa-star"></i> <i
										class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fa fa-star"></i> <i class="fa fa-star"></i>
									</span>
									<p class="mb-0">1 Views</p>
								</div>
							</div>
							<div class="col-md-3 col-6">
								<div class="trend_2im clearfix position-relative">
									<div class="trend_2im1 clearfix">
										<div class="grid">
											<figure class="effect-jazz mb-0">
												<a href="#"><img src="./resources/img/헝거게임 순위.jpg"
													class="w-100" alt="./resources/img25"></a>
											</figure>
										</div>
									</div>
									<div
										class="trend_2im2 clearfix text-center position-absolute w-100 top-0">
										<span class="fs-1"><a class="col_red"
											href="https://www.youtube.com/watch?v=fxKTLR-L8o4"><i
												class="fa fa-youtube-play"></i></a></span>
									</div>
								</div>
								<div class="trend_2ilast bg_grey p-3 clearfix">
									<h5>
										<a class="col_red" href="#" style="font-size: 17px;">헝거게임:노래하는
											새와 뱀의 발라드</a>
									</h5>
									<p class="mb-2" style="font-size: 11px">몰락한 가문의 영광을 되찾기 위해
										‘루시 그레이’를 헝거게임에서 우승 시키려 수단과 방법을 가리지 않는데… 2023년 11월, 게임을 지배하라!</p>
									<span class="col_red"> <i class="fa fa-star"></i> <i
										class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fa fa-star"></i> <i class="fa fa-star"></i>
									</span>
									<p class="mb-0">1 Views</p>
								</div>
							</div>
							<div class="col-md-3 col-6">
								<div class="trend_2im clearfix position-relative">
									<div class="trend_2im1 clearfix">
										<div class="grid">
											<figure class="effect-jazz mb-0">
												<a href="#"><img src="./resources/img/더 마블스 순위.jpg"
													class="w-100" alt="./resources/img25"></a>
											</figure>
										</div>
									</div>
									<div
										class="trend_2im2 clearfix text-center position-absolute w-100 top-0">
										<span class="fs-1"><a class="col_red"
											href="https://www.youtube.com/watch?v=wS_qbDztgVY"><i
												class="fa fa-youtube-play"></i></a></span>
									</div>
								</div>
								<div class="trend_2ilast bg_grey p-3 clearfix">
									<h5>
										<a class="col_red" href="#">더 마블스</a>
									</h5>
									<p class="mb-2" style="font-size: 12px">2023년, 캡틴 마블이 돌아온다!
										함께, 더 높이! 더 멀리! 더 빨리! 역대급 파장을 일으킬 마블의 NEW 팀업이 시작된다!</p>
									<span class="col_red"> <i class="fa fa-star"></i> <i
										class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fa fa-star"></i> <i class="fa fa-star"></i>
									</span>
									<p class="mb-0">1 Views</p>
								</div>
							</div>
						</div>
					</div>
					<div class="carousel-item">
						<div class="trend_2i row">
							<div class="col-md-3 col-6">
								<div class="trend_2im clearfix position-relative">
									<div class="trend_2im1 clearfix">
										<div class="grid">
											<figure class="effect-jazz mb-0">
												<a href="#"><img src="./resources/img/다크나이트 순위.jpg"
													class="w-100" alt="./resources/img25"></a>
											</figure>
										</div>
									</div>
									<div
										class="trend_2im2 clearfix text-center position-absolute w-100 top-0">
										<span class="fs-1"><a class="col_red"
											href="https://www.youtube.com/watch?v=k6Bg9FROE4o"><i
												class="fa fa-youtube-play"></i></a></span>
									</div>
								</div>
								<div class="trend_2ilast bg_grey p-3 clearfix">
									<h5>
										<a class="col_red" href="#">다크나이트</a>
									</h5>
									<p class="mb-2" style="font-size: 12px">이 도시에 정의는 죽었다! 배트맨을
										죽여라! 마침내 최강의 적을 만나다! 밤의 기사, 그 전설의 서막이 열린다!</p>
									<span class="col_red"> <i class="fa fa-star"></i> <i
										class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fa fa-star"></i> <i class="fa fa-star"></i>
									</span>
									<p class="mb-0">1 Views</p>
								</div>
							</div>
							<div class="col-md-3 col-6">
								<div class="trend_2im clearfix position-relative">
									<div class="trend_2im1 clearfix">
										<div class="grid">
											<figure class="effect-jazz mb-0">
												<a href="#"><img src="./resources/img/프레디의피자가게 순위.jpg"
													class="w-100" alt="./resources/img25"></a>
											</figure>
										</div>
									</div>
									<div
										class="trend_2im2 clearfix text-center position-absolute w-100 top-0">
										<span class="fs-1"><a class="col_red"
											href="https://www.youtube.com/watch?v=RaGNLFbVfLw"><i
												class="fa fa-youtube-play"></i></a></span>
									</div>
								</div>
								<div class="trend_2ilast bg_grey p-3 clearfix">
									<h5>
										<a class="col_red" href="#">프레디의 피자가게</a>
									</h5>
									<p class="mb-2" style="font-size: 12px">“환상적이고 즐거움이 넘치는
										프레디의 피자가게에 오신 걸 환영합니다” 80년대에 아이들이 실종되고 폐업한지 오래된 프레디의 피자가게</p>
									<span class="col_red"> <i class="fa fa-star"></i> <i
										class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fa fa-star"></i> <i class="fa fa-star"></i>
									</span>
									<p class="mb-0">1 Views</p>
								</div>
							</div>
							<div class="col-md-3 col-6">
								<div class="trend_2im clearfix position-relative">
									<div class="trend_2im1 clearfix">
										<div class="grid">
											<figure class="effect-jazz mb-0">
												<a href="#"><img src="./resources/img/탑건 순위.jpg"
													class="w-100" alt="./resources/img25"></a>
											</figure>
										</div>
									</div>
									<div
										class="trend_2im2 clearfix text-center position-absolute w-100 top-0">
										<span class="fs-1"><a class="col_red"
											href="https://www.youtube.com/watch?v=Mrj9XACVJ8U"><i
												class="fa fa-youtube-play"></i></a></span>
									</div>
								</div>
								<div class="trend_2ilast bg_grey p-3 clearfix">
									<h5>
										<a class="col_red" href="#">탑건-매버릭</a>
									</h5>
									<p class="mb-2" style="font-size: 17px">한순간의 실수도 용납되지 않는 하늘
										위, 가장 압도적인 비행이 시작된다!</p>
									<span class="col_red"> <i class="fa fa-star"></i> <i
										class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fa fa-star"></i> <i class="fa fa-star"></i>
									</span>
									<p class="mb-0">1 Views</p>
								</div>
							</div>
							<div class="col-md-3 col-6">
								<div class="trend_2im clearfix position-relative">
									<div class="trend_2im1 clearfix">
										<div class="grid">
											<figure class="effect-jazz mb-0">
												<a href="#"><img src="./resources/img/만분의 일초 순위.jpg"
													class="w-100" alt="./resources/img25"></a>
											</figure>
										</div>
									</div>
									<div
										class="trend_2im2 clearfix text-center position-absolute w-100 top-0">
										<span class="fs-1"><a class="col_red"
											href="https://www.youtube.com/watch?v=XPrDmq_KyNE"><i
												class="fa fa-youtube-play"></i></a></span>
									</div>
								</div>
								<div class="trend_2ilast bg_grey p-3 clearfix">
									<h5>
										<a class="col_red" href="#">만분의 일초</a>
									</h5>
									<p class="mb-2" style="font-size: 12px">대한민국 검도 국가대표 최종 선발
										라인업에 오른 재우(주종혁)는 그의 삶을 송두리째 뒤흔든 황태수(문진승)에게 드디어 검을 겨눌 수 있게 된다.</p>
									<span class="col_red"> <i class="fa fa-star"></i> <i
										class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fa fa-star"></i> <i class="fa fa-star"></i>
									</span>
									<p class="mb-0">1 Views</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>

<section id="upcome" class="pt-4 pb-5">
	<div class="container">
		<div class="row trend_1">
			<div class="col-md-6 col-6">
				<div class="trend_1l">
					<h4 class="mb-0" style="color: #fff">
						<i class="fa fa-youtube-play align-middle col_red me-1"></i> 이 달의
						추천작
					</h4>
				</div>
			</div>
		</div>
		<div class="row trend_2 mt-4">
			<div id="carouselExampleCaptions2" class="carousel slide"
				data-bs-ride="carousel">
				<div class="carousel-inner">
					<div class="carousel-item active">
						<div class="trend_2i row">
							<div class="col-md-4">
								<div class="trend_2im clearfix position-relative">
									<div class="trend_2im1 clearfix">
										<div class="grid">
											<figure class="effect-jazz mb-0">
												<a href="#"><img src="./resources/img/서울의 봄 추천.jpg"
													class="w-100" alt="./resources/img25"></a>
											</figure>
										</div>
									</div>
									<div
										class="trend_2im2 clearfix text-center position-absolute w-100 top-0">
										<span class="fs-1"><a class="col_red"
											href="https://www.youtube.com/watch?v=k6Bg9FROE4o"><i
												class="fa fa-youtube-play"></i></a></span>
									</div>
								</div>
								<div class="trend_2ilast bg_grey p-3 clearfix">
									<h5>
										<a class="col_red" href="#">서울의 봄</a>
									</h5>
									<p class="mb-2" style="font-size: 13px">1979년 12월 12일,
										대한민국의 운명이 바뀌었다 목숨을 건 두 세력의 팽팽한 대립 오늘 밤, 대한민국 수도에서 가장 치열한 전쟁이
										펼쳐진다!</p>
									<span class="col_red"> <i class="fa fa-star"></i> <i
										class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fa fa-star"></i> <i class="fa fa-star"></i>
									</span>
									<p class="mb-0">1 Views</p>
								</div>
							</div>
							<div class="col-md-4">
								<div class="trend_2im clearfix position-relative">
									<div class="trend_2im1 clearfix">
										<div class="grid">
											<figure class="effect-jazz mb-0">
												<a href="#"><img src="./resources/img/비투비타임 추천.jpg"
													class="w-100" alt="./resources/img25"></a>
											</figure>
										</div>
									</div>
									<div
										class="trend_2im2 clearfix text-center position-absolute w-100 top-0">
										<span class="fs-1"><a class="col_red"
											href="https://www.youtube.com/watch?v=_fz0DeoXVSc"><i
												class="fa fa-youtube-play"></i></a></span>
									</div>
								</div>
								<div class="trend_2ilast bg_grey p-3 clearfix">
									<h5>
										<a class="col_red" href="#">비투비 타임 : 비투게더 더 무비</a>
									</h5>
									<p class="mb-2" style="font-size: 16px">
										아주 특별한 시간여행을 선물해 줄
										<비투비 타임: 비투게더 더 무비>가 2023년 11월, 스크린에서 펼쳐진다! 
									</p>
									<span class="col_red"> <i class="fa fa-star"></i> <i
										class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fa fa-star"></i> <i class="fa fa-star"></i>
									</span>
									<p class="mb-0">1 Views</p>
								</div>
							</div>
							<div class="col-md-4">
								<div class="trend_2im clearfix position-relative">
									<div class="trend_2im1 clearfix">
										<div class="grid">
											<figure class="effect-jazz mb-0">
												<a href="#"><img src="./resources/img/헝거게임 추천.jpg"
													class="w-100" alt="./resources/img25"></a>
											</figure>
										</div>
									</div>
									<div
										class="trend_2im2 clearfix text-center position-absolute w-100 top-0">
										<span class="fs-1"><a class="col_red"
											href="https://www.youtube.com/watch?v=fxKTLR-L8o4"><i
												class="fa fa-youtube-play"></i></a></span>
									</div>
								</div>
								<div class="trend_2ilast bg_grey p-3 clearfix">
									<h5>
										<a class="col_red" href="#">헝거게임 : 노래하는 새와 뱀의 발라드</a>
									</h5>
									<p class="mb-2" style="font-size: 14px">몰락한 가문의 영광을 되찾기 위해
										‘루시 그레이’를 헝거게임에서 우승 시키려 수단과 방법을 가리지 않는데… 2023년 11월, 게임을 지배하라!</p>
									<span class="col_red"> <i class="fa fa-star"></i> <i
										class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fa fa-star"></i> <i class="fa fa-star"></i>
									</span>
									<p class="mb-0">1 Views</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>

