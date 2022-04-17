
<%@ page import="java.io.*" %>
<%@ page import="java.sql.*" %>
<%
String User_id=request.getParameter("User_id");
String Password=request.getParameter("Password");
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/eg_one", "root", ""); 
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from register where User_id='"+User_id+"' and Password='"+Password+"'");

	
	if(rs.next())
	{
		session.setAttribute("User_id",User_id);
		response.sendRedirect("test_index.jsp");
	}
        else
        {
        
		response.sendRedirect("test_login.html");
        }
con.close();
%>
