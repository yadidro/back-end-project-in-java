<%@page import="java.util.Date"%>
<%@page import="moreClasses.jsp.*"%>
<%@ page import ="java.sql.*" %>
<%@page import="javax.sql.*" %>
<%@page import="java.sql.Connection" %>
<%@ page language="java" contentType="text/html; charset=US-ASCII" pageEncoding="US-ASCII"%>

   <% 
       String connectionURL = "jdbc:mysql://127.0.0.1:8000/world?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
       Connection connection = null; 
       Class.forName("com.mysql.jdbc.Driver").newInstance(); 
       connection = DriverManager.getConnection(connectionURL, "yadidro", "r0r0r0r0");
       Statement mySqlDataBase = connection.createStatement() ;
  %>  