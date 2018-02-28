package com.test;

import java.sql.*;//调用java包  
public class UserCoon {   
  public static final String DBDRIVER="com.mysql.jdbc.Driver"; //常量驱动  
  public static final String DBURL="jdbc:mysql://localhost:3306/student";//常量地址  
  public static final String DBUSER="root";//用户名  
  public static final String DBPASS="5682483";//密码  
  Connection conn=null;  
  //getCoon方法     返回值为 Connection conn  
       public Connection getCoon(){  
           try {//抛出异常  
            Class.forName(DBDRIVER);//驱动数据库  
            conn=DriverManager.getConnection(DBURL,DBUSER,DBPASS);//连接数据库  
        } catch (Exception e) {  
            // TODO Auto-generated catch block  
            e.printStackTrace();  
        }  
             
           return conn;  
             
       }  
       
       
      /* public static void main(String[] args) throws SQLException{
    	   UserCoon coon = new UserCoon();
    	   Connection coona = coon.getCoon();
    	   String sql_insert="insert into usertable (username,password) values(?,?)"; //sql语句  
    	   PreparedStatement pst=   coona.prepareStatement(sql_insert);
    	   pst.setString(1,"1");//获取值  
           pst.setString(2,"1");  
  
           int rs=pst.executeUpdate();  
    	   
    	   
       }*/
       
}  
