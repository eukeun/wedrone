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

		<!-- 들어갈 내용 -->
</body>
</html>