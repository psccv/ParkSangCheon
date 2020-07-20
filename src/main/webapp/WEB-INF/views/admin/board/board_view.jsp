<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="../include/header.jsp"%>

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
	<!-- Content Header (Page header) -->
	<div class="content-header">
		<div class="container-fluid">
			<div class="row mb-2">
				<div class="col-sm-6">
					<h1 class="m-0 text-dark">DashBoard Management</h1>
				</div>
				<!-- /.col -->
				<div class="col-sm-6">
					<ol class="breadcrumb float-sm-right">
						<li class="breadcrumb-item"><a href="#">Home</a></li>
						<li class="breadcrumb-item active">Starter Page</li>
					</ol>
				</div>
				<!-- /.col -->
			</div>
			<!-- /.row -->
		</div>
		<!-- /.container-fluid -->
	</div>
	<!-- /.content-header -->

	<!-- Main content -->
	<div class="content">
		<div class="card card-warning">
			<div class="card-header">
				<h3 class="card-title">
					<strong>게시판</strong>
				</h3>
			</div>
			<!-- /.card-header -->
			<div class="card-body">
				<form role="form" action="/admin/board/delete" method="POST">
					<div class="form-group">
						<label>제목</label><br> ${boardVO.title}
					</div>
					<div class="form-group">
						<label>내용</label><br>
						<textarea name="content" type="text" class="form-control"
							placeholder="내용..." style="height: 200px;" disabled="">${boardVO.content}</textarea>
					</div>
					<div class="form-group">
						<label>작성자</label><br> ${boardVO.writer}
					</div>
					<div class="form-group">
						<label>첨부파일 다운로드</label><br> <a
							href="/download?filename=${boardVO.files[0]}">${boardVO.files[0]}</a>
					</div>
					<div class="form-group">
						<a
							href="/admin/board/update?bno=${boardVO.bno}&page=${pageVO.page}"
							class="btn btn-default"
							style="position: relative; background-color: #FFD228;"> <strong>수정</strong>
						</a>
						<button type="submit" class="btn btn-default"
							style="position: relative; background-color: #EB3232;">
							<strong>삭제</strong>
						</button>
						<a href="/admin/board/list?page=${pageVO.page}"
							class="btn btn-default"
							style="position: relative; background-color: #0A6ECD;"> <strong>돌아가기</strong>
						</a>
					</div>
					<input name="bno" type="hidden" value="${boardVO.bno}">
				</form>
			</div>
			<!-- /.card-body -->
		</div>
		<!-- /.card -->
	</div>
	
	<div class="card-body">
		<form role="form">
			<div class="form-group">
				<label>작성자</label> <input id="replyerInput" type="text" class="form-control"
					placeholder="작성자 ...">
			</div>

			<!-- textarea -->
			<div class="form-group">
				<label>내용</label><input id="replytextInput" type="text" class="form-control" placeholder="내용 ...">
			</div>
			<div class="form-group">
				<a href="javascript:;" id="insertApplyBtn" class="btn btn-default"
					style="position:relative;background-color:#50B4F5;">
					<strong>등록</strong>
				</a>
			</div>
		</form>
		<!-- replay -->
		<div class="col-md-12">
			<!-- general form elements disabled -->
			<div class="timeline">
				<!-- timeline time label -->
				<div class="time-label" id="replyDiv">
					<span class="bg-green">댓글 목록</span>
				</div>
				<!-- /.timeline-label -->
				<!-- 댓글 리스트 반복문용 JQuery라이브러리 == jstl의 forEach같은 역할 -->
				<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>
				<!-- timeline item -->
				<script id="template" type="text/x-handlebars-template">
				{{#each .}}
					<div class="replyLi" data-rno={{rno}}>
						<i class="fas fa-comments bg-blue"></i>
						<div class="timeline-item">
							<h3 class="timeline-header">{{replyer}}</h3>
							<div class="timeline-body">{{replytext}}</div>
							<div class="timeline-footer">
								<a class="btn btn-primary btn-sm" data-toggle="modal" data-target="#modifyModal">수정</a>
							</div>
						</div>
					</div>
				{{/each}}
				</script>
				<script>
					//댓글 변수 초기화
					var bno = ${boardVO.bno};
					var page = 1;//페이징변수 초기값
					//replyArr=Json배열데이터 파싱, target=출력위치, template~=반복구문
					var printReplyList = function(replyArr, target, templateObject) {
						var template = Handlebars.compile(templateObject.html());
						var html = template(replyArr);
						$(".replyLi").remove();
						target.after(html);
					}
					//pageVO를 파싱하는 함수(아래)
					var printPageVO = function(pageVO, target){
						var paging = "";
						//console.log(PageVO);
						if(pageVO.prev){
							
						}
						for(var cnt=pageVO.startPage;cnt<pageVO.endPage;cnt++){
							var active = (cnt==pageVO.page)?"active":"";
							paging = paging + '<li class="page-item ' +active+ '"><a class="page-link" href="' +cnt+ '">' +cnt+ '</a></li>';
						}
						if(pageVO.next){
							
						}
						target.html(printPaging);
					}
					function getPage(pageInfo) {
						$.getJSON(pageInfo, function(data) {
							//alert(pageInfo);//디버그
							printReplyList(data.replyList, $("#replyDiv"), $("#template"));
							printPageVO(data.pageVO, $(".pagination"));
							$("#modifyModal").modal("hide");//수정, 삭제 후 모달창 닫기
						});
					}
					//여기까지는 변수+함수 정의
					//댓글 리스트 실행
					$(document).ready(function() {
						getPage("/reply/select/"+bno+"/"+page);
						//페이지번호 클릭시 페이지 이동이 아니고, getPage함수 실행이 되면 OK.
						$(".pagination").on("click","li a", function(event){
							event.preventDefault();//기본 a href 이동 이벤트를 금지
							page=$(this).attr("href");//페이지번호 1,2,3...
							getPage("/reply/select/"+bno+"/"+page);
						});
					});
				</script>
				
				<!-- END timeline item -->
			</div>
			<div class="col-md-12">
				<nav aria-label="Contacts Page Navigation">
						<ul class="pagination justify-content-center m-0">
							<li class="page-item active"><a class="page-link" href="#">1</a></li>
						</ul>
				</nav>
			</div>
			<script>
				$(document).ready(function(){
					$("#replyDelBtn").on("click",function(){
						var rno = $("#rno").val();
						$.ajax({
							type:'delete',
							url:'/reply/delete/'+rno,
							headers:{
								"Content-type":"application/json",
								"X-HTTP-Method-Override":"DELETE"
							},
							success:function(result){
								if(result=='SUCCESS'){
									alert("삭제 되었습니다.");
									getPage("/reply/select/"+bno+"/"+page);
								}
							}
						});
					});
					$("#replyModBtn").on("click",function(){
						var replytext = $("#replytext").val();
						var rno = $("#rno").val();
						//alert(replytext + rno);//디버그 : 입력값 확인용
						//return false;//디버그 : 여기까지 실행 끝내는 명령
						$.ajax({
							type:'put',
							url:'/reply/update/'+rno,
							headers:{
								"Content-type":"application/json",
								"X-HTTP-Method-Override":"PUT"
							},
							dataType:'text',
							data:JSON.stringify({
								replytext:replytext
							}),
							success:function(result){
								if(result=='SUCCESS'){
									alert("수정 되었습니다.");
									getPage("/reply/select/"+bno+"/"+page);
								}
							}
						});
					});
					$("#insertApplyBtn").on("click",function(){
						var replyer = $("#replyerInput").val();
						var replytext = $("#replytextInput").val();
						$.ajax({
							type:'post',
							url:'/reply/insert',
							headers:{
								"Content-type":"application/json",
								"X-HTTP-Method-Override":"POST"
							},
							dataType:'text',
							data:JSON.stringify({
								bno:bno,
								replyer:replyer,
								replytext:replytext
							}),
							success:function(result){
								if(result=='SUCCESS'){
									alert("등록 되었습니다.");
									getPage("/reply/select/"+bno+"/"+page);
									$("#replyerInput").val("");
									$("#replytextInput").val("");
								}
							}
						});
					});
				});
			</script>
			<script>
			$(document).ready(function(){
				//선택한 댓글(template:빵틀)의 데이터를 모달창의 id.클래스에 데이터 바인딩
				$(".timeline").on("click", ".replyLi", function(event){
					var reply = $(this);
					$("#rno").val(reply.attr("data-rno"));
					$(".modal-title").html(reply.find('.timeline-header').text());
					$("#replytext").val(reply.find('.timeline-body').text());
				});
			});
			</script>
			<!-- modifyModal -->
			<div id="modifyModal" class="modal modal-primary fade" role="dialog">
				<div class="modal-dialog">
				  <!-- Modal content-->
					<div class="modal-content">
						<div class="modal-header" style="display:block;">
							<button type="button" class="close" data-dismiss="modal">&times;</button>
							<h4 class="modal-title"></h4>
						</div>
						<div class="modal-body" data-rno>
							<input type="hidden" id="rno" class="form-control">
							<p><input type="text" id="replytext" class="form-control"></p>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-info" id="replyModBtn">Modify</button>
							<button type="button" class="btn btn-danger" id="replyDelBtn">DELETE</button>
							<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
						</div>
					</div>
				</div>
			</div>
			<!-- /.modifyModal -->
		</div>
	</div>
	<!--/.replay -->
</div>
<!-- /.content-wrapper -->

<%@ include file="../include/footer.jsp"%>



