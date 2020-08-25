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
	margin-left : 40.5%;<%@ page language="java" contentType="text/html; charset=UTF-8"
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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	
</style>
<script type="text/javascript">

function userCreate(){
	f.action="signup.do";
	f.method="post";
	f.submit();
}

let user_id
$(function(){
$("#checkid").click(function(){
	//이부분 ajax로 추후 구현
	//alert("사용가능한 아이디 입니다.");

	user_id =$('#id').val();
	$.ajax({
		url:"check_id.do",
		data:user_id ,
		dataType : "json",
		type : 'GET',
		contentType: "application/json; charset=UTF-8",
		success : function(data){//일단 내가 설정하기론 true false했음
			console.log("중복인가 아닌가 1 이면 중복 0은 아님"+data)
			
			if(data>0){
				alert("사용불가능한 아이디 입니다.")
				$("#id").text("사용중인 아이디 입니다! ");
				$("#id").css(color,red);
				$("#id").attr("disabled",true);
				
			}else if(data==0){
				if(user_id == ""){
					
					$('#id_check').text('아이디를 입력해주세요 :)');
					$('#id_check').css('color', 'red');
					$("#reg_submit").attr("disabled", true);
				}
				else{
					alert("사용가능한 아이디 입니다2.")
				}
			
			}else{alert("뭔가 잘못됨")}
			
		},//success
		 error : function() {
			console.log("실패");
		}//error
	});//ajax
	


	
});//checkid
});//fucntion


	

	
</script>
</head>
<body>
<div id="container">
<%@ include file="/common/header.jsp" %>
<div id="center">
  <fieldset>
   <form name ="f" action = "" method = "post">
   <table>   
      <tr>
         <td> 이름 :</td>
         <td colspan = "2">   <input type="text" class="form-control" id = "name" name = "username" placeholder = "이름 입력">   </td>
         <td></td>
      </tr>
      <tr>
         <td>          아이디 :    </td>
         <td>    <input type="text" class="form-control" id = "id" name = "userid" value = "${user.userid}"placeholder = "아이디 입력">     
         	<div class =result_check id =result_check></div>  </td>
         <td><button type = "button" id = 'checkid' name = 'checkid' class = "btn btn-primary">아이디확인</button></td>
      </tr>
      <tr>
         <td>
            비밀번호 :
         </td>
         <td colspan = "2">
            <input type="password" class="form-control" id = "userpwd" value = "${user.userpwd}" name = "userpwd" placeholder = "비밀번호입력">
         </td>
         <td>

         </td>
      </tr>
      <tr>
         <td>
            비밀번호 확인:
         </td>
         <td colspan = "2">
            <input type="password" class="form-control" id = "password2" name = "password2" placeholder = "비밀번호확인">
         </td>
         <td>

         </td>
      </tr>
      <tr>
         <td>
            전화번호:
         </td>
         <td colspan = "2">
            <input type="text" class="form-control" id = "password2" name = "phone" value = "${user.phone }"placeholder = "010-0000-0000">
         </td>
         <td>

         </td>
      </tr>
      <tr>
         <td>
            주소:
         </td>
         <td colspan = "2">
            <input type="text" class="form-control" id = "password2" name = "address" value = "${user.address }" placeholder = "주소">
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
			<button type="button" class="btn btn-primary btn-lg btn-block" id = "signup" name = "signup" onclick="userCreate()">가입하기</button>
   </div>
   <br>
   
   </form>
   </fieldset>

</div>
<%@ include file="/common/footer.jsp" %>
</div>

</body>
</html>

}
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	
</style>
<script type="text/javascript">

function userCreate(){
	f.action="signup.do";
	f.method="post";
	f.submit();
}

let user_id
$(function(){
$("#checkid").click(function(){
	//이부분 ajax로 추후 구현
	//alert("사용가능한 아이디 입니다.");

	user_id =$('#id').val();
	$.ajax({
		url:"check_id.do",
		data:user_id ,
		dataType : "json",
		type : 'GET',
		contentType: "application/json; charset=UTF-8",
		success : function(data){//일단 내가 설정하기론 true false했음
			console.log("중복인가 아닌가 1 이면 중복 0은 아님"+data)
			
			if(data>0){
				alert("사용불가능한 아이디 입니다.")
				$("#id").text("사용중인 아이디 입니다! ");
				$("#id").css(color,red);
				$("#id").attr("disabled",true);
				
			}else if(data==0){
				if(user_id == ""){
					
					$('#id_check').text('아이디를 입력해주세요 :)');
					$('#id_check').css('color', 'red');
					$("#reg_submit").attr("disabled", true);
				}
				else{
					alert("사용가능한 아이디 입니다2.")
				}
			
			}else{alert("뭔가 잘못됨")}
			
		},//success
		 error : function() {
			console.log("실패");
		}//error
	});//ajax
	


	
});//checkid
});//fucntion


	

	
</script>
</head>
<body>
<div id="container">
<%@ include file="/common/header.jsp" %>
<div id="center">
  <fieldset>
   <form name ="f" action = "" method = "post">
   <table>   
      <tr>
         <td> 이름 :</td>
         <td colspan = "2">   <input type="text" class="form-control" id = "name" name = "username" placeholder = "이름 입력">   </td>
         <td></td>
      </tr>
      <tr>
         <td>          아이디 :    </td>
         <td>    <input type="text" class="form-control" id = "id" name = "userid" value = "${user.userid}"placeholder = "아이디 입력">     
         	<div class =result_check id =result_check></div>  </td>
         <td><button type = "button" id = 'checkid' name = 'checkid' class = "btn btn-primary">아이디확인</button></td>
      </tr>
      <tr>
         <td>
            비밀번호 :
         </td>
         <td colspan = "2">
            <input type="password" class="form-control" id = "userpwd" value = "${user.userpwd}" name = "userpwd" placeholder = "비밀번호입력">
         </td>
         <td>

         </td>
      </tr>
      <tr>
         <td>
            비밀번호 확인:
         </td>
         <td colspan = "2">
            <input type="password" class="form-control" id = "password2" name = "password2" placeholder = "비밀번호확인">
         </td>
         <td>

         </td>
      </tr>
      <tr>
         <td>
            전화번호:
         </td>
         <td colspan = "2">
            <input type="text" class="form-control" id = "password2" name = "phone" value = "${user.phone }"placeholder = "010-0000-0000">
         </td>
         <td>

         </td>
      </tr>
      <tr>
         <td>
            주소:
         </td>
         <td colspan = "2">
            <input type="text" class="form-control" id = "password2" name = "address" value = "${user.address }" placeholder = "주소">
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
			<button type="button" class="btn btn-primary btn-lg btn-block" id = "signup" name = "signup" onclick="userCreate()">가입하기</button>
   </div>
   <br>
   
   </form>
   </fieldset>

</div>
<%@ include file="/common/footer.jsp" %>
</div>

</body>
</html>