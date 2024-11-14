<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="add-user" method="post">
		<input type="text" placeholder="Enter Username" name="username">
		<input type="text" placeholder="Enter Email" name="email"> <input
			type="text" placeholder="Enter Password" name="password"> <input
			type="submit" value="Save">
	</form>
	<h2><a href="index.jsp">Back to Home Page</a> </h2>
</body>
</html>