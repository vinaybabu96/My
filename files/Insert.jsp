<%@ page import="java.io.*"  %>
<%@ page import="java.sql.*"  %>
<%
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/eg_one", "root", ""); 
String Name=request.getParameter("Name");
String Gender=request.getParameter("Gender");
String User_id=request.getParameter("User_id");
String Password=request.getParameter("Password");
String Amount=request.getParameter("Amount");
PreparedStatement ps=con.prepareStatement("insert into register values(?,?,?,?,?)");
ps.setString(1,Name);
ps.setString(2,Gender);
ps.setString(3,User_id);
ps.setString(4,Password);
ps.setString(5,Amount);
int r=ps.executeUpdate();
if(r==0)
out.println("failure");
else
out.println("Registration Successful");

response.sendRedirect("login.html");

}
catch(Exception e)
{
	out.print(e);
}

%>
