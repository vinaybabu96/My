<%@ page import ="java.sql.*" %> 
<% String userid = request.getParameter("uname"); 
String pwd = request.getParameter("pass"); 
Class.forName("com.mysql.jdbc.Driver");
 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/eg_one", "root", ""); 
Statement st = con.createStatement(); 
ResultSet rs;
 rs = st.executeQuery("select * from admin where email_id=' " + userid + " ' and password=' " + pwd + " ' ");
 if (rs.next()) { session.setAttribute("userid", userid); 
response.sendRedirect("index.jsp");
 }
 else 
{
 out.println("Invalid user or password try again"); 
} %> 

