<%@ page import="java.sql.*" %>
<html>
<body style="background-color:powderblue;">
<link rel="stylesheet" type="text/css" href="css/style4.css">
<center>
<h3 style="color:black">List Of Vulture Movie Tickets</h3>
<table class="content-table">
<thead>
<tr>
<th>Name</th>
<th>Gender</th>
<th>Tickets</th>
</tr>
</thead>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/eg_one", "root", ""); 

String s1=request.getParameter("Name");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from hall4 ");
while(rs.next())
{
%>
<tr>
<td><%=rs.getString("Name") %> </td>
<td><%=rs.getString("Gender") %> </td>
<td><%=rs.getString("Tickets") %> </td>
</tr>
<%
}
con.close();
%>
<div class="Home">
<a href=vulture.html>Back to Booking page</a>
</div>
</center>
</table>
</body>
</html>
