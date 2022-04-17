<%@ page import="java.io.*" %>
<%@ page import="java.sql.*" %>
<%


Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/eg_one", "root", ""); 
String moviename=request.getParameter("moviename");
String like = request.getParameter("liked");

int cc = 1;


String one="liked";
String two="disliked";



Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from liker where Movie='"+moviename+"'");
while(rs.next())
{
	
	cc=2;
String s = rs.getString("likes");
int n = Integer.parseInt(s);
String t = rs.getString("dislikes");
int m = Integer.parseInt(t);



if(like.equals(one))
{


int nn=n+1;
String ccc = String.valueOf(nn);
PreparedStatement psa=con.prepareStatement("update liker SET likes = '"+ccc+"' where Movie='"+moviename+"'");
int r=psa.executeUpdate();

}

if(like.equals(two))
{
	

int mm=m+1;
String cccc = String.valueOf(mm);
PreparedStatement psaa=con.prepareStatement("update liker SET dislikes = '"+cccc+"' where Movie='"+moviename+"'");
int r=psaa.executeUpdate();

}



}

if(cc==1)
{
	
PreparedStatement pss=con.prepareStatement("insert into liker values(?,?,?)");
pss.setString(1,moviename);
pss.setString(2,"0");
pss.setString(3,"0");

int rr=pss.executeUpdate();


if(like.equals(one))
{




PreparedStatement psa=con.prepareStatement("update liker SET likes = '1' where Movie='"+moviename+"'");
int r=psa.executeUpdate();

}

if(like.equals(two))
{
	


PreparedStatement psaa=con.prepareStatement("update liker SET dislikes = '1' where Movie='"+moviename+"'");
int r=psaa.executeUpdate();

}

}







response.sendRedirect("viewlikes.html");

con.close();
%>
