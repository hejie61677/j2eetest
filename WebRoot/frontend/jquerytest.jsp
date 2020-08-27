<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE>
<html>
  <head>
    <base href="<%=basePath%>">   
    <title>JqueryTest</title>
	<link rel="stylesheet" type="text/css" href="<%=basePath%>frontend/styles.css">
	<script src="${basePath}frontend/jquery.min.js"></script>

  </head>
  
  <body>
  	<div>first div</div>
  	<br>
    <button id="b1">隐藏div</button>
	<button id="b2">显示div</button> 
	<br> 
	<div id="d1">这是一个div</div>
	<button id="b3">增加背景色</button>
	<br><br> 
	<div id="d2">css函数</div>
	<button id="b4">调用css函数</button>
	<br><br>
	<button id="b5">第一个增加背景色</button>
  	<button id="b6">最后一个增加背景色</button>
  	<br><br>
	<span>输入账号：</span><input id="name" type="text">
	<div id="checkResult"></div>
	<br>
  	<div>last div</div>
  </body>

<script type="text/javascript">
	$(function() {
		$("#b1").click(function() {
			$("#d1").hide();
			$("#b3").hide();
		});
		$("#b2").click(function() {
			$("#d1").show();
			$("#b3").show();
		});
		$("#b3").click(function() {
//			$("#d").addClass("red");
//			$("#d").removeClass("red");
			$("#d1").toggleClass("red"); 
		});
		$("#b4").click(function() {
			$("#d2").css({"background-color":"green","color":"red","width":"100px"})
		});
		$("#b5").click(function(){
      		$("div:first").toggleClass("pink");
   		});     
   		$("#b6").click(function(){
      		$("div").last().toggleClass("pink");
   		});
   		$("#name").keyup(function(){
     		var page = "https://how2j.cn/study/checkName.jsp";
     		var value = $(this).val();
        	$.ajax({
            	url: page,
            	data:{"name":value},
            	success: function(result){
              		$("#checkResult").html(result);
            	}
        	});
   		});
	});
</script>
</html>
