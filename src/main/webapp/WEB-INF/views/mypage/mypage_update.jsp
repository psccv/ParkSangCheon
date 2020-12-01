<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="../include/header.jsp"%>

<!-- container -->
<div id="container">
	<!-- location_area -->
	<div class="location_area member">
		<div class="box_inner">
			<h2 class="tit_page">
				스프링 <span class="in">in</span> 자바
			</h2>
			<p class="location">
				회원 <span class="path">/</span> 회원정보
			</p>
			<ul class="page_menu clear">
				<li><a href="javascript:;" class="on">회원정보</a></li>
			</ul>
		</div>
	</div>
	<!-- //location_area -->
	<!-- bodytext_area -->
	<div class="bodytext_area box_inner">
		<!-- appForm -->
		<form id="form_mypage" action="/mypage/update" class="regForm" method="POST">
			<fieldset>
				<legend>내정보 입력 양식</legend>
				<ul class="reg_list">
					<li class="clear"><span class="tit_lbl">아이디</span>
						<div class="reg_content">${memberVO.user_id}</div>
						<input value="${memberVO.user_id}" type="hidden" class="w100p"
						id="user_id" name="user_id" placeholder="아이디를 입력해주세요" /></li>
					<li class="clear"><label class="tit_lbl">패스워드</label>
						<div class="reg_content" style="padding-top: 8px;">
							<input value="" type="text" class="w100p" name="user_pw"
								placeholder="암호를 입력해주세요" />
						</div></li>
					<li class="clear"><label class="tit_lbl">이름</label>
						<div class="reg_content" style="padding-top: 8px;">
							<input value="${memberVO.user_name}" type="text" class="w100p"
								name="user_name" placeholder="이름를 입력해주세요" />
						</div></li>
					<li class="clear"><label class="tit_lbl">이메일</label>
						<div class="reg_content" style="padding-top: 8px;">
							<input value="${memberVO.email}" type="text" class="w100p"
								name="email" placeholder="이메일를 입력해주세요" />
						</div></li>
					<li class="clear"><label class="tit_lbl">포인트</label>
						<div class="reg_content">
							${memberVO.point} <input value="${memberVO.point}" type="hidden"
								class="w100p" name="point"/>
						</div></li>
					<li class="clear"><label class="tit_lbl">활성화</label>
						<div class="reg_content">
							${memberVO.enabled} <input value="${memberVO.enabled}" type="hidden"
								class="w100p" name="enabled"/>
						</div></li>
					<li class="clear"><label class="tit_lbl">회원등급</label>
						<div class="reg_content">
							${memberVO.levels} <input value="${memberVO.levels}" type="hidden"
								class="w100p" name="levels"/>
						</div></li>
				</ul>
				<p class="btn_line">
					<button class="btn_baseColor" style="cursor:pointer">정보수정</button>
					<button id="btn_delete" type="button" class="btn_baseColor" style="cursor:pointer">회원탈퇴</button>
				</p>
			</fieldset>
		</form>
		<!-- //appForm -->
	</div>
	<!-- //bodytext_area -->
</div>
<!-- //container -->
<script>
$(document).ready(function(){
	$("#btn_delete").click(function(){
		//alert();
		if(confirm("정말로 탈퇴하시겠습니까?")){
			$("#form_mypage").attr("action","/mypage/delete");
			$("#form_mypage").submit();
		}
	});
});
</script>
<%@ include file="../include/footer.jsp"%>
