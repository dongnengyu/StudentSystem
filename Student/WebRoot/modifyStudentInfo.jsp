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
    
    <title>My JSP 'inputStudentInfo.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/style.css">

  </head>
  
  <body>
  
  
  
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
        	                  
        	                  
          
         				request.setAttribute("username1", username);
        				request.setAttribute("nicname1", nicname);
        				request.setAttribute("truename1", truename);
        				request.setAttribute("gender1", gender);

        	}
        %>
  
  
  
   inputStudentInfo.jsp
   
   <form action="modify.jsp" method="post" name="insert">
    username(不可编辑)<input type="text" name="username"  readonly="true" value=${username1}><br>
    nicname<input type="text" name="nicname" value=${nicname1}><br>
    truename<input type="text" name="truename" value=${truename1}><br>
    gender<input type="int" name="gender" value=${gender1} ><br>
    <input type="submit" >
    </form>
  </body>
</html>
