<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
 <%@page import="java.sql.*" %>  <!-- 调用java 包 -->
    <%@ page import="com.test.*" %>   <!--调用User类  -->
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'displayStudentInfo.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/style.css">

  </head>
  <jsp:include page="isLogin.jsp"></jsp:include>
  
  <body>
   displayStudentInfo.jsp<br>
   
  
   
   <%
   user user1 =(user)session.getAttribute("user");
   
   
  	UserDao user=new UserDao();//实例化
  	
  	ResultSet rs = user.displayUserInfo(user1.getUsername());
  	
  	while(rs.next()){
  	int id  = rs.getInt("id");
	    			  int gender  = rs.getInt("gender");
	                  String username = rs.getString("username");
	                  String nicname = rs.getString("nicname");
	                  String truename = rs.getString("truename");
	      
	                  // 输出数据
	                  
	                  out.println("ID: " + id);
	                  out.print("<br>");
	                  out.println("账户名: " + username);
	                  out.print("<br>");
	                  out.println("昵称：" + nicname);
	                  out.print("<br>");
	                  out.println("真实姓名：" + truename);
	                  out.print("<br>");
	                  out.println("性别：" + gender);
	                out.print("<br>");
  	}

      
  
	    			  
  %>
  </body>
</html>
