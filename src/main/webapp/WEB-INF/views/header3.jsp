<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<!-- header -->
	<section id="top" style="background-color: #fff;">
		<div class="container">
			<div class="row top_1">
				<div class="col-md-3">
					<div class="top_1l pt-1">
						<a class="text-white" href="./"> <strong
							style="font-size: 28px; color: black;"> <img
								src="./resources/img/snail.png"
								style="width: 50px; height: 50px;">달팽이 상영관
						</strong>
						</a>
					</div>
				</div>
				<div class="col-md-5">
					<div class="top_1m">
						<div class="input-group">
							<input type="text" class="form-control bg-black"
								placeholder="영화 검색..."> <span class="input-group-btn">
								<button class="btn btn text-white bg_red rounded-0 border-0"
									type="button">Search</button>
							</span>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="top_1r text-end" >
						<ul style="font-size:20px;">
							<li style="display:inline-block; transform:translateY(15px);"><a href="mLogout" style="color:black; background-color:#fff;"><strong>로그아웃</strong> </a></li>

							<li style="display:inline-block; transform:translateY(15px);"><a href="mView?mId=${login.MId}" style="color:black; background-color:#fff;"><strong>마이페이지</strong> </a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section id="header">
		<nav class="navbar navbar-expand-md navbar-light" id="navbar_sticky">
			<div class="container">
				<a class="navbar-brand text-white fw-bold" href="./"><img
					src="./resources/img/snail.png" style="width: 50px; height: 50px;">
					달팽이 상영관</a>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav mb-0">
						<li class="nav-item"><a class="nav-link" href="WriteForm">영화등록</a></li>
						<li class="nav-item"><a class="nav-link" href="RegistForm">영화관등록</a></li>
						<li class="nav-item"><a class="nav-link" href="sRegistForm">상영관등록</a></li>
						<li class="nav-item"><a class="nav-link" href="ScForm">스케줄등록</a></li>
						<li class="nav-item"><a class="nav-link" href="mList">회원목록</a></li>
					</ul>
				</div>
			</div>
		</nav>
	</section>
			<!-- end header -->