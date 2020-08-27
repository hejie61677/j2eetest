<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE>
<html>
  <head>
    <base href="<%=basePath%>">
    
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  </body>
  
  <script type="text/javascript">
  	var str1 = "1234efg";
  	var regex1 = /^[0-9]+efg$/;
  	document.write(str1.match(regex1));
  	
  	document.write("<br>");
  	
  	var str2 = "Is is the cost of of gasoline going up up";
  	var regex2 = /\b([a-z]+) \1\b/ig;
  	document.write(str2.match(regex2));
  	
  	document.write("<br>");
  	
  	var str3 = "http://www.j2eetest.com:80/html/html-tutorial.html";
  	var regex3 = /(\w+):\/\/([^/:]+)(:\d*)?([^# ]*)/;
  	var arr = str3.match(regex3);
  	for (var i = 0; i < arr.length; i++) {
  		document.write(arr[i]);
  		document.write("<br>");
  	}
  	
  	
  </script>
</html>
