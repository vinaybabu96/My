<!DOCTYPE html>
<html>
<head>
	<title>MOVIES FOR YOU</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>


<%


response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");

if(session.getAttribute("User_id")==null)
response.sendRedirect("login.html");


%>
	<header>
		<div class="main">
		<div class="logo">
		<img src="movie_pic2.jpg">
		</div>
			<ul>
				<li class="active"><a href="movies.html">Movies</a></li>
				<li><a href="Reviews.html">Reviews</a></li>
				<li><a href="like.html">Likings</a></li>
				<li><a href="Ratings.html">Ratings</a></li>
				<li><a href="viewer.html">Recommend</a></li>
				<li><a href=Contact.html>Contact</a></li>
				<li><a href=ticket.html>Wallet</a></li>
				<li><a href=admin_details.jsp>Admin</a></li>
				<li><a href=Logout.jsp>Logout</a></li>
			</ul>
			</div>
			<div class="title">
				<h1>MOVIES FOR YOU</h1>
			</div>
			
				
			
			
			<div class="tab2">
			<form name="f1" method="POST" action="search.jsp">
<table>
<tr>
<td>Search For Your Favourite Movie :</td>
<td><input type="text" name="MovieName"></td>
<td><input type="submit" value="Search"></td>



</tr>

</table>
				</form>
</div>			
		</header>			
		
</body>
</html>