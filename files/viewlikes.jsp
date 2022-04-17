<%@ page import="java.sql.*" %>
<html>
<body style="background-color:powderblue;">
<link rel="stylesheet" type="text/css" href="css/style4.css">
<center>
<h3>User Likes</h3>
<table class="content-table">
<thead>
<tr>
<th>Movie</th>
<th>Liked</th>
<th>Disliked</th>
</tr>
</thead>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/eg_one", "root", ""); 
String id=request.getParameter("");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from liker ORDER BY Movie;");
while(rs.next())
{
%>
<tr>
<td><%=rs.getString("Movie") %> </td>
<td><%=rs.getString("likes") %> </td>
<td><%=rs.getString("dislikes") %> </td>

</tr>
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
