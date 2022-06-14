<%@page import="dao.ProductRepository"%>
<%@ page import="java.sql.*"%>
<%@page import="dto.Product"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" pageEncoding="UTF-8"
   contentType="text/html; charset=UTF-8"%>

<%@ page errorPage="exceptionNoProductId.jsp"%>
<jsp:useBean id="productDAO" class="dao.ProductRepository"
   scope="session" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
<title>상품 상세 정보</title>

<script type="text/javascript">
   function addToCart() {
      if (confirm("상품을 장바구니에 추가하시겠습니까?")) {
         document.addForm.submit();
      } else {
         document.addForm.reset();
      }
   }
</script>

</head>
<body>
   <jsp:include page="menu.jsp" />
   <%@ include file="dbconn.jsp"%>
    <%
   String id = request.getParameter("id");
    PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "SELECT * FROM product WHERE p_id = ?";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, id);
	rs = pstmt.executeQuery();
	while (rs.next()) {
   %>
   <div class="jumbotron product-title-jumbotron product-body">
      <div class="container">
         <h1 class="display-5">상품 정보</h1>
      </div>
   </div>
  
   <div class="container">
      <div class="row">
         <div class="col-md-5">
            
            
            <img src="D:/2113sbo/upload/<%=rs.getString("p_fileName")%>" style="width: 100%">
         </div>
         <div class="col-md-6">
            <h3><%=rs.getString("p_name")%></h3>
            <p><%=rs.getString("p_description")%></p>
            <p>
               <b>상품 코드 : </b><span class="badge badge-danger"><%=rs.getString("p_id")%></span>
            <p>
               <b>상품명</b> :
               <%=rs.getString("p_name")%></p>
            <p>
               <b>가격</b> :
               <%=rs.getString("p_unitPrice")%></p>
            <p>
               <b>상세정보</b> :
               <%=rs.getString("p_description")%></p>
            </p>
            <p>
               <b>제조사</b> :
               <%=rs.getString("p_Menufacturer")%></p>
            </p>
            <p>
               <b>분류</b> :
               <%=rs.getString("p_category")%></p>
            <p>
               <b>상태</b> :
               <%=rs.getString("p_condition")%></p>
            <h4><%=rs.getString("p_unitprice")%>원
            </h4>
            <p>
            <form name="addForm"
               action="./addCart.jsp?id=<%=rs.getString("p_id")%>" method="post">
               <a href="#" class="btn btn-info" onClick="addToCart()">상품주문
                  &raquo;</a> <a href="./cart.jsp" class="btn btn-warning">장바구니
                  &raquo;</a> <a href="./products.jsp" class="btn btn-secondary">상품목록
                  &raquo;</a>
            </form>
            <%
            }

            if (rs != null)
            rs.close();
            if (pstmt != null)
            pstmt.close();
            if (conn != null)
            conn.close();
            %>
         </div>
         <hr>
      </div>
   </div>
   <jsp:include page="footer.jsp" />
</body>
</html>