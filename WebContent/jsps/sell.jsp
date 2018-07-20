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
 
    
        <form method="post" action="help_sell.jsp">
            <center>
            <table border="1" width="30%" cellpadding="3">
                <thead>
                    <tr>
                        <th colspan="2">chose a stock you want to sell</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Stock name</td>
                        <td><input type="text" name="stock_name" value="" /></td>
                    </tr>
                    
                    <tr>
                        <td><input type="submit" value="sell!" /></td>
                        <td><input type="reset" value="Reset" /></td>
                    </tr>
                    
                </tbody>
            </table>
            </center>
        </form>
        <a href="actions.jsp">return</a>
        </div>
    </body>
</html>