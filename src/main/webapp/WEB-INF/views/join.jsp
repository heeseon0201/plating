<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
	<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<style>
@charset "UTF-8";

body#JoinForm {
	background-color: rgba(0,0,0,0.5);
}

.form-heading {
	color: #fff;
	font-size: 23px;
}

.panel h2 {
	color: #444444;
	font-size: 18px;
	margin: 0 0 8px 0;
}

.panel h1{
	font-size: 33px;
	margin: 0;
	text-align: center;	
}

.panel p {
	color: #777777;
	font-size: 14px;
	margin-bottom: 30px;
	line-height: 24px;
}
.panel a{
	display: block;
	text-align: center;	
	margin-top: 15px;
}

.join-form .form-control {
	background: #f7f7f7 none repeat scroll 0 0;
	border: 1px solid #d4d4d4;
	border-radius: 4px;
	font-size: 14px;
	height: 50px;
	line-height: 50px;
}

.main-div {
	background: #ffffff none repeat scroll 0 0;
	border-radius: 25px;
	margin: 150px auto 30px;
	width:500px;
	padding: 50px 70px 70px 71px;
}

.join-form .form-group {
	margin-bottom: 10px;
}

.join-form {
	text-align: center;
}

.join-form  .btn.btn-primary {
	background: #f0ad4e none repeat scroll 0 0;
	border-color: #f0ad4e;
	color: #ffffff;
	font-size: 14px;
	width: 100%;
	height: 50px;
	line-height: 50px;
	padding: 0;
}

.botto-text {
	color: #ffffff;
	font-size: 14px;
	margin: auto;
}

.join-form .btn.btn-primary.reset {
	background: #ff9900 none repeat scroll 0 0;
}

.back {
	text-align: left;
	margin-top: 10px;
}

.back a {
	color: #444444;
	font-size: 13px;
	text-decoration: none;
}
</style>
<body id="JoinForm">
<div class="container">
	<div class="join-form">
		<div class="main-div">
		    <div class="panel">
			    <h1>회원가입</h1>
			    <p>가입할 정보를 입력하세요.</p>
		    </div>
		    <form id="Join" action="${cpath}/join.do" method="post">
		        <div class="form-group">
		            <input type="text" class="form-control" name="member_id" id="id" placeholder="Id">
		        </div>
		
		        <div class="form-group">
		            <input type="password" class="form-control" name="member_pwd" id="pw" placeholder="Password">
		        </div>
		        
		        <div class="form-group">
		            <input type="text" class="form-control" name="member_nickname" id="nickname" placeholder="Nick">
		        </div>
		        
		        <div class="form-group">
		            <input type="text" class="form-control" name="member_name" id="name" placeholder="Name">
		        </div>
		        
		        <div class="form-group">
		            <input type="text" class="form-control" name="member_email" id="email" placeholder="Email">
		        </div>
		        
		        <div class="form-group">
		            <input type="text" class="form-control" name="member_phone" id="phone" placeholder="Phone">
		        </div>
		        
		        <button type="submit" class="btn btn-primary">JOIN</button>
		    </form>
		</div>
	</div>
</div>

</body>
</html>
