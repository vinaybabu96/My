<%@ page import="java.io.*" %>
<%@ page import="java.sql.*" %>
<%


Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/eg_one", "root", ""); 
String Name=request.getParameter("Name");
String Gender=request.getParameter("Gender");
String Tickets=request.getParameter("Tickets");

PreparedStatement pss=con.prepareStatement("insert into hall4 values(?,?,?)");
pss.setString(1,Name);
pss.setString(2,Gender);
pss.setString(3,Tickets);
int rr=pss.executeUpdate();

Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from register where Name='"+Name+"'");
while(rs.next())
{
	String a = rs.getString("Amount");
	int b = Integer.parseInt(a);
b=b-150;
String c = String.valueOf(b);
PreparedStatement psa=con.prepareStatement("update register SET Amount = '"+c+"' where Name='"+Name+"'");
int r=psa.executeUpdate();
}

PreparedStatement ps=con.prepareStatement("delete from movies4 where Tickets=?");

ps.setString(1,Tickets);
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
