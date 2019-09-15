
<!--
<html>
<head>
<title>Sample Application JSP Page</title>
</head>
<body bgcolor=white>

<table border="0">
<tr>
<td align=center>
<img src="images/tomcat.gif">
</td>
<td>
<h1>Sample Application JSP Page</h1>
This is the output of a JSP page that is part of the Hello, World
application.
</td>
</tr>
</table>
<%@ page import="java.util.Random"%>

<% Random rand = new Random(); %>
<% int randInt = rand.nextInt(1000000) + 1; %>
<% System.out.println(randInt); %>
</body>
</html>
-->
<%@ page import="java.util.Random"%>
 
<html>
 
<body>
     
    <% System.out.println(); %>
     
    <%
        Random random = new Random();
        out.println((random.nextInt(1000000) + 1));
    %>
 
</body>
