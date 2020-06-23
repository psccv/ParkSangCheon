<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>
<!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0 text-dark">Starter Page</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Starter Page</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <div class="content" >
    
            <div class="card" >
              <div class="card-header" style="background-color:#A2E9FF" >
                <h3 class="card-title"><strong>회원 검색</strong></h3>
				<br>
                <div class="card-tools" >
                  <div class="input-group" style="width:500px;positon:relative;right:98%;padding:5px">
                  	<select class="form-control" style="text-align:center">
                  	<option selected="">준회원</option>
                  	<option>정회원</option>
                  	<option>우수회원</option>
                	</select>
                    <input type="text" name="table_search" class="form-control float-right" placeholder="Search">
					
                    <div class="input-group-append">
                      <button type="submit" class="btn btn-default">검색</button>
                      <button type="submit" class="btn btn-default">새사용자등록</button>
                    </div>
                  </div>
                </div>
              </div>
              <!-- /.card-header -->
              <div class="card-body table-responsive p-0" style="text-align:center">
                <table class="table table-hover text-nowrap">
                  <thead>
                    <tr>
                      <th>아이디</th>
                      <th>이름</th>
                      <th>이메일</th>
                      <th>상태</th>
                      <th>등록일</th>
                      <th>등급</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                       	<td>user183</td>
                       	<td>John Doe</td>
                       	<td>user183@test.com</td>
                       	<td><span class="tag tag-success">True</span></td>
                       	<td>11-7-2014</td>
                    	<td>정회원</td>
                    </tr>
                    <tr>
	                    <td>user219</td>
	                    <td>Alexander Pierce</td>
	                    <td>user219@test.com</td>
	                    <td><span class="tag tag-warning">True</span></td>
	                    <td>11-7-2014</td>
                    	<td>준회원</td>
                    </tr>
                    <tr>
	                    <td>user657</td>
	                    <td>Bob Doe</td>
	                    <td>user657@test.com</td>
	                    <td><span class="tag tag-primary">True</span></td>
	                    <td>11-7-2014</td>
                    	<td>우수회원</td>
                    </tr>
                    <tr>
	                    <td>user175</td>
	                    <td>Mike Doe</td>
	                    <td>user175@test.com</td>
	                    <td><span class="tag tag-danger">True</span></td>
	                    <td>11-7-2014</td>
                    	<td>준회원</td>
                    </tr>
                  </tbody>
                </table>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
         	
         	<button type="button" onclick="location.href='/resources/member_write.html' "  class="btn btn-default" style="background-color:#148CFF">
         	<strong>등록</strong></button>
         	
         	
		    <ul class="pagination" style="position:relative;left:40%;">
			    <li class="page-item"><a href="#" class="page-link">«</a></li>
			    <li class="page-item"><a href="#" class="page-link">1</a></li>
			    <li class="page-item"><a href="#" class="page-link">2</a></li>
			    <li class="page-item"><a href="#" class="page-link">3</a></li>
			    <li class="page-item"><a href="#" class="page-link">»</a></li>
		     </ul>
    </div>
    
    <!-- /.content -->
    
    
  </div>
  <!-- /.content-wrapper -->
<%@ include file="../include/footer.jsp"%>