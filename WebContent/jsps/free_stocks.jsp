<%@include file="connectionSql.jsp"%>
<%@include file="head.html"%>
<body>
<!-- Navbar -->
<div class="w3-top">
  <div class="w3-bar w3-blue w3-card w3-left-align w3-large">
    <a class="w3-bar-item w3-button w3-hide-medium w3-hide-large w3-right w3-padding-large w3-hover-white w3-large w3-blue" href="javascript:void(0);" onclick="myFunction()" title="Toggle Navigation Menu"><i class="fa fa-bars"></i></a>
    <a href="index.jsp" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white">Home</a>
    <a href="login.jsp" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white">sign in</a>
    <a href="reg.jsp" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white">sign up</a>
    <a href="#" class="w3-bar-item w3-button w3-padding-large w3-white">get started!</a>
</div>



<form method="post">

<table border="2">
<tr>
<td>Stock id</td>
<td>Stock name</td>
<td>Current value</td>
</tr>
<%
try
{

String query="select id,stock_name,current_value from stocks WHERE stock_status='free'";
ResultSet rs=mySqlDataBase.executeQuery(query);
while(rs.next())
{

%><tr>
 <td><%=rs.getString("id") %></td>
    <td><%=rs.getString("stock_name") %></td>
    <td><%=rs.getString("current_value") %></td>
    </tr>
        <%

}
%>
    </table>
    <%
    rs.close();
    }
catch(Exception e)
{
    e.printStackTrace();
    }

%></form>
<form method="post">

<table border="2">
<tr>
<td>Stock id with max current value</td>
</tr>
<%
String strQuery = "select MAX(current_value) from stocks WHERE stock_status='free'";
ResultSet rs = mySqlDataBase.executeQuery(strQuery);
String Countrun="";
while(rs.next()){
Countrun = rs.getString(1);
}
String strQuery2 = "select id from stocks WHERE current_value='"+Countrun+"'and stock_status='free'";
ResultSet rs2 = mySqlDataBase.executeQuery(strQuery2);
String Countrun2="";
while(rs2.next()){
Countrun2 = rs2.getString("id");
}

%>

<tr><td><%=Countrun2%></td></tr>
</table>
</form>
 <a href="actions.jsp">return</a>
 </div>
 </body>
</html> 