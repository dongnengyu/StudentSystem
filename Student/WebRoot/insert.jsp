 <%@page import="java.sql.*" %>  <!-- 调用java 包 -->
    <%@ page import="com.test.*" %>   <!--调用User类  -->
    <%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%request.setCharacterEncoding("utf-8"); %>  <!-- 修改字符集 -->
<jsp:useBean id="userxt" class="com.test.userInfo" > <!--class=包名.类名  -->
<jsp:setProperty name="userxt" property="*"/>  <!-- 设置javaBean属性  *代表自动匹配数据库-->
</jsp:useBean>
 <%
  	UserDao user=new UserDao();//实例化
       user.InsertInfo(userxt);   //调用Insert方法，实现增加数据
       out.print("插入成功");
  %>