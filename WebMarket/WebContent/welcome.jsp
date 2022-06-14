<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel = "stylesheet" href="./resources/css/bootstrap.min.css">
<title>Welcome</title>
</head> <%--메뉴--%>
	<jsp:include page="menu.jsp" />
<body>
	
	<%!
		String greeting = "Welcome to 애옹 월드";
		String tagline = "Welcome to 애옹 월드!";
	%>
	<div class="jumbotron">
		<div class="container"> 
			<h1 class="display-3"><%= greeting %> </h1>
			<img src="D:/2113sbo/upload/P1111.jpg" style="width: 80%">
		</div>
	</div>
	<main role = "main">
		<div class="container">
			<div class="text-center">
			 <h3> <%=tagline %></h3>
			</div>
			<hr>
		</div>
	</main>
	<%@include file = "footer.jsp" %>
</body>
</html>