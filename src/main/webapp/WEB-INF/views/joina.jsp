<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="cpath" value="${pageContext.request.contextPath}"/> 
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/CSS/join.css" />
<script src="https://unpkg.com/masonry-layout@4/dist/masonry.pkgd.min.js"></script>
<script src="https://unpkg.com/masonry-layout@4/dist/masonry.pkgd.js"></script>
<script src="resources/js/main.85741bff.js"></script> 
</head>     
<body>

  <div class="dialog__inner">
    <button class="button2 button-close close" >╳</button>
    <div class="dialog__content">
      <h1>환영합니다</h1>
      <h4>당신의 플레이팅을 뽐내보세요!</h4>
      <form action="${cpath}/register.do" method="post" id="joinForm">
        <input  class="form" name="member_id" placeholder="아이디"/>
        <br><br>
        <input  type="password" class="form" name="member_pwd" placeholder="비밀번호"/>
        <br><br>
        <input  autocomplete="nickname" class="form" name="member_nickname" placeholder="닉네임"/>
        <br><br>
        <input  autocomplete="name" class="form" name="member_name" placeholder="이름"/>
        <br><br>
        <input  autocomplete="email" class="form" name="member_email" placeholder="이메일"/>
        <br><br>
        <input  autocomplete="tel" class="form" name="member_phone" placeholder="연락처"/>

      
    </form>
      <footer class="dialog__footer">
        <button form="joinForm" type="submit" class="abutton close" style="margin: bottom 50px;">가입완료!</button>             
        <p class style="margin-bottom: 16px; margin-top: 16px; overflow: hidden; text-align: center;
                      font-size: 14px;font-weight: bold;">
                     
       
      </footer> 
    </div>  
  </div>



</body>
</html>