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
    <div class="content">
    
           
            
            <div class="card">
              <div class="card-header">
                <h3 class="card-title"><strong>게시판 목록</strong></h3>
				<br>
                <div class="card-tools">
                  <div class="input-group" style="width:500px;positon:relative;padding:5px;right:98%">
                  	<select class="form-control" style="text-align:center">
                  	<option selected="">제목</option>
                  	<option>내용</option>
                  	<option>작성자</option>
                	</select>
                    <input type="text" name="table_search" class="form-control float-right" placeholder="Search">
					
                    <div class="input-group-append">
                      <button type="submit" class="btn btn-default">검색</button>
                      <button type="submit" class="btn btn-default">글쓰기</button>
                    </div>
                  </div>
                </div>
              </div>
              <!-- /.card-header -->
              <div class="card-body table-responsive p-0" style="text-align:center">
                <table class="table table-hover text-nowrap">
                  <thead>
                    <tr>
                      <th>번호</th>
                      <th>제목</th>
                      <th>작성자</th>
                      <th>등록일</th>
                      <th>조회수</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <td>4</td>
                      <td>John Doe</td>
                      <td>John Doe</td>
                      <td><span class="tag tag-success">11-7-2014</span></td>
                      <td>1000000</td>
                    </tr>
                    <tr>
                      <td>3</td>
                      <td>Alexander Pierce</td>
                      <td>Alexander Pierce</td>
                      <td><span class="tag tag-warning">11-7-2014</span></td>
                      <td>50000</td>
                    </tr>
                    <tr>
                      <td>2</td>
                      <td>Bob Doe</td>
                      <td>Bob Doe</td>
                      <td><span class="tag tag-primary">11-7-2014</span></td>
                      <td>999999</td>
                    </tr>
                    <tr>
                      <td>1</td>
                      <td>Mike Doe</td>
                      <td>Mike Doe</td>
                      <td><span class="tag tag-danger">11-7-2014</span></td>
                      <td>148752</td>
                    </tr>
                  </tbody>
                </table>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
            <div>
            
            <button type="button" class="btn btn-default" onclick="location.href='/resources/board_write.html' " style="background-color:#148CFF">
            <strong>글쓰기</strong>
            </button>
         	
         	<ul class="pagination" style="position:relative;left:40%;">
			    <li class="page-item"><a href="#" class="page-link">«</a></li>
			    <li class="page-item"><a href="#" class="page-link">1</a></li>
			    <li class="page-item"><a href="#" class="page-link">2</a></li>
			    <li class="page-item"><a href="#" class="page-link">3</a></li>
			    <li class="page-item"><a href="#" class="page-link">»</a></li>
		     </ul>
		     </div>
    </div>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  <%@ include file="../include/footer.jsp"%>