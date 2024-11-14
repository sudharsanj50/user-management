<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ page import="com.example.ums.entity.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
    User user= (User)request.getAttribute("user");
%>

	<form action="update-user" method="post">
		<input type="text" name="userId" readonly="readonly" value="<%= user.getUserId()%>">
		 <input type="text" name="username" value="<%= user.getUsername()%>"> 
		 <input type="text"  name="email" value="<%= user.getEmail()%>"> 
		 <input type="text"  name="password" value="<%= user.getPassword()%>"> 
		 <input type="submit" value="Update">
	</form>
	<h2><a href="index.jsp">Back </a> </h2>
</body>
</html>