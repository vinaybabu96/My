<%@ page import="java.io.*" %>
<%@ page import="java.sql.*" %>
<%


Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/eg_one", "root", ""); 
String id=session.getAttribute("User_id").toString();
String add = request.getParameter("add");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from register where User_id='"+id+"'");
while(rs.next())
{
	String a = rs.getString("Amount");
	int b = Integer.parseInt(a);
	int k = Integer.parseInt(add);
int added=b+k;
String c = String.valueOf(added);
PreparedStatement psa=con.prepareStatement("update register SET Amount = '"+c+"' where User_id='"+id+"'");
int r=psa.executeUpdate();
}

response.sendRedirect("addsuccess.html");










con.close();
%>
