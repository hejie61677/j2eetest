<%@ page language="java" import="java.util.*, javax.servlet.http.Cookie" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

//设置cookie
Cookie c = new Cookie("name", "ErHa");
c.setMaxAge(24*60*60);
c.setPath("127.0.0.1");
response.addCookie(c);
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">    
    <title>CookieTest</title>
    <script src="<%=basePath %>frontend/jquery.min.js"></script>
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  
  <body>
    <%
    //读取cookie
    Cookie[] cookies = request.getCookies();
    if (null != cookies)
        for (int d = 0; d <= cookies.length - 1; d++) {
            out.print(cookies[d].getName() + ":" + cookies[d].getValue() + "<br>");
        }
	%>
  </body>
  
  <script type="text/javascript">
  	$(function() {
  		
  	});
  </script>
</html>
