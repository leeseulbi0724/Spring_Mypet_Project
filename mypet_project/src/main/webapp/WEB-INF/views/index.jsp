<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>Mypet</title>
<script src="js/jquery-3.6.0.min.js"></script>
<style>
section { text-align:center; }
.logo {
	text-align:center;
	display:inline-block;
}
.logo>div {
	display:inline-block;
}
.indexname {	
	width:48%;
	height:500px;
	text-align:center;
}
.indexcat {
	float:right;
	width:25%;
}
.indexdog {
	width:25%;
	float:left;
}

.loginbox {
	margin-top:20px;
	display:inline-block;
	border:1px solid lightgray;
	border-radius:20px;
	width:70%;
	height:90%;
}
.loginboxhigh {
	background-color:rgb(245,245,245);
	border-top-left-radius:20px;
	border-top-right-radius:20px;
	width:100%;
	height:25%;
}
.loginboxhigh>p {
	font-size:40px;
	font-weight:bold;
	display:inline-block;
	float:left;
	margin: 25px;
}
.loginboxhigh>a {
	border:2px solid black;
	border-radius:30px;
	background-color:white;
	float:right;
	padding:10px 15px;
	margin:35px;
	font-weight:bold;
	text-decoration:none;
	color:black;
}
.loginboxhigh>a:hover {
	color:white;
	background-color:rgb(72,115,210);
	border:2px solid rgb(72,115,210);
}
.loginboxhigh2>p{
	font-size:22px;
	margin-top:20px;
}
.loginboxhigh2>p>span{
	font-size:45px;
}
.loginboxmiddle {
	text-align:center;
	width:100%;
	height:70%;
}
.loginboxmiddle2 {
	width:100%;
	height:70%;
	text-align:center;
}
.loginpicture {
	display:inline-block;
	border:1px solid lightgray;
	width:150px;
	height:150px;
	float:left;
	border-radius:5px;
	margin:10px 0 0 10px;
}
.loginpicture>img {
	margin-top:5px;
}
.loginmyinf {
	display:inline-block;
	border:1px solid lightgray;
	width:330px;
	height:150px;
	float:left;
	border-radius:5px;
	margin:10px 0 0 10px;
	text-align:left;
	background-color:rgb(245,245,245);
}
.loginmyinf>p{
	margin:3px 0 0 5px;
}
.loginmyinf>button{
	float:right;
	margin-right:10px;
	border-radius:5px;
	background-color:white;
	font-size:14px;
	font-weight:bold;
}
.loginmyinf>button:hover{
	border:2px solid rgb(247,179,42);
	background-color:rgb(247,179,42);
	color:white;
}
.loginmypet {
	border:1px solid lightgray;
	width:95%; height:150px;
	display:inline-block;
	margin-top:15px;
	border-radius:5px;
	background-color:rgb(245,245,245);
}
.loginmypet>p{
	text-align:left;
	margin:5px 0 0 150px;
}
.loginmypet>button{
	float:right;
	margin-right:10px;
	border-radius:5px;
	background-color:white;
	font-size:14px;
	font-weight:bold;
}
.loginmypet>button:hover{
	border:2px solid rgb(168,199,123);
	background-color:rgb(168,199,123);
	color:white;
}
.loginpetpicture{
	display:inline-block;
	border:1px solid lightgray;
	width:125px;
	height:125px;
	float:left;
	border-radius:5px;
	margin:10px 0 0 15px;
	background-color:white;
}

