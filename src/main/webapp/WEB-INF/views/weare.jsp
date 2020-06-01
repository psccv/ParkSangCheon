<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>

<!DOCTYPE HTML>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no">
<title>WE ARE</title>
<link rel="shortcut icon" href="/images/favicon/favicon.ico">
<link rel="apple-touch-icon-precomposed"
	href="/images/favicon/home-touch-icon.png">
<link rel="stylesheet" type="text/css" href="/resources/css/reset.css">
<link rel="stylesheet" type="text/css" href="/resources/css/common.css">

<style>

/* WE ARE 페이지 영역 CSS */
.display-section {
	margin-top: 30px;
	text-align: center;
}

.display-section .sec-tit {
	margin-bottom: 30px;
}

.display-section .desc {
	font-family: "굴림";
	color: #616161;
	line-height: 1.9;
}
/* WE ARE 내용 영역 CSS */
.promotion-section {
	margin-top: 68px;
}

.promotion-section .promo-list li {
	margin-top: 52px;
	text-align: center;
}

.promotion-section .promo-list li:first-child {
	margin-top: 0;
}

.promotion-section .promo-list li img {
	height: 202px;
}

.promotion-section .promo-list li h3 {
	margin: 29px 0 20px 0;
	color: #3651b5;
	font-weight: nomal;
}

.promotion-section .promo-list li p {
	font-size: 14px;
	font-family: "굴림"; "
	color: #616161;
	line-height: 1.5;
}

/* 태블릿용 CSS  */
@media all and (min-width:768px) {
	.display-section {
		margin-top: 95px;
	}
	/* 태블릿 WE ARE 내용 영역 CSS */
	.promotion-section {
		margin-top: 110px;
	}
	.promotion-section .promo-list li {
		float: left;
		width: 23.046875%;
		/* 177px ÷ 768px */
		margin-left: 2.604166666666667%;
		/* 20px ÷ 768px */
		margin-top: 0;
	}
	/*
	[가변그리드공식] = 결과는 % 단위 입니다.
	[가변element값 %] = (가변크기로 만들 박스의 가로 너비 ÷ 가변그키로 만들 박스를 감싸고 있는 박스 가로 너비) × 100
	[가변마진값 %] = (가변 마진을 적용할 마진값 ÷ 적용할 박스를 감싸고 있는 박스의 가로 너비) × 100
	[가변패딩값 %] = (가변 패딩을 적용할 패딩값 ÷ 적용할 박스를 감싸고 있는 박스의 가로 너비) × 100
	*/
	.promotion-section .promo-list li:first-child {
		margin-left: 0;
	}
	.promotion-section .promo-list li img {
		height: 102px;
	}
}

/* PC용 CSS */
@media all and (min-width:1132px) {
	/* PC WE ARE 영역 CSS */
	.display-section {
		text-align: left;
	}
	.display-section .sec-tit {
		float: left;
		margin-bottom: 0;
	}
	.display-section .desc {
		position: relative;
		float: right;
		padding-left: 20px;
		font-family: 'PT Serif';
		color: #616161;
		line-height: 1.9;
	}
	.display-section .desc:before {
		display: block;
		position: absolute;
		top: 0;
		left: 0;
		width: 2px;
		height: 44px;
		background: black;
		content: "";
	}
	/* PC WE ARE 내용 영역 CSS */
	.promotion-section .promo-list li {
		width: 23.67491166077739%;
		/* 268px ÷ 1132px*/
		margin-left: 1.76678445229682%;
		/* 20px ÷ 1132px*/
	}
}

</style>

<script src="/resources/js/jquery.min.js"></script>
<script src="/resources/js/common.js"></script>

</head>

<body>
	<!--더미 데이터:css작업전내용-->
	<div id="wrap">
		<header class="header cfixed">
			<h1 class="logo">
				<a href="#">LOGO</a>
			</h1>
			<nav>
				<ul class="gnb">
					<li><a href="/">HOME</a></li>
					<li><a href="/weare">WE ARE</a></li>
					<li><a href="/work">WORK</a></li>
					<li><a href="/blog">BLOG</a></li>
					<li><a href="/contactus">CONTACT US</a></li>
				</ul>
			</nav>
			<span class="menu-toggle-btn"> <span></span> <span></span> <span></span>
			</span>
		</header>

		
		<section class="display-section">
			<div class="container">
				<h2 class="sec-tit">WE ARE</h2>
				<p class="desc">
					휴먼 교육센터 디지털 컨버전스 과정 입니다. <br>그리고, 지금은 화면 설계 시간 입니다.
				</p>
			</div>
		</section>
		<section class="promotion-section">
			<div class="container">
				<ul class="promo-list">
					<li><a href="#""returnfalse"> <img
							src="resources/images/ice.jpg" alt="아이스 이미지">
							<h3>HOME</h3>
							<p>휴먼 교육센터 디지털 컨버전스 과정 입니다.</p>
					</a></li>
					<li><a href="#""returnfalse"> <img
							src="resources/images/ice.jpg" alt="아이스 이미지">
							<h3>WE ARE</h3>
							<p>휴먼 교육센터 디지털 컨버전스 과정 입니다.</p>
					</a></li>
					<li><a href="#""returnfalse"> <img
							src="resources/images/ice.jpg" alt="아이스 이미지">
							<h3>WORK</h3>
							<p>휴먼 교육센터 디지털 컨버전스 과정 입니다.</p>
					</a></li>
					<li><a href="#""returnfalse"> <img
							src="resources/images/ice.jpg" alt="아이스 이미지">
							<h3>BLOG</h3>
							<p>휴먼 교육센터 디지털 컨버전스 과정 입니다.</p>
					</a></li>
				</ul>
			</div>
		</section>
		


		<footer class="footer">
			<p class="copyright">LOGO</p>
		</footer>
	</div>
</body>
</html>