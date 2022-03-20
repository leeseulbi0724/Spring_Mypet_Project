<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Mypet</title>
<script src="js/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" ></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" >
<style>
	.section {
		text-align:center;
	}
	.mainbox {
		width:1200px;
		display:inline-block;
		text-align:center;
		background-color:white;
	}
	.title {
		margin-top:110px;
		margin-left:100px;
		margin-bottom:60px;
		float:left;
		font-weight:bold;
		font-size:30px;
	}
	.title>span {
		margin-left:20px;
		color:gray;
		font-weight:normal;
		font-size:20px;
	}
	.mainbox2 {
		border-radius:10px;
		border:1px solid lightgray;
		display:inline-block;
		width:1000px;
		background-color:white;
		margin-bottom:100px;
		text-align:center;
	}
	.subtitle {
	margin-top:60px;
	margin-left:70px;
	float:left;
	font-weight:bold;
	font-size:25px;
	margin-bottom:-10px;
	}
	.writing_line{
	display:inline-block;
	border-top:2px solid;
	width:90%;
	}
	.mainbox2>.writing_title{
	display:inline-block;
	width:90%;
	height:40px;
	}
	.mainbox2>.writing_content{
	display:inline-block;
	margin-top:3px;
	width:90%;
	height:600px;
	}
	.post_title{
	text-align:left;
	font-weight:bold;
	font-size:20px;
	margin-left:65px;
	margin-bottom:5px;
	margin-top:10px;
	}
	.name{
	display:inline-block;
	float:left;
	margin-left:70px;
	font-size:13px;
	}
	.post_line{
	float:left;
	border-right:1px solid lightgray;
	height:13px;
	display:inline-block;
	margin-left:10px;
	margin-top:5px;
	}
	.post_line2{
	float:right;
	border-right:1px solid lightgray;
	height:13px;
	display:inline-block;
	margin-right:10px;
	margin-left:10px;
	margin-top:5px;
	}
	.post_date{
	display:inline-block;
	float:left;
	margin-left:10px;
	font-size:13px;
	}
	.view{
	display:inline-block;
	float:right;
	font-size:13px;
	}
	.recommend{
	display:inline-block;
	float:right;
	font-size:13px;
	}
	.comments{
	border:1px solid lightgray;
	border-radius:10px;
	display:inline-block;
	float:right;
	font-size:13px;
	margin-right:50px;
	}
	.writing_line2{
	display:inline-block;
	border-top:1px solid lightgray;
	width:90%;
	}
	.contentsbox{
	display:inline-block;
	border:1px solid white;
	width:90%;
	height:600px;
	margin-top:50px;
	}
	.recommendbox{
	display:inline-block;
	border:1px solid lightgray;
	border-radius:10px;
	width:250px;
	height:125px;
	}
	.thumb{
	background-color:white;
	border:1px solid white;
	margin-top:30px;
	display:inline-block;
	width:80px;
	}
	.thumb:hover{
	background-color:white;
	border:1px solid white;
	margin-top:30px;
	display:inline-block;
	width:80px;
	color:red;
	}
	.recommendbox img{
	display:inline-block;
	 width:30px;
	 height:30px;
	}
	.recommendbox>p{
	font-weight:bold;
	font-size:15px;
	}
	.thumb_number{
	margin-top:50px;
	margin-left:20px;
	float:left;
	color:blue;
	font-weight:bold;
	}
	.thumb_number2{
		margin-top:50px;
		margin-right:20px;
		float:right;
		color:red;
		font-weight:bold;
	}
	.commentsbox{
		display:inline-block;
		border:1px solid white;
		width:90%
	}
	.commentsbox>p{
		display:inline-block;
		float:left;
		font-weight:bold;
		font-size:13px;
	}
	.all_comments_number{
		display:inline-block;
		font-weight:bold;
		font-size:13px;
		color:red
	}
	.commentsbox2{
		margin-top:10px;
		display:inline-block;
		border-top:2px solid rgb(247,179,42);
		width:100%;
		height:150px;
	}
	.commentsbox3{
		display:inline-block;
		width:100%;
		height:30px;
		border-bottom:1px solid lightgray;
	}
	.commentsbox3>p{
		font-size:13px;
		margin-top:4px;
	}
	.commentsbox3>p:first-child{
		float:left;
	}
	.commentsbox3>p:nth-child(2){
		float:left;
		margin-left:100px;
	}
	.commentsbox3>p:last-child{
		float:right;
	}
	.write_comment {
		display:inline-block;
		border-top:2px solid rgb(247,179,42);
		border-bottom:2px solid rgb(247,179,42);
		background-color:rgb(245,245,245);
		width:90%;
	}
	.write_comment .comment_area {
		display:block;
		width:85%;
		height:100px;
		float:right;
		margin-right:10px;
		margin-top:10px;
	}
	.comment_name_div {
		width:100%;
		float:left;
	}
	.comment_name {
		margin-top:15px;
		margin-left:15px;
		display:iniline-block;
		float:left;
		font-weight:bold;
		font-size:15px;
	}
	.comment_button_div {
		width:100%;
		text-align:right;
		float:left;
	}
	.comment_button {
		display:inline-block; 
		border-radius:10px;
		border:none;
		background-color:rgb(72,115,210);
		margin:10px;
		color:white;
	}
	.comment_button:hover {
		background-color:rgb(0,68,130);
		color:white;
	}
	#textarea {
		width:95%; height:500px;
		background-color:white;
		border:none;
	}
	@media (min-width : 600px) {		
		.section { background-color:rgb(247,179,42); }
		.mainbox { width:1300px; }
	}
