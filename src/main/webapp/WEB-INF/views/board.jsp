<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   
<c:set var="cpath" value="${pageContext.request.contextPath}"/> 
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script type="text/javascript">
    $(document).ready(()=>{
    	loadList();
    });   
    function loadList(){
      $.ajax({
    	  url : "${cpath}/boardListJson.do",
    	  type : "GET",
    	  //data : {   }
    	  dataType : "json",
    	  success : callBack,
    	  error : function(){ alert("error"); }
    	  
      });	
    }                         //          0       1       2 ........ 
    function callBack(data){  // data=[{Board},{Board},{Board}] =>foreach()
    	var view="<table class='table table-bordered'>";
    	view+="<tr>";
    	view+="<td>번호</td>";
    	view+="<td>제목</td>";
    	view+="<td>작성자</td>";
    	view+="<td>조회수</td>";
    	view+="<td>수정</td>";
    	view+="<td>삭제</td>";
    	view+="</tr>";    	
    	$.each(data, (index, vo)=>{
    		view+="<tr>";
        	view+="<td id='idx"+index+"'>"+vo.idx+"</td>";
        	view+="<td id='t"+index+"'><a href='javascript:contentView("+index+")'>"+vo.title+"</a></td>";
        	view+="<td id='w"+index+"'>"+vo.writer+"</td>";
        	view+="<td>"+vo.count+"</td>";
        	if(${!empty userVO}){ // 로그인을 했을경우
        	 if('${userVO.userId}'==vo.userId){	
        	  view+="<td id='u"+index+"'><button class='btn btn-success btn-sm' onclick='updateFn1("+index+")'>수정</button></td>";
        	  view+="<td><button class='btn btn-warning btn-sm' onclick='deleteFn("+vo.idx+")'>삭제</button></td>";
        	 }else{
        	  view+="<td id='u"+index+"'><button disabled class='btn btn-success btn-sm' onclick='updateFn1("+index+")'>수정</button></td>";
              view+="<td><button disabled class='btn btn-warning btn-sm' onclick='deleteFn("+vo.idx+")'>삭제</button></td>";	        			         		 
        	 }
        	}else{
             view+="<td id='u"+index+"'><button disabled class='btn btn-success btn-sm' onclick='updateFn1("+index+")'>수정</button></td>";
             view+="<td><button disabled class='btn btn-warning btn-sm' onclick='deleteFn("+vo.idx+")'>삭제</button></td>";	        		
        	}
        	view+="</tr>";
        	
        	view+="<tr id='cv"+index+"' style='display:none'>";
        	view+="<td>내용</td>";
        	view+="<td colspan='5'>";
        	view+="<textarea id='ct"+vo.idx+"' rows='5' class='form-control'>"+vo.contents+"</textarea>";
        	if(${!empty userVO}){
        	  if('${userVO.userId}'==vo.userId){	
        	   view+="<br><button class='btn btn-success btn-sm' onclick='updateFn("+vo.idx+")'>수정하기</button>&nbsp;";
        	  }else{
        	   view+="<br><button disabled class='btn btn-success btn-sm' onclick='updateFn("+vo.idx+")'>수정하기</button>&nbsp;";	  
        	  }
        	}else{
        	  view+="<br><button disabled class='btn btn-success btn-sm' onclick='updateFn("+vo.idx+")'>수정하기</button>&nbsp;";	
        	}        	
        	view+="<button class='btn btn-warning btn-sm' onclick='closeFn("+index+")'>닫기</button>";
        	view+="</td>";
        	view+="</tr>";
    	});
    	 // 회원인증여부를 판단하는 부분
    	  if(${!empty userVO}){
	    	view+="<tr>";
	    	view+="<td colspan='6'>";
	    	view+="<button class='btn btn-primary btn-sm' onclick='writeFn()'>글쓰기</button>";
	        view+="</td>";
	    	view+="</tr>";
    	  }
    	view+="</table>";
    	$(".panel-body").html(view);
    	$(".panel-body").slideDown();
    	//$(".panel-body").css("display", "block");
    	$("#wform").css("display","none");
    }
    function updateFn1(index){
    	var title=$("#t"+index).text();
    	var newTitle="<input type='text'  id='title"+index+"'  class='form-control' value='"+title+"'>";
    	$("#t"+index).html(newTitle);
    	
    	var writer=$("#w"+index).text();
    	var newWriter="<input type='text' id='writer"+index+"' class='form-control' value='"+writer+"'>";
    	$("#w"+index).html(newWriter);
    	
    	var newButton="<button class='btn btn-info btn-sm' onclick='updateGo("+index+")'>수정하기</button>";
    	$("#u"+index).html(newButton);
    }
    function updateGo(index){
    	// idx, title, writer
    	var idx=$("#idx"+index).text();
    	var title=$("#title"+index).val();
    	var writer=$("#writer"+index).val();
    	$.ajax({
    		url : "${cpath}/boardTitleWriterUpdate.do",
    		type : "post",
    		data : {"idx":idx,"title":title,"writer":writer},
    		success : loadList,
    		error : function(){ alert("error"); }
    	});    	
    }
    function deleteFn(idx){
    	$.ajax({
    		url : "${cpath}/boardDelete.do",
    		type : "get",
    		data : {"idx":idx},
    		success : loadList,
    		error : function(){ alert("error"); }    		
    	});
    }
    function updateFn(idx){
    	var contents=$("#ct"+idx).val();
    	$.ajax({
    		url : "${cpath}/boardContentUpdate.do",
    		type : "post",
    		data : {"idx":idx, "contents":contents}, // ->Board
    		success : loadList,
    		error : function(){ alert("error"); }
    	});
    }
    function closeFn(index){
    	$("#cv"+index).css("display","none"); //닫기
    }
    function contentView(index){
    	if($("#cv"+index).css("display")=="none"){
    		$("#cv"+index).css("display","table-row");
    	}else{
    		$("#cv"+index).css("display","none");
    	}    	
    }
    function writeFn(){
    	$(".panel-body").slideUp();
    	//$(".panel-body").css("display", "none");
    	$("#wform").css("display", "block");
    }
    function checkFn(){
        //title, contents, writer
        var title=$("#title").val();
        if(title==""){
      	  alert("제목을 입력하세요");
      	  $("#title").focus();
      	  return false;
        }
        var contents=$("#contents").val();
        if(contents==""){
      	  alert("내용을 입력하세요");
      	  $("#contents").focus();
      	  return false;
        }
        var writer=$("#writer").val();
        if(writer==""){
      	  alert("작성자를 입력하세요");
      	  $("#writer").focus();
      	  return false;
        }
        // form에 있는 파라메터를 가지고와서 Ajax통신으로 저장
        var frmData=$("#frm").serialize();
        //alert(frmData);
        $.ajax({
        	url : "${cpath}/boardInsert.do",
        	type : "post",
        	//data : {"title":title,"contents":contents,"writer":writer},
        	data : frmData,
        	success : loadList,
        	error : function(){ alert("error"); }  
        });
        // form 초기화
        //$("#title").val("");
        //$("#contents").val("");
        //$("#writer").val("");
        $("#reset").trigger("click");
      }  
      function logOutFn(){
    	  location.href="${cpath}/logout.do";
      }
  </script>
