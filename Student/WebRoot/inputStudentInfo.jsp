<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'inputStudentInfo.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/style.css">

  </head>
  
  <body>
   inputStudentInfo.jsp
   
   <form action="insert.jsp" method="post" name="insert">
    username(不可编辑)<input type="text" name="username" value=${sessionScope.user.username} readonly="true"><br>
    nicname<input type="text" name="nicname"><br>
    truename<input type="text" name="truename"><br>
    gender<input type="int" name="gender"><br>
    <input type="submit" >
    </form>
  </body>
</html>
