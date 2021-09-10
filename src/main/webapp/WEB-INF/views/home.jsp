<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!doctype html>
<html lang="ko">
<head>
<meta charset="utf-8">
<!-- 부트스트랩 메타태그 -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 부트스트랩 파일 -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj"
	crossorigin="anonymous">
	
</script>
<link href="${path}/resources/css/bootstrap.css?ver=8" rel="stylesheet">
<!-- css cdn 폰트 -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap"
	rel="stylesheet">
<!-- 아이콘 -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@5.15.3/css/fontawesome.min.css"
	integrity="sha384-wESLQ85D6gbsF459vf1CiZ2+rr+CsxRY0RpiF1tLlQpDnAgg6rwdsUF1+Ics2bni"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">

<link href="/Project2/assets/css/main.css?ver=95" rel="stylesheet">
<style>
/* 푸터 위의 내용 감싸서 내용 없어도 푸터 하단으로 가도록 */
.wrap {
	text-align: center;
	display: flex;
	flex-direction: column;
	height: 100%
}

footer {
	width: 100%;
	height: 80px;
	background-color: #3c3c3c;;
	margin-top: auto
}
</style>
</head>
<title>드론</title>
<body>
	<div class="wrap">
		<!-- 네비게이션바 -->
		<nav class="navbar navbar-expand-lg navbar-dark"
			style="background-color: #3c3c3c;">
			<div class="container-fluid">
				<a
					class="fs-3 text-center navbar-brand fw-bold text-color: #003399;"
					href="${path}/"> <img src="resources/img/LOGO.png"
					class="rounded float-end rounded mx-auto d-block mx-2" alt=""
					width="50" height="50">WeDron
				</a>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav me-auto mb-2 mb-lg-0">
						<li class="nav-item"><a class="nav-link active text-center"
							aria-current="page" href="${path}/map">Map</a></li>
						<li class="nav-item"><a class="nav-link active text-center "
							href="${path}/calendar">Calendar</a></li>
						<a class="nav-link active" href="${path}/news">News</a>
						</li>
						<li class="nav-item"><a class="nav-link active text-center "
							href="${path}/notice">Notice</a></li>
						<li class="nav-item"><a class="nav-link active text-center "
							href="${path}/board">Board</a></li>


						<li class="nav-item"></li>
					</ul>
					<div class="d-flex" id="alarmalert"
						onclick="location.href='/webapp/WEB-INF/views/alarm.jsp'">
						<i id="bell" class="bi bi-bell-fill"
							style="font-size: 1.8rem; color: white"></i>23<span
							id="cartalertnum"
							class="border border-dark position-absolute top-0 mx-3 badge bg-white text-white rounded-pill mt-2"></span>
					</div>
					<div class="d-flex">
						<button class="btn btn-sm btn-outline-light mx-1 me-1">로그인</button>
						<button class="btn btn-sm btn-outline-light mx-1" type="submit">회원가입</button>
						<button class="btn btn-sm btn-outline-light  mx-1" type="submit">마이페이지</button>
						<button class="btn btn-sm btn-outline-light mx-1 " type="button"
							data-bs-toggle="offcanvas" data-bs-target="#offcanvasRight"
							aria-controls="offcanvasRight">기타</button>
					</div>
				</div>
		</nav>


		<!--메인 슬라이드바  -->
		<div id="carouselExampleCaptions" class="carousel slide"
			data-bs-ride="carousel">
			<div class="carousel-indicators">
				<button type="button" data-bs-target="#carouselExampleCaptions"
					data-bs-slide-to="0" class="active" aria-current="true"
					aria-label="Slide 1"></button>
				<button type="button" data-bs-target="#carouselExampleCaptions"
					data-bs-slide-to="1" aria-label="Slide 2"></button>
				<button type="button" data-bs-target="#carouselExampleCaptions"
					data-bs-slide-to="2" aria-label="Slide 3"></button>
			</div>
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img src="resources/img/c2.jpg" height="550" class="d-block w-100"
						alt="...">
					<div class="carousel-caption d-none d-md-block">
						<h3>드론과 관련된 정보를 공유하세요</h3>
						<hr />
						<p>우리는 드론을 사랑하는 사람들입니다. 드론에 관심있는 사람이라면 누구든지 환영합니다</p>
					</div>
				</div>
				<div class="carousel-item">
					<img src="resources/img/c1.jpg" height="550" class="d-block w-100"
						alt="...">
					<div class="carousel-caption d-none d-md-block">
						<h3>비행정보를 공유하세요</h3>
						<hr />
						<p>즐거웠던 드론 비행에 대해 후기를 공유해보세요. 모두에게 즐거운 일이 될 것입니다</p>
					</div>
				</div>
				<div class="carousel-item">
					<img src="resources/img/c3.jpg" height="550" class="d-block w-100"
						alt="...">
					<div class="carousel-caption d-none d-md-block">
						<h3>실시간 기상정보를 확인하세요</h3>
						<hr />
						<p>드론에 있어 안전만큼 중요한 것은 없습니다. 자기장 지수와 풍속, 미세먼지 지수 등을 미리 확인하세요</p>
					</div>
				</div>
			</div>
			<button class="carousel-control-prev" type="button"
				data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Previous</span>
			</button>
			<button class="carousel-control-next" type="button"
				data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Next</span>
			</button>
		</div>

		<!-- 퀵메뉴 -->
		<div class="position-relative">
			<div id="quick" class="position-fixed bottom-0 end-0">
				<a href="/Project2/confusion.jsp"
					class="rounded-pill btn btn-success fw-bold"> <i
					class="bi bi-info-circle"></i> 실시간 정보
				</a>
			</div>
		</div>


		<!-- 오른쪽 슬라이드바 -->
		<div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasRight"
			data-bs-backdrop="false">
			<div class="offcanvas-header">
				<h3 id="offcanvasRightLabel">상세정보</h3>
				<button type="button" class="btn-close text-reset"
					data-bs-dismiss="offcanvas" aria-label="Close"></button>
			</div>
			<div class="offcanvas-body">
				<script type="text/javascript"
					src="//dapi.kakao.com/v2/maps/sdk.js?appkey=96f67dd6c088728e30743d7db32a6789"></script>
				<div id="map" style="width: 100%; height: 350px;"></div>


				<script>
					var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
					mapOption = {
						center : new kakao.maps.LatLng(37.47795229044443,
								126.87895054846138), // 지도의 중심좌표
						level : 3
					// 지도의 확대 레벨
					};

					// 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
					var map = new kakao.maps.Map(mapContainer, mapOption);
				</script>
				<body>
				</body>
			</div>
		</div>
</body>



<!-- 하단 푸터 -->
</div>
<footer class="py-3 bg-dark bg-gradient">
	<p class="m-0 text-center text-white">구디아카데미 프로젝트 1조</p>
	<p class="m-0 text-center text-white">Copyright &copy; Website 2021</p>
</footer>

</html>