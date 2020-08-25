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
<link href="https://fonts.googleapis.com/css2?family=Nanum+Myeongjo:wght@800&display=swap" rel="stylesheet">
<meta charset="UTF-8">
<title>환영합니다.</title>
<style type="text/css">

html,body {
    margin:0;
    padding:0;
    height:100%;
	background-image: url("${pageContext.request.contextPath}/resources/img/background.jpg");
	background-repeat: no-repeat;
	background-size: cover;
}
#container{
min-height: 100%;
position: relative;
}
h1{
position: absolute;
font-family: 'Nanum Myeongjo', serif;
text-align: center;
color: white;
text-shadow: 2px 2px 2px gray;
top: 32%;
left : 40%;
}
#center{
padding-bottom: 50px;
}
#search{
position: absolute;
top: 40%;
left: 30%;
width: 600px;
height: 60px;
color: gray;
}

</style>
</head>
<body>
<div id="container">
<%@ include file="common/header.jsp" %>
<div id="center">


 	<h1>일상에 품격을 더하다</h1>
 	
	<div id="search">
	<input type="text" value="검색어를 입력하세요." style="border: 0px; height: 100%; width:70%; color: gray;
	border-radius: 5px; background-color: white;" />
	<button type="submit"></button>
	</div>




</div>
<%@ include file="common/footer.jsp" %>
</div>

</body>
</html>