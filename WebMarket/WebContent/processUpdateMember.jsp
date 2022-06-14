<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<%
	request.setCharacterEncoding("UTF-8");
	
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	String name = request.getParameter("name");
	String gender = request.getParameter("gender");
	
	String year = request.getParameter("birthyy");
	String month = request.getParameter("birthmm");
	String day = request.getParameter("birthdd");
	String birth = year +"/"+ month +"/"+ day;		
	
	String mail1 = request.getParameter("mail1");
	String mail2 = request.getParameter("mail2");
	String mail = mail1 +"@"+ mail2;					
	
	String phone = request.getParameter("phone");
	String address = request.getParameter("address");
%>  
   
<sql:setDataSource var="dataSource"
	url="jdbc:mysql://localhost:3306/marketdb?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC"
	driver="com.mysql.cj.jdbc.Driver"
	user="root"
	password="hope@153"/>   

<sql:update dataSource="${dataSource}" var="resultSet">
	update member set password=?, name=?, gender=?, birth=?, mail=?, phone=?, address=?  where id=?;
	<sql:param value="<%=password %>"/>
	<sql:param value="<%=name %>"/>
	<sql:param value="<%=gender %>"/>
	<sql:param value="<%=birth %>"/>
	<sql:param value="<%=mail %>"/>
	<sql:param value="<%=phone %>"/>
	<sql:param value="<%=address %>"/>
	<sql:param value="<%=id %>"/>
</sql:update>	
	
<c:if test="${resultSet >= 1}">
	<c:redirect url="resultMember.jsp?msg=0"></c:redirect>
</c:if>	