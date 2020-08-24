<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">

<meta charset="UTF-8">
<title>환영합니다.</title>
<style type="text/css">

html,body {
    margin:0;
    padding:0;
    height:100%;

}
#container{
min-height: 100%;
position: relative;
}

#center{
padding-bottom: 30px;
padding-top:150px;
}

table{
   top : 300px;
   margin : 0 auto;
}
#signupdiv{
	width : 100%;
	text-align : center;
}
#signup{
	width : 20%;
	margin-top : 0.5%;
	margin-left : 40.5%;

}
</style>
<script type="text/javascript">
	$(function(){
		$("#checkid").click(function(){
			//이부분 ajax로 추후 구현
			alert("사용가능한 아이디 입니다.")
		})
	})
</script>
</head>
<body>
<div id="container">
<%@ include file="/common/header.jsp" %>
<div id="center">
  <fieldset>
   <form action = "signup.do" method = "post">
   <table>   
      <tr>
         <td>
            이름 :
         </td>
         <td colspan = "2">
            <input type="text" class="form-control" id = "name" name = "name" placeholder = "이름 입력">
         </td>
         <td></td>
      </tr>
      <tr>
         <td>
            아이디 :
         </td>
         <td>
            <input type="text" class="form-control" id = "id" name = "id" placeholder = "아이디 입력">
         </td>
         <td>
            <button type = "button" id = 'checkid' name = 'checkid' class = "btn btn-primary">아이디확인</button>
         </td>
      </tr>
      <tr>
         <td>
            비밀번호 :
         </td>
         <td colspan = "2">
            <input type="text" class="form-control" id = "password" name = "password" placeholder = "비밀번호입력">
         </td>
         <td>

         </td>
      </tr>
      <tr>
         <td>
            비밀번호 확인:
         </td>
         <td colspan = "2">
            <input type="text" class="form-control" id = "password2" name = "password2" placeholder = "비밀번호확인">
         </td>
         <td>

         </td>
      </tr>
      <tr>
         <td>
            전화번호:
         </td>
         <td colspan = "2">
            <input type="text" class="form-control" id = "password2" name = "password2" placeholder = "010-0000-0000">
         </td>
         <td>

         </td>
      </tr>
      <tr>
         <td>
            주소:
         </td>
         <td colspan = "2">
            <input type="text" class="form-control" id = "password2" name = "password2" placeholder = "주소">
         </td>
         <td>

         </td>
      </tr>
      <tr id = "check">
         <td>
         
         </td>
         <td>
            <button type = "button" id = 'checkaddress' name = 'checkaddress' class = "btn btn-primary">주소찾기</button>
         </td>
         <td>

         </td>
      </tr>
      <tr>
         <td colspan = '3'>
            
         </td>
         <td>
         </td>
         <td>

         </td>
      </tr>
   </table>
   <div id = "signupdiv">
			<button type="button" class="btn btn-primary btn-lg btn-block" id = "signup" name = "signup">가입하기</button>
   </div>
   <br>
   
   </form>
   </fieldset>

</div>
<%@ include file="/common/footer.jsp" %>
</div>

</body>
</html>