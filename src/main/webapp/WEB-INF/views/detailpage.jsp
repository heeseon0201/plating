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
  <meta content="IE=edge" http-equiv="X-UA-Compatible">
  <meta content="width=device-width,initial-scale=1" name="viewport">
  <meta content="description" name="description">
  <meta name="google" content="notranslate" />
  <meta content="Mashup templates have been developped by Orson.io team" name="author">

  <!-- Disable tap highlight on IE -->
  <meta name="msapplication-tap-highlight" content="no">
  
  <link href="./assets/apple-icon-180x180.png" rel="apple-touch-icon">
  <link href="./assets/favicon.ico" rel="icon">



  <title>마이페이지</title>  

<link href="main.css" rel="stylesheet">

<style>
  article {
  margin-bottom: 5%;
  background-color: rgb(255, 255, 255);
  border-radius: 10px;
  border: 1px solid #dbdbdb;
  margin-right: 5vw;
}
textarea{
  width: 100%;
  height: 6.25em
}
.userID main-id point-span{
  font-size: 50px;
}

</style>
<!--<link href="마이페이지(수정완료)\style\detailpage.css" rel="stylesheet">-->
</head>
<body>
<!-- Add your content of header -->
<header class="">
  <div class="navbar navbar-default visible-xs">
    <button type="button" class="navbar-toggle collapsed">
      <span class="sr-only">Toggle navigation</span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
    </button>
    <a href="./index.html" class="navbar-brand">Mashup Template</a>
  </div>

  <header class="">
    <div class="navbar navbar-default visible-xs">
      <button type="button" class="navbar-toggle collapsed">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a href="./index.html" class="navbar-brand">Main</a>
    </div>
  
    <nav class="sidebar">
      <div class="navbar-collapse" id="navbar-collapse">
        <div class="site-header hidden-xs">
            <a class="site-brand" href="메인바1.html" title="">
              <p class="material-icons-outlined">
                <img src="메뉴바.png">
              </p> 
              <img class="img-responsive site-logo" alt="" src="./assets/images/mashup-logo.svg">
              Main
            </a> 
        </div>
        <ul class="nav">
          <li><a href="./index.html" title="">Home</a></li>
          <li><a href="./about.html" title="">About</a></li>
          <li><a href="./services.html" title="">Services</a></li>
          <li><a href="./components.html" title="">Components</a></li>
          <li><a href="./components.html" title="">My Plating</a></li>
        </ul>
      </div> 
    </nav>
  </header>
  <main class="" id="main-collapse">

      <nav class="nav-footer">
        
       
      </nav>  
    </div> 
  </nav>
</header>
<main class="" id="main-collapse">


