<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'login.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	<link rel="stylesheet" type="text/css" href="css/style.css">


  </head>
  
  <body>
    注册 <br>
    <form action="validate.jsp" method="post" name="login">
    username<input type="text" name="username"><br>
    password<input type="password" name="password"><br>
    nicname<input type="text" name="nicname" readonly="true" value=""><br>
    truename<input type="text" name="truename" readonly="true" value=""><br>
    gender<input type="int" name="gender" readonly="true" value="0"><br>
    <input type="submit" >
    </form>
  </body>
</html>
