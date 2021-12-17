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
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>



  <title>상세페이지</title>  

<link href="${cpath}/resources/CSS/main.css" rel="stylesheet">

<style>
body{
margin: 0 0 0 5vw;
}
  article {
  margin-bottom: 5%;
  background-color: rgb(255, 255, 255);
  border-radius: 10px;
  border: 1px solid #dbdbdb;
  margin-right: 5vw;
  width: 50vw;
  height: 65vw;
}
textarea{
  width: 50vw;
  height: 6.25em
}
.userID main-id point-span{
  font-size: 50px;
}
.saveBtn {
   width: 15px;
   height: 15px;
   margin: 3%;
   cursor: pointer;
}
.main-img{
vertical-align: middle;
  width: 50vw;
  height: 40vw;
}
p.goods-intro {
  margin-top: 10%;
  font-family: "Noto Sans KR", "Helvetica Neue", "Apple SD Gothic Neo",
    "맑은 고딕", "Malgun Gothic", "돋움", dotum, sans-serif;
  font-size: 150%;
  display: block;
}

.goods-text{
	color: #ff6360;
    font-weight: bold;
}
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
                <img src="resources/image/메뉴바.png">
              </p> 
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
        <h1>상세페이지</h1>
        <br>
        <div class="feeds">
          <!--사진의 상세부분-->
          <article style="width: 50vw; height:70vw;">
            <!--닉네임 부분-->
            <header>
              <div class="profile-of-article">
                <svg xmlns="http://www.w3.org/2000/svg" width="10%" height="4%" fill="currentColor" class="bi bi-person-fill" viewBox="0 0 16 16">
                  <path d="M3 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H3zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"/>
                </svg>
                <span class="userID main-id point-span" style="margin-bottom:1%">${userVO.member_id}</span>
              </div>
            </header>
            <!--플레이팅 사진-->
            <div class="main-image">
              <img src="<spring:url value='/image/${platingVO.plating_pic}'/>" class="main-img" />
            </div>
            <!--별점-->
            <div class="icons-react">
            <span onclick="likeOne()" style="margin-top: 10vh;">
              <img id="heart" src="resources/image/heart.svg" style="width:3vw; height:3vh;"/>
              <span id="like_people" style="margin-top: 10vh;">1</span>
            </span>
              <div class="icons-left" style="float:right;">
              <c:forEach begin="1" end="${rating}">
                <svg xmlns="http://www.w3.org/2000/svg" width="3vw" height="3vh" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
                  <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
                </svg>
               </c:forEach>
              </div>
            </div>
            <!-- 플레이팅의 설명 부분 -->
            <div class="description">
              ${platingVO.plating_reg_date}<br /><br>
            </div>
            
            <textarea style="resize: none;">
				${platingVO.plating_content}
            </textarea>
          </article>
        </div>
    </div>
<!-- 동영상보기 -->
     <div class="button-site">
        <button class="btn btn-light" onclick="goList()">동영상보기</button>
       </div>
    <div id="view" style="width: 50vw; height: 40vh; display: none; margin-bottom: 15vh;">
        <iframe width="100%" height="100%" src="https://www.youtube.com/embed/8HEBjTzEvJE" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
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
	          <img src="<spring:url value='/image/${goods_picture.goods_pic1}'/>" style="width: 50vw; height : 25vh;" />
	      </div>
	      <div class="mySlides">
	        <div class="numbertext">1 / 2</div>
	          <img src="<spring:url value='/image/${goods_picture.goods_pic2}'/>" style="width: 50vw; height : 25vh;" />
	      </div>
	      <div class="mySlides">
	        <div class="numbertext">1 / 3</div>
	          <img src="<spring:url value='/image/${goods_picture.goods_pic3}'/>" style="width: 50vw; height : 25vh;" />
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
        
        document.addEventListener("DOMContentLoaded", function (event) {
        	  navbarToggleSidebar();
        	  navActivePage();
        	});

        	//동영상보이게
        	function goList(){
        	  if ($('#view').css('display') == 'block') {
        	          $('#view').css('display', 'none');
        	      } else {
        	          $('#view').css('display', 'block');
        	      }
        	}
        	//좋아요
        	function likeOne(){ 
        	  if(document.getElementById("heart").src == "http://localhost:8081/web/resources/image/heart.svg"){
        	    document.getElementById("heart").src = "resources/image/heart-fill.svg"
        	    document.getElementById("like_people").innerText= Number(document.getElementById("like_people").innerText)+1;
        	  }else{
        	    document.getElementById("heart").src = "resources/image/heart.svg"
        	    document.getElementById("like_people").innerText= Number(document.getElementById("like_people").innerText)-1;
        	  }
        	};
      </script>
    </div>

    
  </div>
  
</div>
    


</main>
<script type="text/javascript" src="${cpath}/resources/js/main.85741bff.js">
</script>
</body>
</html>