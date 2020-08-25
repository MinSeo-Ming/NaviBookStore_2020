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
   margin-left: 40%;
}

ul{
	list-style : none;
	margin-left : 36%;
}
ul>li{
	display : inline;
	padding : 4px;

}

.imgset{
	text-align : center;
}
.imgset>img{
	padding : 50px;
}
</style>
</head>
<body>
<div id="container">
<%@ include file="/common/header.jsp" %>
<div id="center">

<c:if test="${!empty msg}">
	<script>
	alert("${msg}");
	</script>
</c:if>

<fieldset>
<form action = "login.do" method = "post">
   <table>
      <tr>
         <td>
            <div class="form-group">   
                  <input type="text" class="form-control" id = "id" name = "id" placeholder = "Username">
             </div>
             <div class="form-group">      
                  <input type="password" class="form-control" id="password" name = "password" placeholder="Password">
             </div>
         </td>
         <td><input type="submit" class="btn btn-primary" value = "로그인"> </td>
      </tr>
   </table>
</form>

<ul>
	<li> <a href ="signup.do">회원가입</a></li>
	<li> <a href = "#">아이디찾기</a></li>
    <li><a href = "#">비밀번호찾기</a> </li>
</ul>




<div class = "imgset">
  	<img src = "${pageContext.request.contextPath}/resources/img/01.jpg" alt = "이미지1" width = "270px">
  	<img src = "${pageContext.request.contextPath}/resources/img/02.jpg" alt = "이미지2" width = "270px">
  	<img src = "${pageContext.request.contextPath}/resources/img/03.jpg" alt = "이미지3" width = "270px">
  	<img src = "${pageContext.request.contextPath}/resources/img/04.jpg" alt = "이미지4" width = "270px">
  	<img src = "${pageContext.request.contextPath}/resources/img/05.jpg" alt = "이미지5" width = "270px">
 
</div>

</fieldset>    
</div>
<%@ include file="/common/footer.jsp" %>
</div>

</body>
</html>