<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@page import="com.example.ums.entity.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	List<User> user = (List<User>) request.getAttribute("users");
	%>

	<table border="1px">
		<thead>
			<tr>
				<td>UserId</td>
				<td>Username</td>
				<td>Email</td>
				<td>Password</td>
				<td>Edit</td>
				<td>Delete</td>
			</tr>
		</thead>
		<%
		for (User users : user) {
		%>
		<tbody>
			<td><%=users.getUserId()%></td>
			<td><%=users.getUsername()%></td>
			<td><%=users.getEmail()%></td>
			<td><%=users.getPassword()%></td>
			<td><a href="update-user?user_id=<%=users.getUserId()%>">edit</a></td>
			<td><a href="delete-user?user_id=<%=users.getUserId()%>">
					remove </a></td>
		</tbody>
		<%
		}
		%>
	</table>
	<h2><a href="index.jsp">Back to Home Page</a> </h2>
</body>
</html>