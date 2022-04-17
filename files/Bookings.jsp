<%@ page import="java.io.*" %>
<%@ page import="java.sql.*" %>
<%


Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/eg_one", "root", ""); 
String s1=request.getParameter("Tickets");
PreparedStatement ps=con.prepareStatement("delete from movies where Ticket=?");

ps.setString(1,s1);
int r=ps.executeUpdate();
if(r==0)
out.println("Ticket Booking Failed");
else
out.println("Your Ticked has been booked Successfully");
out.println("150 has been charged for the ticket");
out.println("e-ticket sent to your registered email id");

con.close();
%>
