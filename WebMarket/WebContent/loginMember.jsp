<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>로그인</title>
  <link rel="stylesheet" href="./resources/css/bootstrap.min.css">
</head>
<body>
	<jsp:include page="menu.jsp"/>
	
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-5">집사의 로그인</h1>
		</div>
	</div>
	
	<%! int cnt = 0;  %>
	
	
	<div class="container" align="center">
		<div class="col-md-4 col-md-offset-4">
			<h5 class="form-signin-heading">집사님, <br>로그인해주세요!</h3>
			<%
				String error = request.getParameter("error");	
				if(error != null) {							 
					
					if(cnt == 5) {
						out.println("<div class='alert alert-danger'>");
						out.println("5회 로그인 실패했습니다. 1분 후에 확인해 주세요!");
						out.println("</div>");
					}
					else {
						out.println("<div class='alert alert-danger'>");
						out.println("로그인 실패했습니다. 아이디와 비밀번호를 확인해 주세요!");
						out.println("</div>");
					}
				}
				cnt++;
			%>
			
			<form action="processLoginMember.jsp" method="post" class="form-signin">
				<div class="form-group">
					<label for="inputUserName" class="sr-only">User Name</label>
					<input type="text" class="form-control" placeholder="아이디" name="id" required autofocus>
				</div>
				<div class="form-group">
					<label for="inputUserName" class="sr-only">Password</label>
					<input type="password" class="form-control" placeholder="비밀번호" name="password" required>
				</div>
			
				<button class="btn btn-lg btn-success btn-block" type="submit">로그인</button>
			</form>
		</div>
	</div>
</body>
</html>