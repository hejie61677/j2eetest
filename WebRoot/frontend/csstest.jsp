<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE>
<html>
  <head>
    <base href="<%=basePath%>">   
    <title>CssTest</title>    
	<link rel="stylesheet" type="text/css" href="<%=basePath%>frontend/styles.css">
  </head>
  
  <body>
  	<table border="1" width="100%" height="100%">
  		<tr id="tr1">
      		<td>1</td>
      		<td>2</td>
  		</tr> 
 		<tr id="tr2">
      		<td>3</td>
      		<td>4</td>
  		</tr> 
  		<tr id="tr3">
      		<td>a</td>
      		<td>b</td>
  		</tr> 
	</table>
	<img src="http://how2j.cn/study/wangwang.gif">
  </body>
  
</html>
