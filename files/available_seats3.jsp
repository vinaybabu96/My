<%@ page import="java.sql.*" %>
<html>
<head>

<body bgcolor="white">
<div style="background-image: url('bg1.jpg');">
<center>

</head>
<div class="logo">
		<img src="seats.jpg">
		</div>
<table border="5">
<tr>
<th>Available Tickets</th>


</tr>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/eg_one", "root", ""); 
String id=request.getParameter("");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from movies3");
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
<a href=Bookings3.html>Back to Bookings</a>
</center>
</table>
</body>
</html>
