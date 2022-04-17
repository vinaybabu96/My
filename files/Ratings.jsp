<%@ page import="java.io.*"  %>
<%@ page import="java.sql.*"  %>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/eg_one", "root", ""); 
String Name=request.getParameter("Name");
String Movie=request.getParameter("Movie_Name");
String Review=request.getParameter("Rating");

PreparedStatement ps=con.prepareStatement("insert into Ratings values(?,?,?)");
ps.setString(1,Name);
ps.setString(2,Movie);
ps.setString(3,Review);
int r=ps.executeUpdate();
if(r==0)
out.println("failure");
else
response.sendRedirect("RatingReceived.html");
con.close();
%>