.login {
	display:inline-block;
	width:80%;
	height:200px;
	background-color:rgb(245,245,245);
	margin-top:30px;
}
.login a { color:black; }
#id {
	background-image:url("http://14.47.84.213:9000/mypet/images/usericon.png");
	background-position:5px center;
	background-repeat:no-repeat;
}
#pass {
	background-image:url("http://14.47.84.213:9000/mypet/images/passicon.png");
	background-position:5px center;
	background-repeat:no-repeat;
}
.login ul {
	list-style:none;
}
.login input.form-control {
	border:none;
	width:80%;
	height:45px;
	margin-top: 10px;
	padding-left:40px;
	display:inline-block; 
}
.login li:first-child input {
	margin-top:20px;
}
.login a {
	text-decoration:underline;
	float:right;
	margin:15px 40px;	
}
.loginboxmiddle button {
	background-color:rgb(72,115,210);
	width:20%;
	height:50px;
	color:white;
	font-weight:bold;
	font-size:20px;
	border:none;
	margin-top:30px;
}
.banner {
	width:100%;
	height:250px;
	background-image:url("http://14.47.84.213:9000/mypet/images/banner.png");
	margin-top:250px;
	text-align:center;
}
.banner>div{
	position:relative;
	width:300px;
	height:300px;
	display:inline-block;
	border:1px solid lightgray;
	bottom:200px;
	background-color:white;
	margin:0 5px;
	border-radius:30px;
}
.banner>div>img{
	width:80px;
	height:80px;
	margin-top:20px;
}
.banner>div>p{
	font-weight:bold;
	font-size:20px;
	margin-top:5px;
}
.bannermenu1:hover{
	background-color:rgb(147,196,228);
	color:white;
}
.bannermenu2:hover{
	background-color:rgb(168,199,123);
	color:white;
}
.bannermenu3:hover{
	background-color:rgb(200,171,217);
	color:white;
}
.bannermenu4:hover{
	background-color:rgb(247,179,42);
	color:white;
}
@media (min-width: 600px) {
	.m-index { display:none; }
	.m-index img { display:none; }
	.loginmyinf { margin-top:5px; }
}
@media (max-width : 500px) {
	.indexname { width:100%; }
	.indexcat>img, .indexdog>img { display:none;	}
	.loginbox { width:95%;	}
	.login { width:90%; }
	#id, #pass { width:90%; }
	.loginboxmiddle button { width:50%; }
	.banner { background-image:none; }
	
	.m-index { width:100%; height:150px; }
	.m-index img { width:40%; height:100%; }
	.m-index img:first-child { float:left; }
	.m-index img:last-child { float:right; }
	
	.loginboxhigh2>p>span { font-size:30px; }
	.loginboxhigh2>p { font-size:20px; margin-top:30px; }
	.loginboxhigh2>a { margin:30px 10px 0 0; }
	.loginmyinf { width:175px; }
	
} 
</style>
<script>
	$(document).ready(function() {
		$(".login_btn").click(function() {
			loginform.submit();
		});
	});
</script>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<section>
	<div class="logo">
		<div class="indexdog">
			<img src="images/indexdog.jpg" width=100%; height=500px;>
		</div>
		<div class="m-index">
			<img src="images/indexdog.jpg">
			<img src="images/indexcat.jpg">
		</div>
		<div class="indexname">
			<c:if test = "${empty session_id }">
				<div class="loginbox">
					<div class="loginboxhigh">
						<p>로그인</p>
						<a href="http://14.47.84.213:9000/mypet/join.do">회원가입</a>
					</div>
					<div class="loginboxmiddle">
						<form name="loginform" action="login_proc.do" method="post" autocomplete="off" >
							<div class="login">
								<ul>
									<li>
										<input type="text" placeholder="아이디를 입력하세요."id="id" name="id" class="form-control">
									</li>
									<li>
										<input type="password" placeholder="비밀번호를 입력하세요."id="pass" name="pass" class="form-control">
									</li>
								</ul>
								<a href="find.do">아이디/비밀번호 찾기</a>
							</div>
						<button type="button" class="login_btn">로그인</button>
						</form>
					</div>
				</div>
			</c:if>
			<c:if test="${!empty session_id }">
				<div class="loginbox">
				 	<div class="loginboxhigh loginboxhigh2">
				 		<p><span>${session_name}</span>님 환영합니다.</p>
				 		<a href="http://14.47.84.213:9000/mypet/logout.do">로그아웃</a>
				 	</div>
				 	<div class="loginboxmiddle2">
				 		<div class="loginpicture">
				 			<img src="images/human2.png" width=90% height=90%>
				 		</div>
				 		<div class="loginmyinf">
				 			<p>${session_name}</p>
				 			<button>내정보</button>
				 			<p>${session_id}</p>
				 			<p>test2@naver.com</p>
				 			<p>주소</p>
				 		</div>
				 		<div class="loginmypet">
				 			<div class="loginpetpicture">
				 				<img src="images/loginpet.png" width=95% height=95%>
				 			</div>
				 			<p>반련동물 이름</p>
				 			<button>대표 반려동물 변경</button>
				 			<p>반련동물 품종</p>
				 			<p>반련동물 크기</p>
				 			<p>반련동물 생년월일</p>
				 			<p>반련동물 특이사항</p>
				 		</div>
				 	</div>
				</div>			
			</c:if>
		</div>
		<div class="indexcat">
			<img src="images/indexcat.jpg" width=100%; height=500px;>
		</div>
		<div class="banner">	
			<div class="bannermenu1" onclick="location.href='care.do'">
				<img src="images/bannericon1.png">
				<p>돌보미 등록</p>
			</div>
			<div class="bannermenu2" onclick="location.href='pet.do'">
				<img src="images/bannericon4.png">
				<p>펫 등록</p>
			</div>
			<div class="bannermenu3" onclick="location.href='near.do'">
				<img src="images/bannericon3.png">
				<p>내 근처의 펫</p>
			</div>
			<div class="bannermenu4" onclick="location.href='diary.do'">
				<img src="images/bannericon2.png">
				<p>펫 일기</p>
			</div>
		</div>
	</div>
</section>
</body>
</html>