package com.test;


import java.sql.*;//调用java包
import com.test.*;

public class UserDao{
	
	public boolean valid(user usera){
		PreparedStatement pst=null;
   	 ResultSet rs=null;
   	 UserCoon coon=new UserCoon();  //实例化UserCoon
        Connection coona=coon.getCoon();  //获取getCoon
        String select="select * from usertable where username=? and password=?"; //sql语句
      
       	try {//抛出异常
				pst=coona.prepareStatement(select);//执行sql语句
				 pst.setString(1,usera.getUsername());//获取值
				 pst.setString(2,usera.getPassword());
				 
	    		  rs=pst.executeQuery();
	    		  if(rs.next()){
	    			  return true;
	    		  }
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return false;
			}
       	return false;
            
		
	} 
	
	
	
	
	
	
	
	
	
	//Insert方法 参数是user  返回值为int rs
     public int InsertCount(user usera){
    	 PreparedStatement pst=null;
    	 int rs=0;
    	 UserCoon coon=new UserCoon();  //实例化UserCoon
         Connection coona=coon.getCoon();  //获取getCoon
         String sql_insert="insert into usertable (username,password) values(?,?)"; //sql语句
        	try {//抛出异常
				pst=coona.prepareStatement(sql_insert);//执行sql语句
				 pst.setString(1,usera.getUsername());//获取值
				 pst.setString(2,usera.getPassword());
				 
	    		  rs=pst.executeUpdate();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
             return rs;
     }
     
     public int InsertInfo(userInfo usera){
    	 PreparedStatement pst=null;
    	 int rs=0;
    	 UserCoon coon=new UserCoon();  //实例化UserCoon
         Connection coona=coon.getCoon();  //获取getCoon
         String sql_insert="insert into userinfo (nicname,truename,gender,username) values(?,?,?,?)"; //sql语句
        	try {//抛出异常
				pst=coona.prepareStatement(sql_insert);//执行sql语句
				 pst.setString(1,usera.getNicname());//获取值
				 pst.setString(2,usera.getTruename());
				 pst.setLong(3,usera.getGender());
				 pst.setString(4,usera.getUsername());
				 
	    		  rs=pst.executeUpdate();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
             return rs;
     }
     
     

     public ResultSet displayUserInfo(String user){
    	 PreparedStatement pst=null;
    	 ResultSet rs=null;
    	 UserCoon coon=new UserCoon();  //实例化UserCoon
         Connection coona=coon.getCoon();  //获取getCoon
         String sql_insert="select * from userinfo where username=?"; //sql语句
        	try {//抛出异常
				pst=coona.prepareStatement(sql_insert);//执行sql语句
				 pst.setString(1,user);//获取值
				 
				 
	    		  rs=pst.executeQuery();
	    		  //System.out.println(rs.next());
	    		  
	    		  return rs;
	    		  
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return rs;

     }
     public int modifyStudentInfo(userInfo usera){
    	 PreparedStatement pst=null;
    	 int rs=0;
    	 UserCoon coon=new UserCoon();  //实例化UserCoon
         Connection coona=coon.getCoon();  //获取getCoon
         String sql_insert="update userinfo set truename=? where username=?;";
        		 String sql_insert1="update userinfo set nicname=? where username=?;";
        	String sql_insert2="update userinfo set gender=? where username=?;";
        		 
         		;
        	try {//抛出异常
				pst=coona.prepareStatement(sql_insert);//执行sql语句
				 pst.setString(1,usera.getTruename());//获取值
				 pst.setString(2,usera.getUsername());
				 
				 
				 PreparedStatement pst1=coona.prepareStatement(sql_insert1);//执行sql语句		 
				pst1.setString(1,usera.getNicname());
				 pst1.setString(2,usera.getUsername());
				 
				 PreparedStatement pst2=coona.prepareStatement(sql_insert2);//执行sql语句
				 pst2.setLong(1,usera.getGender());
				 pst2.setString(2,usera.getUsername());
				 
	    		  rs=pst.executeUpdate();
	    		  rs=pst1.executeUpdate();
	    		  rs=pst2.executeUpdate();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
             return rs;
     }
}