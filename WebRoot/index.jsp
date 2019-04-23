<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<style>
	table{
 		border-collapse:collapse;
 		background-color:orange;
	}
	td{
  		border:1px silver solid;
  		padding: 5px;
  		font-size:12px;
	}
	input{
		width:80px;
  		color:blue;
	}
</style>
<head>
<script type="text/javascript">
 		function skip1(){
 			var basePath = "<%=basePath%>";
 			window.location.href = basePath + "frontend/csstest.jsp";
 		}
 		
 		function skip2(){
 			var basePath = "<%=basePath%>";
			window.location.href = basePath + "frontend/jsptest.jsp";
		}
		
 		function skip3(){
 			var basePath = "<%=basePath%>";
			window.location.href = basePath + "frontend/jquerytest.jsp";
		}
		function skip4(){
 			var basePath = "<%=basePath%>";
			window.location.href = basePath + "frontend/cookietest.jsp";
		}
		function skip5(){
 			var basePath = "<%=basePath%>";
			window.location.href = basePath + "frontend/sessiontest.jsp";
		}
</script>
<base href="<%=basePath%>">
<title>初始页面</title>
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
</head>

<body>
	<table>
		<tr>
			<td><input type="button" value="跳转css" onclick="skip1();" style="font-size: 10px; font-weight: bold"/></td>
			<td><input type="button" value="跳转jsp" onclick="skip2();" style="font-size: 10px; font-weight: bold"/></td>
			<td><input type="button" value="跳转jquery" onclick="skip3();" style="font-size: 10px; font-weight: bold"/></td>
			<td><input type="button" value="跳转cookie" onclick="skip4();" style="font-size: 10px; font-weight: bold"/></td>
			<td><input type="button" value="跳转session" onclick="skip5();" style="font-size: 10px; font-weight: bold"/></td>
		</tr>
	</table>
</body>
</html>
