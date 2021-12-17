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
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>메인(핀터레스트)</title>
    <script src="https://unpkg.com/masonry-layout@4/dist/masonry.pkgd.min.js"></script>
    <script src="https://unpkg.com/masonry-layout@4/dist/masonry.pkgd.js"></script>
    <link rel="stylesheet"  href="CSS\main.css">
    <link rel="stylesheet"  href="CSS\tabbar.css">
    <link href="https://fonts.googleapis.com/
    icon?family=Material+Icons|Material+Icons+Sharp|Material+Icons+Two+Tone|Material+Icons+Outlined"
    rel="stylesheet">
   <style>
    .form-control{
      border-radius: 15px;
      height: 100px;
      background-color:#fafafa;
    }
    .under_button{
      width: 100px;
      height: 80px;
     /* padding-left: 50;
     padding-right: 100px; */
      
      ;
    }
    #main_header{
      width: 30%;
      height: 45px;
      
    }
    .input-group{
      /* padding-top: 100px ;
      padding-right: 0px; 
      padding-bottom: 35px;
      padding-left: 200px ; */
    }
    

    .navbar-search pull-left{
      position: right;
    }
    #columns{
      column-width:350px;
      column-gap: 15px;
    }
    #columns figure{
     /* display: inline-block;
      border:1px solid rgba(0,0,0,0.2);
      margin:0;
      margin-bottom: 15px;
      padding:10px;
      box-shadow: 2px 2px 5px rgba(0,0,0,0.5);
      line-height:normal;*/
    }
    #columns figure img{
      width:100%;
      border-radius: 50px 20px 20px 50px;

    }
    #columns figure figcaption{
      border-top:1px solid rgba(0,0,0,0.2);
      padding:10px;
      margin-top:11px;
      opacity: 0.1;
    }
    .material-icons-outlined > img{
      height: 30px;
      width: 50px; 
    }
    .fixed-btn > a{
      position: fixed;
      bottom: 50px;
      width: 180px;
      left: 50%;
      height: 45px;
      line-height: 45px;
      bottom: 10%;
      right: 3%;
      color: black;
      text-align: center;
      
    }
    .fixed-btn > img{
      width: 100px;
      height: 1px;
    }
    #columns > div > span > a > img{
      padding-right: 300px;
      height: 10px;
      width: 10px;
    }
  footer {
  width: 100%;
  height: 130px;
  bottom: 0px;
  position: fixed;
  text-align: center;
  padding-top: 15px;
  color: #808080;
  font-size: 11px;
}

  </style>
</head>
<body>
<script src="main.85741bff.js"></script> 

<!--메인헤더-->
<div id="wrap">
  <header id="main_header">
    <img src="images\2.jpg">
  </header>
</div>

<!--네비바-->



<!--사이드바*버튼(오른쪽)-->
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

<!--검색창-->
<div style="display: flex; justify-content: center;">
  <img src="camera (1).svg" onclick="#" style="width: 50px; height: 50px; margin-right: 2%;">
  <input placeholder="검색" style="width: 900px; height: 50px; margin"/>
  <button style="width: 90px; height: 50px;">찾기</button>
</div>
<br>
<div style="position: absolute;
left: 55%;
transform: translateX(-50%);">
  <span>
  <button class="filter-button filter-active" style="width: 100px;  " data-translate-value="0" >
    로그인
  </button>
</span>
<span></span>
  <button class="filter-button" style="width: 100px; " data-translate-value="100%">
    회원가입
  </button>
</span>
<span></span>
  <button class="filter-button" style="width: 100px;" data-translate-value="200%">
    사진
  </button>
</span>
</div>
<br><br>

<div class="filter-slider" aria-hidden="true">
  <div class="filter-slider-rect">&nbsp;</div>
