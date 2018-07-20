<%@include file="connectionSql.jsp"%>
<% 
    String stock_name = request.getParameter("stock_name");
	if (stock_name.isEmpty()){
			session.setAttribute("error","Please fill the filed");
   		    response.sendRedirect("sell.jsp");
	}
	else{
			Object id=session.getAttribute("id");
    		int rs;
    		   synchronized (this){
   			 rs = mySqlDataBase.executeUpdate("UPDATE stocks SET stock_status='free' WHERE stock_name = '"+stock_name+"'and stock_status='"+id+"'");

    		if (rs>0) {
     			response.sendRedirect("recive_sell.jsp");
   			 }
    		else {
    	  		out.println("the protofilo dosent exit or not yours<a href='sell.jsp'>chose somthing else</a>");
    			}
    		   }
		}%>