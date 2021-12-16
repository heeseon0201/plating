<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>메인(핀터레스트)</title>
    <script src="https://unpkg.com/masonry-layout@4/dist/masonry.pkgd.min.js"></script>
    <script src="https://unpkg.com/masonry-layout@4/dist/masonry.pkgd.js"></script>
    <link rel="stylesheet"  href="./main.css">
    <link href="https://fonts.googleapis.com/
    icon?family=Material+Icons|Material+Icons+Sharp|Material+Icons+Two+Tone|Material+Icons+Outlined"
    rel="stylesheet">
   <style>
    .input-group{
      border-radius: 20px;
    }
    #main_header{
      width: 15%;
      height: 45px;
    }
    .input-group{
      padding-top: 100px ;
      padding-right: 0px;
      padding-bottom: 35px;
      padding-left: 300px ;
    }

    .navbar-search pull-left{
      position: right;
    }
    #columns{
      column-width:350px;
      column-gap: 15px;
    }
    #columns figure{
      display: inline-block;
      border:1px solid rgba(0,0,0,0.2);
      margin:0;
      margin-bottom: 15px;
      padding:10px;
      box-shadow: 2px 2px 5px rgba(0,0,0,0.5);
      line-height:normal;
    }
    #columns figure img{
      width:100%;
      border-radius: 50px 20px 20px 50px;
    }
    #columns figure figcaption{
      border-top:1px solid rgba(0,0,0,0.2);
      padding:10px;
      margin-top:11px;
    }

  </style>
</head>
<body>
<script src="main.85741bff.js"></script> 
<!--메인헤더-->
<div id="wrap">
  <header id="main_header">
    <img src="images/2.jpg">
  </header>
</div>


<!--사이드바*버튼(오른쪽)-->
<header class="">
  <div class="navbar navbar-default visible-xs">
    <button type="button" class="navbar-toggle collapsed">
      <span class="sr-only">Toggle navigation</span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
    </button>
    <a href="./index.html" class="navbar-brand"> template</a>
  </div>

  <nav class="sidebar">
    <div class="navbar-collapse" id="navbar-collapse">
      <div class="site-header hidden-xs">
          <a class="site-brand" href="./index.html" title="">
            <img class="img-responsive site-logo" alt="" src="./assets/images/mashup-logo.svg">
            Main
          </a>
        <p></p>
      </div>
      <ul class="nav">
        <li><a href="./index.html" title="">Home</a></li>
        <li><a href="./about.html" title="">About</a></li>
        <li><a href="./services.html" title="">Services</a></li>
        <li><a href="./contact.html" title="">Contact</a></li>
        <li><a href="./components.html" title="">Components</a></li>

      </ul>
    </div> 
  </nav>
</header>
<main class="" id="main-collapse">

<!--검색창-->
<div class="input-group">
  <input class="form-control" placeholder="검색" />
  <span class="input-group-addon">찾기</span>
</div>

<!--화면방식-->
  </form>
    <div id="columns">
        <figure>
          <img src="images/img-01.jpg">
          <figcaption></figcaption>
        </figure>
   
        <figure>
          <img src="images/img-02.jpg">
          <figcaption></figcaption>
        </figure>
   
        <figure>
          <img src="images/img-03.jpg">
          <figcaption></figcaption>
        </figure>
   
        <figure>
          <img src="images/img-04.jpg">
          <figcaption></figcaption>
        </figure>
   
        <figure>
          <img src="images/img-05.jpg">
          <figcaption></figcaption>
        </figure>
   
        <figure>
          <img src="images/img-06.jpg">
          <figcaption></figcaption>
        </figure>
   
        <figure>
          <img src="images/img-07.jpg">
          <figcaption></figcaption>
        </figure>    
   
        <figure>
          <img src="images/img-10.jpg">
          <figcaption></figcaption>
        </figure>
   
        <figure>
          <img src="images/img-11.jpg">
          <figcaption></figcaption>
        </figure>   
      </div> 
      
       	<div id="fileUpload">
       
	      <form action="/web/fileupload.file" method=post enctype="multipart/form-data">
	 
	      <input type="file" name="file">
	      <input type="submit" value="upload">
	      </form>
     
     	 </div>
</body>
</html>
    