<div class="row">
  <div class="col-xs-12 col-md-8">

    <div class="section-container-spacer">
        <h1>마이페이지</h1>
        <div class="feeds">
          <!--사진의 상세부분-->
          <article>
            <!--닉네임 부분-->
            <header>
              <div class="profile-of-article">
                <svg xmlns="http://www.w3.org/2000/svg" width="10%" height="4%" fill="currentColor" class="bi bi-person-fill" viewBox="0 0 16 16">
                  <path d="M3 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H3zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"/>
                </svg>
                <span class="userID main-id point-span">nickname</span>
              </div>
            </header>
            <!--플레이팅 사진-->
            <div class="main-image">
              <img src="마이페이지(수정완료)\img-0412.jpg" class="main-img" />
            </div>
            <!--별점-->
            <div class="icons-react">
              <div class="icons-left">
                <svg xmlns="http://www.w3.org/2000/svg" width="3vw" height="3vh" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
                  <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
                </svg>
                <svg xmlns="http://www.w3.org/2000/svg" width="3vw" height="3vh" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
                  <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
                </svg>
                <svg xmlns="http://www.w3.org/2000/svg" width="3vw" height="3vh" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
                  <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
                </svg>
                <svg xmlns="http://www.w3.org/2000/svg" width="3vw" height="3vh" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
                  <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
                </svg>
                <svg xmlns="http://www.w3.org/2000/svg" width="3vw" height="3vh" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
                  <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
                </svg>
              </div>
            </div>
            <!-- 플레이팅의 설명 부분 -->
            <div class="description">
              2021.03.21.<br />
              스테이크 플레이팅
            </div>
            <textarea style="resize: none;">
              Lorem ipsum dolor sit amet consectetur, adipisicing elit. Repudiandae quod iure architecto labore a quia totam numquam, accusantium, 
              excepturi ipsa, odit iusto eaque ut magnam nam atque ullam soluta? Vitae!
            </textarea>
          </article>
        </div><div class="feeds">
          <!--사진의 상세부분-->
          <article>
            <!--닉네임 부분-->
            <header>
              <div class="profile-of-article">
                <svg xmlns="http://www.w3.org/2000/svg" width="10%" height="4%" fill="currentColor" class="bi bi-person-fill" viewBox="0 0 16 16">
                  <path d="M3 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H3zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"/>
                </svg>
                <span class="userID main-id point-span">nickname</span>
              </div>
            </header>
            <!--플레이팅 사진-->
            <div class="main-image">
              <img src="<spring:url value='/image/${vo.plating_pic}'/>" class="main-img" />
            </div>
            <!--별점-->
            <div class="icons-react">
              <div class="icons-left">
              <c:forEach begin="1" end="${rating}">
                <svg xmlns="http://www.w3.org/2000/svg" width="3vw" height="3vh" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
                  <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
                </svg>
               </c:forEach>
              </div>
            </div>
            <!-- 플레이팅의 설명 부분 -->
            <div class="description">
              ${platingVO.plating_reg_date}<br />
            ${platingVO.plating_content}
            </div>
            
            <textarea style="resize: none;">
				${platingVO.plating_content}
            </textarea>
          </article>
        </div>
    </div>

    <div class="section-container-spacer">
       <!--상품 타이틀-->
    <section class="goods_inner">
      <div class="goods-title">
        <p class="goods-intro">
          함께 보면 <span class="goods-text"> 좋은 플레이팅 상품</span>이에요
        </p>
     </div>
     <!--상품 보여주기-->
     <div class="slideshow-container">
	      <div class="mySlides">
	        <div class="numbertext">1 / 1</div>
	          <img src="<spring:url value='/image/${goods_picture.goods_pic1}'/>" style="width: 80vw; height : 25vh;" />
	      </div>
	      <div class="mySlides">
	        <div class="numbertext">1 / 2</div>
	          <img src="<spring:url value='/image/${goods_picture.goods_pic2}'/>" style="width: 80vw; height : 25vh;" />
	      </div>
	      <div class="mySlides">
	        <div class="numbertext">1 / 3</div>
	          <img src="<spring:url value='/image/${goods_picture.goods_pic3}'/>" style="width: 80vw; height : 25vh;" />
	      </div>
      
      <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
      <a class="next" onclick="plusSlides(1)">&#10095;</a>
      
      </div>
      <br>
      
      <div style="text-align:center">
        <span class="dot" onclick="currentSlide(1)"></span> 
        <span class="dot" onclick="currentSlide(2)"></span> 
        <span class="dot" onclick="currentSlide(3)"></span> 
      </div>
    <section>
      <script>
        var slideIndex = 1;
        showSlides(slideIndex);
        function plusSlides(n) {
          showSlides(slideIndex += n);
        }
        function currentSlide(n) {
          showSlides(slideIndex = n);
        }
        function showSlides(n) {
          var i;
          var slides = document.getElementsByClassName("mySlides");
          var dots = document.getElementsByClassName("dot");
          if (n > slides.length) {slideIndex = 1}    
          if (n < 1) {slideIndex = slides.length}
          for (i = 0; i < slides.length; i++) {
              slides[i].style.display = "none";  
          }
          for (i = 0; i < dots.length; i++) {
              dots[i].className = dots[i].className.replace(" active", "");
          }
          slides[slideIndex-1].style.display = "block";  
          dots[slideIndex-1].className += " active";
        }
      </script>
    </div>

    
  </div>
  
</div>
    


</main>

<script>
document.addEventListener("DOMContentLoaded", function (event) {
  navbarToggleSidebar();
  navActivePage();
});
</script>

<!-- Google Analytics: change UA-XXXXX-X to be your site's ID 

<script>
  (function (i, s, o, g, r, a, m) {
    i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
      (i[r].q = i[r].q || []).push(arguments)
    }, i[r].l = 1 * new Date(); a = s.createElement(o),
      m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
  })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');
  ga('create', 'UA-XXXXX-X', 'auto');
  ga('send', 'pageview');
</script>

--> <script type="text/javascript" src="main.85741bff.js"></script>



















</body>
</html>