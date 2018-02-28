<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page language="java" import="com.test.*"%>
  
<% user user =(user)session.getAttribute("user");%>
<% if(user == null){

%>

<jsp:forward page="login.jsp"></jsp:forward>

<%
}
%>



