<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE>
<html>
  <head>
    <base href="<%=basePath%>">  
    <title>JspTest</title>
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  	<div>
  		<iframe src="<%=basePath%>frontend/csstest.jsp" width="80%" height="80%">
		</iframe>
	</div>
  	<span>输入账号：</span>
  	<input id ="name" name="name" onkeyup="check()" type="text"/>
  	<span id="checkResult"></span>
  	<table>
  	<tr>
  		<td><input id ="fristNum" name="fristNum" type="text"/></td>
  		<td>+</td>
  		<td><input id ="secondNum" name="secondNum" type="text"/></td>
  		<td>=</td>
  		<td><span id="sumResult"></span></td>
  	</tr>
  	<tr>
  		<td><input type="button" value="计算" onclick="sumResult();"/></td>
  	</tr>
  	</table>
  	
<!--客户端跳转 -->  <%//response.sendRedirect("hello.jsp");%>
<!--服务端跳转 -->  <%-- <jsp:forward page="hello.jsp"/>--%>
  </body>
  
<script type="text/javascript">
	window.onload = function() {
		fn(1);
		var b = 1;
		alert(typeof b)
	}
	var xmlhttp;
	function check() {
		var name = document.getElementById("name").value;
		var url = "http://how2j.cn/study/checkName.jsp?name=" + name;

		xmlhttp = new XMLHttpRequest();
		xmlhttp.onreadystatechange = checkResult; //响应函数
		xmlhttp.open("GET", url, true); //设置访问的页面
		xmlhttp.send(null); //执行访问
	}

	function checkResult() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200)
			document.getElementById('checkResult').innerHTML = xmlhttp.responseText;

	}
	
	function sumResult() {
		var fristNum = document.getElementById("fristNum").value;
		var secondNum = document.getElementById("secondNum").value;
		document.getElementById("sumResult").innerHTML = Number(fristNum) + Number(secondNum);
	}	
	
	function fn(a) {
    		console.log(a);     // function a() {alert(1)}
    		var a = 2;
    		function a() {alert(1)}
    		console.log(a);     //2
		}
</script>
</html>
