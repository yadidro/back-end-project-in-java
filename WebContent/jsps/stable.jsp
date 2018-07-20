<%@include file="connectionSql.jsp"%>
<%@include file="head.html"%>
<%@ page import="moreClasses.jsp.user.*" %>

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
int one,two,three,four,five,six,seven,Stability,maxRiseOfOneStock,MaxRiseFromAll,most_stabilty;
user user=new user();
String query="select id,stock_name,current_value,1_ago,2_ago,3_ago,4_ago,5_ago,6_ago from stocks WHERE stock_status<>'free'";//take information about the stock value for 7 days
ResultSet rs=mySqlDataBase.executeQuery(query);
most_stabilty=1000000000;
MaxRiseFromAll=0;
String id_most_stabilty="1";
String id_MaxRiseFromAll="1";

while(rs.next())
{//this is used to show in a table the owned stock
	%><tr>
	 <td><%=rs.getString("id") %></td>
	 <td><%=rs.getString("stock_name") %></td>
	 <td><%=rs.getString("current_value") %></td>
	 </tr>
	   
	<%
	one = Integer.parseInt(rs.getString("current_value"));
	two = Integer.parseInt(rs.getString("1_ago"));
	three = Integer.parseInt(rs.getString("2_ago"));
	four = Integer.parseInt(rs.getString("3_ago"));
	five = Integer.parseInt(rs.getString("4_ago"));
	six = Integer.parseInt(rs.getString("5_ago"));
	seven = Integer.parseInt(rs.getString("6_ago"));
	Stability=user.getStabilityOfValue(one,two,three,four,five,six,seven);//helper  function to get the stablity of single stock portfolio
	maxRiseOfOneStock=user.getMaxRiseOfOneStock(one,two,three,four,five,six,seven);//helper  function to get the max rise of single stock portfolio
	if (MaxRiseFromAll<maxRiseOfOneStock){
			MaxRiseFromAll=maxRiseOfOneStock;
			id_MaxRiseFromAll=rs.getString("id");
	}
	if (most_stabilty>Stability){//I want the smallest one
			most_stabilty=Stability;
			id_most_stabilty=rs.getString("id");
	}
 }
rs.close();

%>  </table>
</form>
<h1>the already owned stock, who raised the most in value during the last 7 days.: <%=id_MaxRiseFromAll %></h1>
<h1>the already owned stock, with least value fluctuation during the last 7 days: <%=id_most_stabilty %></h1>
<a href="actions.jsp">return</a>
</div>

</body>
 
</html> 