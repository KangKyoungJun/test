<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<!-- Custom styles for this template -->
<link href="resources/css/scrolling-nav.css" rel="stylesheet">
<!-- Bootstrap core CSS -->
<link href="resources/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
 <style>
.jumbotron{
	text-shadow: 0.3em 0.3em 0.3em black;
	color : white;
}

 </style>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=divice-width" initial-casle="1">
<title>로그인</title>
</head>
 <body style="background: url(resources/images/background.jpg);">
<!--외부스타일 시트  -->
 <!--홈 태그  -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top"
		id="mainNav">
		<div class="container">
			<a class="navbar-brand js-scroll-trigger" href="#page-top">Start
				Bootstrap</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarResponsive" aria-controls="navbarResponsive"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item active"><a class="nav-link" href="#">Home
							<span class="sr-only">(current)</span>
					</a></li>
					<li class="nav-item"><a class="nav-link" href="Info">Info</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="Indices">Indices</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="Board">Board</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="Contact">Contact</a>
					</li>
				</ul>
			</div>
		</div>
	</nav>
<!--로그인 폼  -->
<div class="login-wrap">
    <div class="login-html">
        <div class="col-md-12 text-center">
            <a href="#">
                <img src="resources/images/dummy.png" style="width: 80px;border-radius: 50%">
            </a>
        </div>
        <div class="col-sm-3 col-md-2 columns">
            <h2 class="text-white top-font right">Login</h2>
        </div>
        &nbsp;

        <input id="tab-1" type="radio" name="tab" class="sign-in " checked><label for="tab-1" class="tab ">Sign In
        &nbsp;<img src="resources/images/loader_ulamama_1.gif" height="30" style="border-radius: 50%"></label>
        <input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab text-signup">Sign Up
        &nbsp;<img src="resources/images/loader_ulamama.gif" height="30" style="border-radius: 50%"> </label>
        <div class="login-form">
            <div class="sign-in-htm">
                <div class="group">
                    <input type="text" class="input" placeholder="User Name">
                </div>
                <div class="group">
                    <input type="password" class="input" placeholder="Password">
                </div>
                <div class="group">
                    <input id="check" type="checkbox" class="check" checked>
                    <label for="check"><span class="icon"></span> Keep me Signed in</label>
                </div>
                <div class="group">
                    <input type="submit" class="button" value="Sign In">
                </div>
                <div class="hr"></div>
                <div class="foot-lnk">
                    <a href="#">Forgot Password?</a>
                </div>
                <h5 class="text-center text-white">Copyright @ Stunning Login Form Design by <a
                        href="https://leamug.com">Leamug</a></h5>
            </div>
            <div class="sign-up-htm">
                <div class="group">
                    <label for="user" class="label">Username</label>
                    <input id="user" type="text" class="input">
                </div>
                <div class="group">
                    <label for="pass" class="label">Password</label>
                    <input type="password" class="input" data-type="password">
                </div>
                <div class="group">
                    <label for="pass" class="label">Repeat Password</label>
                    <input type="password" class="input" data-type="password">
                </div>
                <div class="group">
                    <label for="pass" class="label">Email Address</label>
                    <input id="pass" type="text" class="input">
                </div>
                <div class="group">
                    <input type="submit" class="button" value="Sign Up">
                </div>
            </div>
        </div>
    </div>
</div>
 
	<!-- Footer -->
	<footer>
		<div class="container">
			<div class="row">
				<div class="col-lg-8 col-md-10 mx-auto">
					<ul class="list-inline text-center">
						<li class="list-inline-item"><a href="#"> <span
								class="fa-stack fa-lg"> <i
									class="fas fa-circle fa-stack-2x"></i> <i
									class="fab fa-twitter fa-stack-1x fa-inverse"></i>
							</span>
						</a></li>
						<li class="list-inline-item"><a href="#"> <span
								class="fa-stack fa-lg"> <i
									class="fas fa-circle fa-stack-2x"></i> <i
									class="fab fa-facebook-f fa-stack-1x fa-inverse"></i>
							</span>
						</a></li>
						<li class="list-inline-item"><a href="#"> <span
								class="fa-stack fa-lg"> <i
									class="fas fa-circle fa-stack-2x"></i> <i
									class="fab fa-github fa-stack-1x fa-inverse"></i>
							</span>
						</a></li>
					</ul>
					<p class="copyright text-muted">Copyright &copy; Your Website
						2018</p>
				</div>
			</div>
		</div>
	</footer>
	
<!--자바스크립트 가져온것  -->
<!-- Bootstrap core JavaScript -->
	<script src="resources/vendor/jquery/jquery.min.js"></script>
	<script src="resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="resources/vendor/bootstrap/js/bootstrap.min.js"></script>
<!-- Custom scripts for this template -->
	<script src="resources/js/clean-blog.min.js"></script>
<!--경준이가 넣은 슬라이스 -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
 <!--공통  :자바스크립트 -->
 <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
 <!--로그인  -->
<link rel="stylesheet" type="text/css" href="resources/css/login.css">
<link href="https://fonts.googleapis.com/css?family=Gudea" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Great+Vibes" rel="stylesheet">
 


</body>
</html>