<%@ page import="java.io.*" %>
<%@ page import="java.sql.*" %>
<%


Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/eg_one", "root", ""); 
String s1=request.getParameter("Name");
String s2=request.getParameter("Gender");
String s3=request.getParameter("Tickets");


PreparedStatement pss=con.prepareStatement("insert into hall4 values(?,?,?)");
pss.setString(1,s1);
pss.setString(2,s2);
pss.setString(3,s3);

int rr=pss.executeUpdate();


PreparedStatement ps=con.prepareStatement("delete from movies4 where Tickets=?");

ps.setString(1,s3);
int r=ps.executeUpdate();
if(r==0)
{
	%>
Ticket Booking Failed
<%
}
else
{
	response.sendRedirect("booked.html");

}

con.close();
%>