</style>
<script>
	$(document).ready(function() {
		$(".heart").click(function() {
			<c:if test = "${session_id eq null}">
				alert("로그인 후 이용가능합니다");
			</c:if>
			<c:if test="${session_id ne null}">			
				$.ajax({
			        url:"free_up_heart.do",
			        type:"post",
			        data: {fid:"${vo.fid}"},
			        success:function(result){			       		  
			       		location.reload();	       		
			       	},		
			    });
			</c:if>
		});
		
		$(".nheart").click(function() {
			<c:if test = "${session_id eq null}">
				alert("로그인 후 이용가능합니다");
			</c:if>
			<c:if test="${session_id ne null}">			
				$.ajax({
			        url:"free_up_nheart.do",
			        type:"post",
			        data: {fid:"${vo.fid}"},
			        success:function(result){			       		  
			       		location.reload();	       		
			       	},		
			    });
			</c:if>
		});
	});
</script>
</head>
<body>
<jsp:include page="../header.jsp"></jsp:include>
		<section class="section">
		<div class="mainbox">
			<p class="title">펫 일기<span>Pet Diary</span></p>
			<div class ="mainbox2 freebox">
			<p class="subtitle">자유게시판</p>
			<div class="writing_line"></div>
			<p class="post_title">${vo.ftitle }</p>
			<p class="name">${vo.id }</p>
			<div class="post_line"></div>
			<p class="post_date">${vo.fdate }</p>
			<button class="comments">댓글 0</button>
			<div class="post_line2"></div>
			<p class="recommend">추천 ${vo.fheart }</p>
			<div class="post_line2"></div>
			<p class="view">조회 ${vo.fhit }</p>
			<div class="writing_line2"></div>
			<div class="contentsbox"><textarea disabled style="resize: none;" id="textarea">${vo.fcontent }</textarea></div>
				<div class="recommendbox">
					<p class="thumb_number">${vo.fheart }</p>
					<button class="thumb heart">
					<img src="images/thumb_blue.png">
					<p>추천</p>
					</button>
					<button class="thumb nheart">
					<img src="images/thumb_red.png">
					<p>비추천</p>
					</button>
					<p class="thumb_number2">${vo.fnheart }</p>
				</div>
				<div class="commentsbox">
					<p>전체 댓글 <span class="all_comments_number">1</span>개</p>
					<div class="commentsbox2">
						<div class="commentsbox3">
						<p>이름</p>
						<p>내용</p>
						<p>날짜</p>
						</div>
					</div>
				</div>	
				<div class="write_comment">
					<div class="comment_name_div">
						<p class="comment_name">이름</p>
						<textarea class="comment_area form-control" placeholder="댓글을 입력해주세요."></textarea>
					</div>
					<div class="comment_button_div">
						<button class="comment_button">등록하기</button>
					</div>
				</div>
			</div>
		</div>
	</section>
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>