<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    

<%
	request.setCharacterEncoding("UTF-8");
	String sessionId = (String)session.getAttribute("sessionId");	
%>

<nav class="navbar navbar-expand navbar-dark bg-dark">
	<div class="container">							
		<div class="navbar-header">					 
			<a class="navbar-brand" href="${pageContext.request.contextPath}/welcome.jsp">HOME</a>
		</div>
		
		<!-- 네비게이션 바 요소를 추가등록 -->
		<div>
			<ul class="navbar-nav mr-auto">		
												
				<c:choose>						
					<c:when test="${empty sessionId }"> 
						<li class="nav-item"><a class="nav-link" href='<c:url value="loginMember.jsp" />'>로그인</a></li>
						<li class="nav-item"><a class="nav-link" href='<c:url value="addMember.jsp" />'>회원가입</a></li>
					</c:when>
					<c:otherwise> 
						<li style="padding-top:7px; color:white;">[<%=sessionId %> 님]</li>
						<li class="nav-item"><a class="nav-link" href='<c:url value="logoutMember.jsp" />'>로그아웃</a></li>
						<li class="nav-item"><a class="nav-link" href='<c:url value="UpdateMember.jsp" />'>회원 수정</a></li>
					</c:otherwise>
					
				</c:choose>
				
				<c:choose>
					<c:when test="${sessionId ne 'admin' }">
						<li class="nav-item"><a href="${pageContext.request.contextPath}/products.jsp" class="nav-link">상품목록</a></li>
					</c:when>
					<c:otherwise>
						<li class="nav-item"><a href="${pageContext.request.contextPath}/products.jsp" class="nav-link">상품목록</a></li>
						<li class="nav-item"><a href="${pageContext.request.contextPath}/addProduct.jsp" class="nav-link">상품등록</a></li>
						<li class="nav-item"><a href="${pageContext.request.contextPath}/editProduct.jsp?edit=update" class="nav-link">상품수정</a></li>
						<li class="nav-item"><a href="${pageContext.request.contextPath}/editProduct.jsp?edit=delete" class="nav-link">상품삭제</a></li>
					</c:otherwise>
				</c:choose>
				
			</ul>
		</div>
		
	</div>
</nav>