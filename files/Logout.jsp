<!DOCTYPE html>
<html>
<head>
</head>
<body style="background-color: powderblue;">
<link rel="stylesheet" type="text/css" href="css/logout.css">
<div class="logout">
<%
session.setAttribute("User_id", null);
session.invalidate();
out.println("You have succesfully logged out");


%>
<a href = "login.html">
<center>
Login Again</a>
</center>
</div>
</body>
</html>
