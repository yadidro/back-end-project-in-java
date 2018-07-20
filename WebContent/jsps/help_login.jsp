<%@include file="connectionSql.jsp"%>
<% 
    String uname = request.getParameter("uname");    
    String pwd = request.getParameter("pass");
    if (uname.isEmpty()||pwd.isEmpty()){
    	session.setAttribute("error","Please fill all fileds");
	    response.sendRedirect("login.jsp");
    }
    else{
    
    ResultSet rs;
    rs = mySqlDataBase.executeQuery("select * from users where uname='" + uname + "' and pass='" + pwd + "'");
    if (rs.next()) {
        session.setAttribute("id", rs.getString("id"));
        session.setAttribute("first_name", rs.getString("first_name"));
        response.sendRedirect("index.jsp");
    } else {
        out.println("Invalid password <a href='login.jsp'>try again</a>");
    }
}%>