<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Shop Item - Start Bootstrap Template</title>

    <!-- Bootstrap core CSS -->
    <link href="resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="resources/css/shop-item.css" rel="stylesheet">

  </head>

  <body>

    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
      <div class="container">
        <a class="navbar-brand" href="#">Start Bootstrap</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
         <ul class="navbar-nav ml-auto">
					<li class="dropdown">
						<!-- 아래쪽으로 리스트가 추가되어서 나옴 --> <a href="main"
						style="color: white; padding: 20px;">Home<span class="caret"></span></a>
					</li>
					<li class="dropdown">
						<!-- 아래쪽으로 리스트가 추가되어서 나옴 --> <a href="#" data-toggle="dropdown"
						role="button" aria-haspopup="true" aria-expanded="false"
						style="color: white; padding: 20px;">About<span class="caret"></span></a>
						<!-- caret : 아래 화살표 클릭 시 아이콘이 나오도록 함 -->
						<ul class="dropdown-menu">
							<li><a class="dropdown_a_tag" href=Introduce>소개</a></li>
							<li><a class="dropdown_a_tag" href="function">기능</a></li>
						</ul>
					</li>
					<li class="dropdown">
						<!-- 아래쪽으로 리스트가 추가되어서 나옴 --> <a href="#" data-toggle="dropdown"
						role="button" aria-haspopup="true" aria-expanded="false"
						style="color: white; padding: 20px;">Health Index<span
							class="caret"></span></a> <!-- caret : 아래 화살표 클릭 시 아이콘이 나오도록 함 -->
						<ul class="dropdown-menu">
							<li><a class="dropdown_a_tag" href="Health_Meteorological_Index">보건기상지수</a></li>
							<li><a class="dropdown_a_tag" href="Ultraviolet_ray_index">자외선지수</a></li>
							<li><a class="dropdown_a_tag" href="Food_Poisoning_Index">식중독지수</a></li>
						</ul>
					</li>
					<li class="dropdown">
						<!-- 아래쪽으로 리스트가 추가되어서 나옴 --> <a href="Board"
						style="color: white; padding: 20px;">Board<span class="caret"></span></a>
					</li>
					<li class="dropdown">
						<!-- 아래쪽으로 리스트가 추가되어서 나옴 --> <a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false" style="color: white; padding: 20px;">Connect<span
							class="caret"></span></a> <!-- caret : 아래 화살표 클릭 시 아이콘이 나오도록 함 -->
						<ul class="dropdown-menu">
							<li><a class="dropdown_a_tag" href="loginForm">로그인</a></li>
							<li><a class="dropdown_a_tag" href="registerForm">회원가입</a></li>
						</ul>
					</li>
				</ul>
        </div>
      </div>
    </nav>

    <!-- Page Content -->
    <div class="container">

      <div class="row">

        <div class="col-lg-3">
          <h1 class="my-4">Shop Name</h1>
          <div class="list-group">
            <a href="Board1" class="list-group-item active">게시판 목록</a>
            <a href="Board2" class="list-group-item">고객감동사례</a>
            <a href="Board3" class="list-group-item">자유게시판</a>
            <a href="Board4" class="list-group-item">FAQ</a>
            <a href="Board5" class="list-group-item">Q&A</a>
          </div>
        </div>
        <!-- /.col-lg-3 -->

        <div class="col-lg-9">

          <div class="card mt-4">
            <img class="card-img-top img-fluid" src="http://placehold.it/900x400" alt="">
            <div class="card-body">
              <h3 class="card-title">Product Name</h3>
              <h4>$24.99</h4>
              <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sapiente dicta fugit fugiat hic aliquam itaque facere, soluta. Totam id dolores, sint aperiam sequi pariatur praesentium animi perspiciatis molestias iure, ducimus!</p>
              <span class="text-warning">&#9733; &#9733; &#9733; &#9733; &#9734;</span>
              4.0 stars
            </div>
          </div>
          <!-- /.card -->

          <div class="card card-outline-secondary my-4">
            <div class="card-header">
              Product Reviews
            </div>
            <div class="card-body">
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Omnis et enim aperiam inventore, similique necessitatibus neque non! Doloribus, modi sapiente laboriosam aperiam fugiat laborum. Sequi mollitia, necessitatibus quae sint natus.</p>
              <small class="text-muted">Posted by Anonymous on 3/1/17</small>
              <hr>
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Omnis et enim aperiam inventore, similique necessitatibus neque non! Doloribus, modi sapiente laboriosam aperiam fugiat laborum. Sequi mollitia, necessitatibus quae sint natus.</p>
              <small class="text-muted">Posted by Anonymous on 3/1/17</small>
              <hr>
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Omnis et enim aperiam inventore, similique necessitatibus neque non! Doloribus, modi sapiente laboriosam aperiam fugiat laborum. Sequi mollitia, necessitatibus quae sint natus.</p>
              <small class="text-muted">Posted by Anonymous on 3/1/17</small>
              <hr>
              <a href="#" class="btn btn-success">Leave a Review</a>
            </div>
          </div>
          <!-- /.card -->

        </div>
        <!-- /.col-lg-9 -->

      </div>

    </div>
    <!-- /.container -->

    <!-- Footer -->
    <footer class="py-5 bg-dark">
      <div class="container">
        <p class="m-0 text-center text-white">Copyright &copy; Your Website 2017</p>
      </div>
      <!-- /.container -->
    </footer>

    <!-- Bootstrap core JavaScript -->
    <script src="resources/vendor/jquery/jquery.min.js"></script>
    <script src="resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  </body>

</html>
