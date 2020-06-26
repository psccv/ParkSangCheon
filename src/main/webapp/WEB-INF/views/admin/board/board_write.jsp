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
					<h1 class="m-0 text-dark">Starter Page</h1>
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
					<strong>게시물 작성</strong>
				</h3>
			</div>
			<!-- /.card-header -->
			<div class="card-body">
				<form role="form">
					<!-- text input -->
					<div class="form-group">
						<label>제목</label> <input type="text" class="form-control"
							placeholder="제목 ...">
					</div>
					<div class="form-group">
						<label>내용</label>
						<textarea type="text" class="form-control" placeholder="내용..."
							style="height: 200px"></textarea>
					</div>
					<!-- textarea -->
					<div class="form-group">
						<label>작성자</label> <input class="form-control" rows="3"
							placeholder="글쓴이 ...">
					</div>
					<div class="form-group">
						<label>아래 영역에 파일을 드래그 해서 업로드 가능</label>
						<textarea class="form-control" rows="3" placeholder="" disabled=""></textarea>
					</div>
					<div class="form-group">
						<label>아래 기존 파일 업로드창 사용 가능</label> <br>
						<button type="submit" class="btn btn-default"
							style="position: relative; background-color: #F57878">파일선택</button>
						<label>선택된 파일이 없음</label>
					</div>
					<div class="form-group">
						<button type="button" class="btn btn-default"
							onclick="location.href='#' "
							style="position: relative; background-color: #FFC314">
							<strong>등록</strong>
						</button>
						<button type="button" class="btn btn-default"
							onclick="location.href='#' "
							style="position: relative; background-color: #3CA0FF">
							<strong>돌아가기</strong>
						</button>
					</div>
				</form>
			</div>
			<!-- /.card-body -->
		</div>
		<!-- /.card -->
	</div>
	<!-- /.content -->
</div>
<!-- /.content-wrapper -->

<%@ include file="../include/footer.jsp"%>


