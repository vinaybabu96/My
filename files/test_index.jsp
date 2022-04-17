<!DOCTYPE html>
<html>
<head>
<title>
test index
</title>
</head>
<body style="background-color: powderblue">

<%


response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");

if(session.getAttribute("User_id")==null)
response.sendRedirect("test_login.html");


%>
<center>
Welcome to the website bro
</center>
<form action="Logout.jsp">
<input type="submit" value="logout">
</form>

</body>
</html>
