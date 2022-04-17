<%@ page import="java.sql.*" %>
<html>
<body style="background-color:powderblue;">
<link rel="stylesheet" type="text/css" href="css/style4.css">
<center>
<h3>Your Ticket</h3>
<table class="content-table">
<thead>
<tr>
<th>Name</th>

<th>Seat</th>

</tr>
</thead>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/eg_one", "root", ""); 
String Name=request.getParameter("Name");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from hall4 where Name='"+Name+"'");
while(rs.next())
{
%>
<tr>
<td><%=rs.getString("Name") %> </td>
<td><%=rs.getString("Tickets") %> </td>

</tr>
<%
}

Statement st2=con.createStatement();
ResultSet rs2=st2.executeQuery("select * from register where Name='"+Name+"'");
while(rs2.next())
{
%>


<div class="new">
<h3>Your Account Balance</h3>
<%=rs2.getString("Amount") %> 
</div>

<%
}




con.close();
%>
<div class="Home">
<a href=index.jsp>Back to Home page</a>
</div>
</center>
</table>
</body>
</html>
