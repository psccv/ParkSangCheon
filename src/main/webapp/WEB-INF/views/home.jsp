<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>

<!DOCTYPE HTML>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no">
<title>HOME</title>
<link rel="shortcut icon" href="/images/favicon/favicon.ico">
<link rel="apple-touch-icon-precomposed"
	href="/images/favicon/home-touch-icon.png">
<link rel="stylesheet" type="text/css" href="/resources/css/reset.css">
<link rel="stylesheet" type="text/css" href="/resources/css/common.css">
<link rel="stylesheet" type="text/css" href="/resources/css/user.css">

<style>
.go_top {
    position: fixed;
    right: 20px;
    bottom:112px;
    text-align: center;
    background:red;
    z-index: 100;
    padding: 20px;
    opacity:0.5;
    color:blue !important; 
}

body header .logo{
	background: url("/resources/images/logo.png") no-repeat 0% 50%;
	height: 90px;
	width: 90px;
	margin: -10px;
	}
	
body .footer .copyright{
	padding-top: 50px;
	padding-bottom: 50px;
	background: url("/resources/images/logo.png") no-repeat 50% 50%;
	margin:0;
}

body footer{
	background-color:red;
}



</style>

<script src="/resources/js/jquery.min.js"></script>
<script src="/resources/js/common.js"></script>

</head>

<body>
	<!--더미 데이터:CSS작업전내용-->
	<div id="wrap">
		<header class="header cfixed">
			<h1 class="logo">
				<!-- <a href="#">LOGO</a> -->
			</h1>
			<nav>
				<ul class="gnb">
					<li><a href="/">HOME</a></li>
					<li><a href="#weare">WE ARE</a></li>
					<li><a href="#work">WORK</a></li>
					<li><a href="#blog">BLOG</a></li>
					<li><a href="#contactus">CONTACT US</a></li>
				</ul>
			</nav>
			<span class="menu-toggle-btn"> <span></span> <span></span> <span></span>
			</span>
		</header>
		<article class="slider">
			<img src="resources\images\ice.jpg" alt="아이스 이미지">
		</article>
		
		
		<section class="display-section">
			<div class="container">
				<h2 class="sec-tit" id="weare">WE ARE</h2>
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
		
		
		<section class="work-section cfixed">
			<h2 class="sec-tit" id="work">WORK</h2>
			<ul class="work-list">
				<li><a href="#" onclick="return false">
						<div class="info">
							<h3>작업1</h3>
							<span>소스/작업1</span>
						</div> <img src="/resources/images/ice.jpg" alt="아이스 이미지">
				</a></li>
				<li><a href="#" onclick="return false">
						<div class="info">
							<h3>작업1</h3>
							<span>소스/작업1</span>
						</div> <img src="/resources/images/ice.jpg" alt="아이스 이미지">
				</a></li>
				<li><a href="#" onclick="return false">
						<div class="info">
							<h3>작업1</h3>
							<span>소스/작업1</span>
						</div> <img src="/resources/images/ice.jpg" alt="아이스 이미지">
				</a></li>
				<li><a href="#" onclick="return false">
						<div class="info">
							<h3>작업1</h3>
							<span>소스/작업1</span>
						</div> <img src="/resources/images/ice.jpg" alt="아이스 이미지">
				</a></li>
				<li><a href="#" onclick="return false">
						<div class="info">
							<h3>작업1</h3>
							<span>소스/작업1</span>
						</div> <img src="/resources/images/ice.jpg" alt="아이스 이미지">
				</a></li>
				<li><a href="#" onclick="return false">
						<div class="info">
							<h3>작업1</h3>
							<span>소스/작업1</span>
						</div> <img src="/resources/images/ice.jpg" alt="아이스 이미지">
				</a></li>
				<li><a href="#" onclick="return false">
						<div class="info">
							<h3>작업1</h3>
							<span>소스/작업1</span>
						</div> <img src="/resources/images/ice.jpg" alt="아이스 이미지">
				</a></li>
				<li><a href="#" onclick="return false">
						<div class="info">
							<h3>작업1</h3>
							<span>소스/작업1</span>
						</div> <img src="/resources/images/ice.jpg" alt="아이스 이미지">
				</a></li>
			</ul>
		</section>
		
		<section class="blog-section">
			<div class="container">
				<h2 class="sec-tit" id="blog">BLOG</h2>
				<ul class="blog-list">
					<li><a href="#" onclick="return false"><img
							src="/resources/images/ice.jpg" alt="아이스 이미지"></a> <time
							datetime="2020-05-26">MAY 26, 2020</time> <a href="#"><h3>타임스페이스는
								사용자 중심의 웹페이지를 제작하는 회사 입니다.</h3></a></li>
					<li><a href="#" onclick="return false"><img
							src="/resources/images/ice.jpg" alt="아이스 이미지"></a> <time
							datetime="2020-05-26">MAY 26, 2020</time> <a href="#"><h3>타임스페이스는
								사용자 중심의 웹페이지를 제작하는 회사 입니다.</h3></a></li>
					<li><a href="#" onclick="return false"><img
							src="/resources/images/ice.jpg" alt="아이스 이미지"></a> <time
							datetime="2020-05-26">MAY 26, 2020</time> <a href="#"><h3>타임스페이스는
								사용자 중심의 웹페이지를 제작하는 회사 입니다.</h3></a></li>
				</ul>
			</div>
		</section>
		
		<section class="contact-section">
			<div class="container">
				<h2 class="sec-tit" id="contactus">CONTACT</h2>
				<div class="form-box">
					<form action="" method="">
						<fieldset class="cfixed">
							<legend class="blind">CONTACT US</legend>
							<div class="form">
								<label for="name" class="blind">name</label> <input type="text"
									id="name" placeholder="Name"> <label for="phone"
									class="blind">phone</label> <input type="tel" id="phone"
									placeholder="Phone"> <label for="email" class="blind">email</label>
								<input type="email" id="email" placeholder="Email Address">
							</div>
							<div class="textarea">
								<label for="message" class="blind">message</label>
								<textarea name="message" id="message" placeholder="Message"></textarea>
							</div>
						</fieldset>
						<div class="send-btn">
							<button>메세지 보내기</button>
						</div>
					</form>
				</div>
			</div>
		</section>
		
		<footer class="footer">
			<iframe
				src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d49598.41346639915!2d125.7532461!3d39.0175754!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357e032676032ab3%3A0x63f27ab58f016f09!2z6rmA7J287ISx6rSR7J6l!5e0!3m2!1sko!2skr!4v1590481428963!5m2!1sko!2skr"
				width="600" height="450" frameborder="0" style="border: 0;"
				allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
			<p class="copyright"></p>
		</footer>
		
		
		<p class="go_top">
		<a href="#" class="s_point">TOP</a>
		</p>
		
		
	</div>
</body>

</html>
