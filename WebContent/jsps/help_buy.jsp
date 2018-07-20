<%@include file="connectionSql.jsp"%>
<% 
    String stock_name = request.getParameter("stock_name");
if (stock_name.isEmpty()){
	session.setAttribute("error","Please fill the filed");
    response.sendRedirect("buy.jsp");
}
else{
	Object id=session.getAttribute("id");
	
    int rs;
    synchronized (this){
    rs = mySqlDataBase.executeUpdate("UPDATE stocks SET stock_status='"+id+"' WHERE stock_name = '"+stock_name+"'and stock_status='free'");

    if (rs>0) {
        response.sendRedirect("recive.jsp");
    } else {
        out.println("the protofilo dosent exit or not free<a href='buy.jsp'>chose somthing else</a>");
    }
    }
}%>