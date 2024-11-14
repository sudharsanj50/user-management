<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
      String msg= (String) request.getAttribute("errorMessage");
	String url=(String) request.getAttribute("redirectTo");
    %>
    
    <h1><%=msg %></h1>
   <a href="<%=url%>">back</a>
</body>
</html>