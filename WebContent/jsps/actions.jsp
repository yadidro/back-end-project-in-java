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

<%
    if ((session.getAttribute("id") == null) ) {//if the user hasn't connected yet
%>
			<br>You are not logged in<br/>
			<a href="login.jsp">Please Login</a>
<%	}
    else {
%>

		<h1><a href="buy.jsp">Buy stock portfolios</a></h1>
		<h1><a href="sell.jsp">Sell stock portfolios</a></h1>
		<h1><a href="free_stocks.jsp">Free stocks</a></h1>
		<h1><a href="client_stocks.jsp">Your stocks</a></h1>
		<h1><a href="stable.jsp">Recommendations for owned stocks</a></h1>
<%	} 
%>
</div>
</body>
</html>