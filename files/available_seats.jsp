<%@ page import="java.sql.*" %>
<html>
<body bgcolor="pink">
<center>
<table border="5">
<tr>
<th>Available Tickets</th>

</tr>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/eg_one", "root", ""); 
String id=request.getParameter("");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from movies");
while(rs.next())
{
%>
<tr>
<td><%=rs.getString("Ticket") %> </td>

</tr>
<%
}
con.close();
%>
<a href=Bookings.html>Back to Bookings</a>
</center>
</table>
</body>
</html>
