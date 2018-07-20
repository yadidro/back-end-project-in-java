<%
session.setAttribute("id", null);
session.setAttribute("first_name", null);
session.invalidate();
response.sendRedirect("index.jsp");
%>