</div>
</div>
</div>
<div class="main-tabs-container">
<div class="main-tabs-wrapper">
<ul class="main-tabs" style="display: flex; justify-content: center; border: double; background-image:images\배경.png ;">
  <li>
    <button class="round-button" data-translate-value="0" style="background-color: #EEddd6;">
      <span class="avatar">
        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-chat-square-text" viewBox="0 0 16 16">
          <path d="M14 1a1 1 0 0 1 1 1v8a1 1 0 0 1-1 1h-2.5a2 2 0 0 0-1.6.8L8 14.333 6.1 11.8a2 2 0 0 0-1.6-.8H2a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1h12zM2 0a2 2 0 0 0-2 2v8a2 2 0 0 0 2 2h2.5a1 1 0 0 1 .8.4l1.9 2.533a1 1 0 0 0 1.6 0l1.9-2.533a1 1 0 0 1 .8-.4H14a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2z"/>
          <path d="M3 3.5a.5.5 0 0 1 .5-.5h9a.5.5 0 0 1 0 1h-9a.5.5 0 0 1-.5-.5zM3 6a.5.5 0 0 1 .5-.5h9a.5.5 0 0 1 0 1h-9A.5.5 0 0 1 3 6zm0 2.5a.5.5 0 0 1 .5-.5h5a.5.5 0 0 1 0 1h-5a.5.5 0 0 1-.5-.5z"/>
        </svg>
      </span>
    </button>
  </li>
  <li>
    <button class="round-button gallery active" style="--round-button-active-color: #2962ff" data-translate-value="100%" data-color="blue" >
        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-emoji-smile" viewBox="0 0 16 16">
            <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
            <path d="M4.285 9.567a.5.5 0 0 1 .683.183A3.498 3.498 0 0 0 8 11.5a3.498 3.498 0 0 0 3.032-1.75.5.5 0 1 1 .866.5A4.498 4.498 0 0 1 8 12.5a4.498 4.498 0 0 1-3.898-2.25.5.5 0 0 1 .183-.683zM7 6.5C7 7.328 6.552 8 6 8s-1-.672-1-1.5S5.448 5 6 5s1 .672 1 1.5zm4 0c0 .828-.448 1.5-1 1.5s-1-.672-1-1.5S9.448 5 10 5s1 .672 1 1.5z"/>
          </svg>
        
    </button>
  </li>
  <li>
    <button class="round-button" style="--round-button-active-color: #00c853" data-translate-value="200%" data-color="green">
        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-emoji-heart-eyes" viewBox="0 0 16 16">
            <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
            <path d="M11.315 10.014a.5.5 0 0 1 .548.736A4.498 4.498 0 0 1 7.965 13a4.498 4.498 0 0 1-3.898-2.25.5.5 0 0 1 .548-.736h.005l.017.005.067.015.252.055c.215.046.515.108.857.169.693.124 1.522.242 2.152.242.63 0 1.46-.118 2.152-.242a26.58 26.58 0 0 0 1.109-.224l.067-.015.017-.004.005-.002zM4.756 4.566c.763-1.424 4.02-.12.952 3.434-4.496-1.596-2.35-4.298-.952-3.434zm6.488 0c1.398-.864 3.544 1.838-.952 3.434-3.067-3.554.19-4.858.952-3.434z"/>
          </svg>
          
    </button>
  </li>
  <li>
    <button class="round-button" style="--round-button-active-color: #aa00ff" data-translate-value="300%" data-color="purple">
        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-hand-thumbs-up" viewBox="0 0 16 16">
            <path d="M8.864.046C7.908-.193 7.02.53 6.956 1.466c-.072 1.051-.23 2.016-.428 2.59-.125.36-.479 1.013-1.04 1.639-.557.623-1.282 1.178-2.131 1.41C2.685 7.288 2 7.87 2 8.72v4.001c0 .845.682 1.464 1.448 1.545 1.07.114 1.564.415 2.068.723l.048.03c.272.165.578.348.97.484.397.136.861.217 1.466.217h3.5c.937 0 1.599-.477 1.934-1.064a1.86 1.86 0 0 0 .254-.912c0-.152-.023-.312-.077-.464.201-.263.38-.578.488-.901.11-.33.172-.762.004-1.149.069-.13.12-.269.159-.403.077-.27.113-.568.113-.857 0-.288-.036-.585-.113-.856a2.144 2.144 0 0 0-.138-.362 1.9 1.9 0 0 0 .234-1.734c-.206-.592-.682-1.1-1.2-1.272-.847-.282-1.803-.276-2.516-.211a9.84 9.84 0 0 0-.443.05 9.365 9.365 0 0 0-.062-4.509A1.38 1.38 0 0 0 9.125.111L8.864.046zM11.5 14.721H8c-.51 0-.863-.069-1.14-.164-.281-.097-.506-.228-.776-.393l-.04-.024c-.555-.339-1.198-.731-2.49-.868-.333-.036-.554-.29-.554-.55V8.72c0-.254.226-.543.62-.65 1.095-.3 1.977-.996 2.614-1.708.635-.71 1.064-1.475 1.238-1.978.243-.7.407-1.768.482-2.85.025-.362.36-.594.667-.518l.262.066c.16.04.258.143.288.255a8.34 8.34 0 0 1-.145 4.725.5.5 0 0 0 .595.644l.003-.001.014-.003.058-.014a8.908 8.908 0 0 1 1.036-.157c.663-.06 1.457-.054 2.11.164.175.058.45.3.57.65.107.308.087.67-.266 1.022l-.353.353.353.354c.043.043.105.141.154.315.048.167.075.37.075.581 0 .212-.027.414-.075.582-.05.174-.111.272-.154.315l-.353.353.353.354c.047.047.109.177.005.488a2.224 2.224 0 0 1-.505.805l-.353.353.353.354c.006.005.041.05.041.17a.866.866 0 0 1-.121.416c-.165.288-.503.56-1.066.56z"/>
          </svg>
    </button>
  </li>
  <li>
    <button class="round-button" style="--round-button-active-color: #ff6d00" data-translate-value="400%" data-color="orange">
        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-hand-thumbs-down-fill" viewBox="0 0 16 16">
            <path d="M6.956 14.534c.065.936.952 1.659 1.908 1.42l.261-.065a1.378 1.378 0 0 0 1.012-.965c.22-.816.533-2.512.062-4.51.136.02.285.037.443.051.713.065 1.669.071 2.516-.211.518-.173.994-.68 1.2-1.272a1.896 1.896 0 0 0-.234-1.734c.058-.118.103-.242.138-.362.077-.27.113-.568.113-.856 0-.29-.036-.586-.113-.857a2.094 2.094 0 0 0-.16-.403c.169-.387.107-.82-.003-1.149a3.162 3.162 0 0 0-.488-.9c.054-.153.076-.313.076-.465a1.86 1.86 0 0 0-.253-.912C13.1.757 12.437.28 11.5.28H8c-.605 0-1.07.08-1.466.217a4.823 4.823 0 0 0-.97.485l-.048.029c-.504.308-.999.61-2.068.723C2.682 1.815 2 2.434 2 3.279v4c0 .851.685 1.433 1.357 1.616.849.232 1.574.787 2.132 1.41.56.626.914 1.28 1.039 1.638.199.575.356 1.54.428 2.591z"/>
          </svg>
    </button>
  </li>
  <!-- <div class="menu"> -->
  <!-- <ul class="list">
      <li>Save</li>
      <li>Export to GitHub</li>
      <li>Delete</li>
      <li>Share</li>
    </ul>
  </div>-->

</ul>
<div class="main-slider" aria-hidden="true">
  <div class="main-slider-circle">&nbsp;</div>
</div>
</div>
</div>
</nav>


<!--화면방식-->
  </form>
    <div id="columns">
    <c:forEach var="vo" items="${plating_list}">
        <figure>
         <img src="<spring:url value='/image/${vo.plating_pic}'/>"/>
          <figcaption></figcaption>        
        </figure>
   </c:forEach>
      </div>
    </main>
      <footer>
        <div>
          <span class="fixed-btn">
            <p>
              <a href="."><img src="images\aside_icon_8.png"></a>
            </p>
          </span>
          <!--<span class="fixed-btn"><p>클릭!</p></span>--> 
        </div>
      </footer>

</body>
</html>