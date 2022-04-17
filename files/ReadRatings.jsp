<%@ page import="java.sql.*" %>
<html>
<body style="background-color:powderblue;">
<link rel="stylesheet" type="text/css" href="css/style4.css">
<center>
<h3>Movie Ratings</h3>
<table class="content-table">
<thead>
<tr>
<th>Name</th>
<th>Movie</th>
<th>Review</th>
</tr>
</thead>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/eg_one", "root", ""); 
String id=request.getParameter("");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from Ratings order by Movie_Name");
while(rs.next())
{
%>
<tr>
<td><%=rs.getString("Name") %> </td>
<td><%=rs.getString("Movie_Name") %> </td>
<td><%=rs.getString("Rating") %> </td>
</tr>
<%
}
con.close();
%>
<div class="Home">
<a href=index.html>Back to Home page</a>
</div>
</center>
</table>
</body>
</html>
