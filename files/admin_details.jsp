<%@ page import="java.sql.*" %>
<html>
<link rel="stylesheet" type="text/css" href="css/admindetails.css">
<body bgcolor="darkgrey">
<a href="index.jsp">Home</a>
<center>
<div class="admindetails">
<table>
<tr>
<th>Name</th>
<th>User Id</th>
<th>Gender</th>
<th>Amount</th>
</tr>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/eg_one", "root", ""); 
String id= session.getAttribute("User_id").toString();
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from register where User_id='"+id+"' ");
while(rs.next())
{
%>
<tr>
<td><%=rs.getString("Name") %> </td>
<td><%=rs.getString("User_id") %> </td>
<td><%=rs.getString("Gender") %> </td>
<td><%=rs.getString("Amount") %> </td>
</tr>
<%
}
con.close();
%>
</center>
</table>
</div>
<a href="addmoney.html">Add_Money</a>

</body>
</html>
