<%@include file="connectionSql.jsp"%>
<%@ page import="moreClasses.jsp.user.*" %>
<%
	user user=new user();
    String id = request.getParameter("id");    
    String pwd = request.getParameter("pass");
    String c_pwd = request.getParameter("c_pass");
    String fname = request.getParameter("fname");
    String lname = request.getParameter("lname");
    String uname = request.getParameter("uname");
    String credit = request.getParameter("credit");
    String error=user.validate_register(id,pwd,c_pwd,fname,lname,uname,credit);//helper function to check the input

    	
    
  
   
    if (error!=""){
    	session.setAttribute("error",error);
    	response.sendRedirect("reg.jsp");
    }
    else{
    	ResultSet rs;
    	rs = mySqlDataBase.executeQuery("select * from users where id='" + id +"'");
    	if (rs.next()){
    		session.setAttribute("error","ID is overtakken");
    	    response.sendRedirect("reg.jsp");
    	}
    	else{
    		 rs = mySqlDataBase.executeQuery("select * from users where uname='" + uname +"'");
    			if (rs.next()){
        				session.setAttribute("error","User Name is overtakken");
        	   			response.sendRedirect("reg.jsp");
        		}
    			else{
    				   synchronized (this){
   
    				int i=mySqlDataBase.executeUpdate("insert into users(id,first_name, last_name, uname, credit, pass) values('"+id+"','"+fname+"','"+lname+"','"+uname+"','"+credit+"','"+pwd+"')");
    				   
    				if (i>0) {
        					 response.sendRedirect("welcome.jsp");
   					 }
    				else {
       						 response.sendRedirect("index.jsp");
   						 }
    				   }
    				   
    			}
    	}	
   
    }%>