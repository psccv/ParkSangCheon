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
					<strong>회원등록</strong>
				</h3>
			</div>
			<!-- /.card-header -->
			<div class="card-body">
				<form role="form">
					<!-- text input -->
					<dr>
					<div class="form-group">
						<label>아이디</label> <input type="text" class="form-control"
							placeholder="아이디">
					</div>
					<dr>
					<div class="form-group">
						<label>패스워드</label> <input type="text" class="form-control"
							placeholder="패스워드">
					</div>
					<dr>
					<div class="form-group">
						<label>이름</label> <input type="text" class="form-control"
							placeholder="이름">
					</div>
					<dr>
					<div class="form-group">
						<label>이메일</label> <input type="text" class="form-control"
							placeholder="이메일">
					</div>
					<dr>
					<div class="form-group">
						<label>포인트</label> <input type="text" class="form-control"
							placeholder="이메일">
						<dr>
						<div class="form-group">
							<label>상태</label> <select class="form-control"
								style="width: 80px">
								<option selected="">True</option>
								<option>False</option>
							</select>
						</div>
						<dr>
						<div class="form-group">
							<label>등급</label> <select class="form-control"
								style="width: 110px">
								<option selected="">준회원</option>
								<option>정회원</option>
								<option>우수회원</option>
								<option>관리자</option>
							</select>
						</div>
						<dr>
						<button type="button" class="btn btn-default"
							onclick="location.href='#' "
							style="background-color: yellow">
							<strong>등록</strong>
						</button>
						<a href="/admin/member/list" class="btn btn-default"
							style="background-color: skyblue">
							<strong>돌아가기</strong>
						</a>
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


