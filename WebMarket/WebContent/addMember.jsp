<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>회원가입</title>
  <link rel="stylesheet" href="./resources/css/bootstrap.min.css">
</head>
<body>
	<jsp:include page="menu.jsp"/>
	
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-5">집사의 회원 가입</h1>
		</div>
	</div>
	
	<div class="container">
		<form action="processAddMember.jsp" name="newMember" class="form horizontal" method="post"
				onsubmit="return checkForm()">
			
			<div class="form-group row">
				<label class="col-sm-2">아이디</label>
				<div class="col-sm-3">
					<input name="id" type="text" class="form-control" placeholder="아이디">
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">비밀번호</label>
				<div class="col-sm-3">
					<input name="password" type="password" class="form-control" placeholder="비밀번호">
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">비밀번호 확인</label>
				<div class="col-sm-3">
					<input name="password_confirm" type="password" class="form-control" placeholder="비밀번호 확인">
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">고양이 이름</label>
				<div class="col-sm-3">
					<input name="name" type="text" class="form-control" placeholder="이름">
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">고양이 성별</label>
				<div class="col-sm-10">
					<input name="gender" type="radio" value="남"/>남
					<input name="gender" type="radio" value="여"/>여
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">고양이 생일</label>
				<div class="col-sm-4">
					<input name="birthyy" type="text" maxlength="4" placeholder="년도(4자리)" size="6">
					<select name="birthmm">
						<option value="">월</option>
						<option value="01">1</option>
						<option value="02">2</option>
						<option value="03">3</option>
						<option value="04">4</option>
						<option value="05">5</option>
						<option value="06">6</option>
						<option value="07">7</option>
						<option value="08">8</option>
						<option value="09">9</option>
						<option value="10">10</option>
						<option value="11">11</option>
						<option value="12">12</option>
					</select>
					<input type="text" name="birthdd" maxlength="2" placeholder="일" size="4">				
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">이메일</label>
				<div class="col-sm-10">
					<input name="mail1" type="text" maxlength="50">@
					<select name="mail2">
						<option>gmail.com</option>
						<option>naver.com</option>
						<option>애옹.com</option>
						<option>집사.com</option>
					</select>
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">전화번호</label>
				<div class="col-sm-5">
					<input name="phone" type="text" class="form-control" placeholder="전화번호">
				</div> 
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">주소</label>
				<div class="col-sm-5">
					<input name="address" type="text" class="form-control" placeholder="주소">
				</div> 
			</div>
			
			<div class="form-group row">
				<div class="col-sm-offset-2 col-sm-10">
					<input type="submit" class="btn btn-primary" value="가입" >
					<input type="reset" class="btn btn-primary" value="취소" >
				</div>
			</div>
			
		</form>
	</div>	
	
	
	<script type="text/javascript">
		function checkForm() {
			if(!document.newMember.id.value) {
				alert("아이디를 입력하세요!");
				return false;
			}
			if(!document.newMember.password.value) {
				alert("비밀번호를 입력하세요!");
				return false;
			}
			if(document.newMember.password.value != document.newMember.password_confirm.value) {
				alert("비밀번호를 동일하게 입력하세요!");
				return false;
			}
			if(!document.newMember.name.value) {
				alert("이름을 입력하세요!");
				return false;
			}
		}
	</script>	
</body>
</html>