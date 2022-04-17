<%@ page import="java.io.*"  %>
<%@ page import="java.sql.*"  %>
<%
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/eg_one", "root", ""); 
String YName=request.getParameter("YName");
String MName=request.getParameter("MName");

int i=1;

Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select Name from recommendations where Name = '"+YName+"'");
while(rs.next())
{
i=2;
response.sendRedirect("viewer.html");

}


if(i==1)
{
PreparedStatement ps=con.prepareStatement("insert into recommendations values(?,?)");
ps.setString(1,YName);
ps.setString(2,MName);

int r=ps.executeUpdate();
if(r==0)
out.println("failure");
else
out.println("Recommendation Successful");

}
}
catch(Exception e)
{
	out.print(e);
}

%>
