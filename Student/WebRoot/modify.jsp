 <%@page import="java.sql.*" %>
 <%@ page import="com.test.*" %>
 <%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%request.setCharacterEncoding("utf-8"); %>  <!-- 修改字符集 -->
<jsp:useBean id="userxt" class="com.test.userInfo" > <!--class=包名.类名  -->
<jsp:setProperty name="userxt" property="*"/>  <!-- 设置javaBean属性  *代表自动匹配数据库-->
</jsp:useBean>
 <%
  	UserDao user=new UserDao();//实例化
  	user.modifyStudentInfo(userxt);
%>
<jsp:forward page="modifyStudentInfo.jsp"></jsp:forward>