</head>
<body>
<div class="container">
  <h2>Spring MVC BOARD(Ajax+JSON+LOGIN)</h2>
  <div class="panel panel-default">
    <div class="panel-heading">
         <c:if test="${userVO==null}">
		 <form class="form-inline" action="${cpath}/login.do" method="post">
		  <div class="form-group">
		    <label for="userId">아이디:</label>
		    <input type="text" class="form-control" id="userId" name="userId">
		  </div>
		  <div class="form-group">
		    <label for="userPwd">패스워드:</label>
		    <input type="password" class="form-control" id="userPwd" name="userPwd">
		  </div>
		  <button type="submit" class="btn btn-default">로그인</button>
		</form>
		</c:if>
		<c:if test="${userVO!=null}">
		   <label>${userVO.userName}님 방문을 환영합니다.</label>
		   <button class="btn btn-primary btn-sm" onclick="logOutFn()">로그아웃</button>
		</c:if>
    </div>
    <div class="panel-body" style="display: none"></div>
    <div id="wform" style="display: none">
       <form id="frm" class="form-horizontal">
          <input type="hidden" name="userId" value="${userVO.userId}"> 
		  <div class="form-group">
		    <label class="control-label col-sm-2" for="title">제목:</label>
		    <div class="col-sm-10">
		      <input type="text" class="form-control" name="title" id="title" placeholder="Enter title">
		    </div>
		  </div>
		  <div class="form-group">
		    <label class="control-label col-sm-2" for="contents">내용:</label>
		    <div class="col-sm-10">
		      <textarea rows="7" class="form-control" name="contents" id="contents"></textarea>
		    </div>
		  </div>
		  <div class="form-group">
		    <label class="control-label col-sm-2" for="writer">작성자:</label>
		    <div class="col-sm-10">
		      <input type="text" class="form-control" name="writer" id="writer" value="${userVO.userName}" readonly="readonly">
		    </div>
		  </div>		 
		  <div class="form-group">
		    <div class="col-sm-offset-2 col-sm-10">
		      <button type="button" class="btn btn-primary btn-sm" onclick="checkFn()">등록</button>
		      <button type="reset" class="btn btn-warning btn-sm" id="reset">취소</button>
		    </div>
		  </div>
		</form>    
    </div>   
    <div class="panel-footer">지능형 빅데이터 분석 서비스 개발자과정(박매일)</div>
  </div>
</div>
</body>
</html>