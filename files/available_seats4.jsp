<%@ page import="java.sql.*" %>
<html>
<head>

<body style="background-color:powderblue;">
<link rel="stylesheet" type="text/css" href="css/style4.css">



</head>

<table class="content-table">
<tr>
<th>Available Tickets</th>


</tr>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/eg_one", "root", ""); 
String id=request.getParameter("");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from movies4");
while(rs.next())
{
%>
<tr>
<td><%=rs.getString("Tickets") %> </td>

</tr>
<%
}
con.close();
%>
<div class="Home">
<a href=vulture.html>Back to Bookings</a>
</div>

<img src="seats.jpg">

</table>
</body>
</html>
