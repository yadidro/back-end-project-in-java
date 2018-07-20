<%@include file="head.html"%>
<body>
<!-- Navbar -->
<div class="w3-top">
  <div class="w3-bar w3-blue w3-card w3-left-align w3-large">
    <a class="w3-bar-item w3-button w3-hide-medium w3-hide-large w3-right w3-padding-large w3-hover-white w3-large w3-blue" href="javascript:void(0);" onclick="myFunction()" title="Toggle Navigation Menu"><i class="fa fa-bars"></i></a>
    <a href="#" class="w3-bar-item w3-button w3-padding-large w3-white">Home</a>
    <a href="login.jsp" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white">sign in</a>
    <a href="reg.jsp" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white">sign up</a>
    <a href="actions.jsp" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white">get started!</a>
</div>
<header class="w3-container w3-blue w3-left" style="padding:128px 16px">
<%
    if ((session.getAttribute("id") == null) ) {//if the user havent connected yet
%>

			<br>You are not logged in<br/>
			<a href="login.jsp">Please Login</a>
<%} else {
%>

			<h1>Welcome <%=session.getAttribute("first_name")%></h1>
			<a href='logout.jsp'>Log out</a>
<%
    }
%>
</header>
</div>

<!-- Header -->
<header class="w3-container w3-blue w3-center" style="padding:128px 16px">
  <h1 class="w3-margin w3-jumbo">Stock-For-U!</h1>
   <h5>Simply the best stock portfolio tracker for investors.</h5>
  <img src="Image/borsa2.jpg" alt="My test image">
</header>

<!-- First Grid -->
<div class="w3-row-padding w3-padding-64 w3-container">
  <div class="w3-content">
    <div class="w3-twothird">
 
      
    </div>

    <div class="w3-third w3-center">
      <i class="fa fa-anchor w3-padding-64 w3-text-blue"></i>
    </div>
  </div>
</div>
</body>