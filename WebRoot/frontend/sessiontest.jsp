<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
session.setAttribute("name", "HaPe");

//9种隐式对象request,response,out,pageContext,session,application,page,config,exception
%>

<!DOCTYPE>
<html>
  <head>
    <base href="<%=basePath%>">    
    <title>SessionTest.jsp</title>
    <!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <%
    String name = (String)session.getAttribute("name");
	%>
 	session中的name: <%=name%><br>
  </body>
</html>
