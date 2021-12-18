<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<link href="login.css" rel="stylesheet">
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<style>
.login-form{
	border:solid;
	line-height:30px;
}
.main-div{
	border:solid;
	line-height:30px;
	border-radius:30px;
}

</style>
<body id="LoginForm">
<form name="homeForm" method="post" action="/login.do"></form>
	<c:if test="${userVO == null}">
		<div class="login-form">
			<div class="main-div">
			    <div class="panel">
				    <h1>로그인</h1>
				    <p>로그인 정보를 입력하세요.</p>
			    </div>
			    <form id="Login" action="${cpath}/login.do" method="post">
			        <div class="form-group">
			            <input type="text" class="form-control" name ="member_id" id="member_id" placeholder="Id">
			        </div>
			        <div class="form-group">
			            <input type="password" class="form-control" name="member_pwd" id="member_pwd" placeholder="Password">
			        </div>
			        <button type="submit" class="btn btn-primary">LOGIN</button>
			    </form>
			</div>
		</div>
	</c:if>
	<c:if test="${userVO !=null}">
		<div class="container">
	<div class="main-div">
		<div class="panel">
			<h1>${userVO.member_id}를 환영합니다.</h1>
			<a href="logout.do">로그아웃</a>
			<a href="main.jsp"><button>메인으로</button></a>
		</div>
	</div>
	</c:if>
</form>
</body>
</html>

