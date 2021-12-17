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
                <img src="images\메뉴바.png">
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
      <br>  
  </div>
</div>
  <!--재료 타이틀-->
  <section>
    <div class="goods-title">
      <p class="goods-intro">
        <span class="goods-text">INGREDIENT</span>
      </p>
   </div>

   <!--재료 보여주기-->
   <div class="slideshow-container">
    <c:forEach var="vo" items="${ingredient_list}">
	    <div class="mySlidesfirst">
	      <div class="numbertext">1 / ${fn:length(ingredient_list)} </div>
	        <img src="<spring:url value='/image/${vo.ingre_pic}'/>" style="width: 80vw; height : 25vh;" class="listed-img">
	    </div>
    </c:forEach>
    
    <div>
      <a class="prev" onclick="plusSlidesfirst(-1)">&#10094;</a>
      <a class="next" onclick="plusSlidesfirst(1)">&#10095;</a>
    </div>
    
    </div>
    <br>
    
    <div style="text-align:center">
      <span class="dot_first" onclick="currentSlidefirst(1)"></span> 
      <span class="dot_first" onclick="currentSlidefirst(2)"></span> 
      <span class="dot_first" onclick="currentSlidefirst(3)"></span> 
    </div>
  
  <!--중간간격-->
  <div class="middle"></div>


  <section>
      <div class="goods-title">
        <p class="goods-intro">
          <span class="goods-text">PLATING</span>
        </p>
     </div>
     <!--플레이팅 보여주기-->
     <div class="slideshow-container">
     <c:forEach var="vo" items="${my_plating_list}">
     <a href="${cpath}/detail.do?plating_seq=${vo.plating_seq}">
	    <div class="second">
	      <div class="numbertext">1 / ${fn:length(my_plating_list)}  </div>
	        <img src="<spring:url value='/image/${vo.plating_pic}'/>" style="width: 80vw; height : 25vh;" class="listed-img">
	    </div>
    </c:forEach>
    </a>
     
      
      <div >
        <a class="prev" onclick="plusSlidessecond(-1)">&#10094;</a>
        <a class="next" onclick="plusSlidessecond(1)">&#10095;</a>
      </div>
      
      
      </div>
      <br>
      
      <div style="text-align:center">
        <span class="dot_second" onclick="currentSlidesecond(1)"></span> 
        <span class="dot_second" onclick="currentSlidesecond(2)"></span> 
        <span class="dot_second" onclick="currentSlidesecond(3)"></span> 
      </div>
    <section>
<script>
  //첫 번째 ingredient
    var slideIndexfirst = 1;
    showSlidesfirst(slideIndexfirst);

    function plusSlidesfirst(n) {
      showSlidesfirst(slideIndexfirst += n);
    }

    function currentSlidefirst(n) {
      showSlidesfirst(slideIndexfirst = n);
    }

    function showSlidesfirst(n) {
      var i;
      var slidesfirst = document.getElementsByClassName("mySlidesfirst");
      var dots_first = document.getElementsByClassName("dot_first");
      
      if (n > slidesfirst.length) {slideIndexfirst = 1}
      if (n < 1) {slideIndexfirst = slidesfirst.length}

      for (i = 0; i < slidesfirst.length; i++) {
        slidesfirst[i].style.display = "none";  
      }
      for (i = 0; i < dots_first.length; i++) {
          dots_first[i].className = dots_first[i].className.replace(" active", "");
      }
      slidesfirst[slideIndexfirst-1].style.display = "block";  
      dots_first[slideIndexfirst-1].className += " active";
    }


//두번째 부분
    var slideIndexsecond = 1;
    showSlide(slideIndexsecond);

    function plusSlidessecond(b) {
      showSlide(slideIndexsecond += b);
    }

    function currentSlidesecond(b) {
      showSlide(slideIndexsecond = b);
    }

    function showSlide(b) {
      var a;
      var second = document.getElementsByClassName("second");
      var dots_second = document.getElementsByClassName("dot_second");
      
      if (b > second.length) {slideIndexsecond = 1}
      if (b < 1) {slideIndexsecond = second.length}

      for (a = 0; a < second.length; a++) {
        second[a].style.display = "none";  
      }

      for (a = 0; a < dots_second.length; a++) {
        dots_second[a].className = dots_second[a].className.replace(" active", "");
      }

      second[slideIndexsecond-1].style.display = "block";  
      dots_second[slideIndexsecond-1].className += " active";
    }

  </script>


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