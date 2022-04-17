<%@ page import="java.sql.*" %>
<html>
<body style="background-color: powderblue;">

<center>

<%
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/eg_one", "root", ""); 
Statement st=con.createStatement();
String MovieName = request.getParameter("MovieName");
String vulture = "vulture";
String vulture2 = "spider";

if(MovieName.equals(vulture) || MovieName.equals(vulture2))
{
response.sendRedirect(" "+MovieName+".html ");
}
else
{
	
	out.print("The Movie you have entered is not available");
	
}

con.close();
%>
<div class="Home">
<a href=index.html>Back to Home page</a>
</div>
</center>

</body>
</html>
