<%@ page import="java.io.*"  %>
<%@ page import="java.sql.*"  %>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/eg_one", "root", ""); 
String Name=request.getParameter("Name");
String Movie=request.getParameter("Movie");
String Review=request.getParameter("Review");

PreparedStatement ps=con.prepareStatement("insert into Reviews values(?,?,?)");
ps.setString(1,Name);
ps.setString(2,Movie);
ps.setString(3,Review);
int r=ps.executeUpdate();
if(r==0)
out.println("failure");
else
response.sendRedirect("ReviewReceived.html");
con.close();
%>
