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
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

<meta charset="UTF-8">
<title>회원가입</title>
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

let user_id
function userCreate(){
	f.action="signup.do";
	f.method="post";
	f.submit();
}


$(function(){

	//비밀번호 확인
		$('#password2').blur(function(){
		   if($('#userpwd').val() != $('#password2').val()){
		    	if($('#password2').val()!=''){
			    alert("비밀번호가 일치하지 않습니다.");
		    	    $('#password2').val('');
		          $('#password2').focus();
		       }
		    }
		})  	   
	});




$(function(){
$("#checkid").click(function(){
	user_id =$('#id').val();
	$.ajax({
		url:'${pageContext.request.contextPath}/user/idCheck?userId='+user_id,
		type : 'GET',
		contentType: "application/json; charset=UTF-8",
		success : function(data){//일단 내가 설정하기론 true false했음
			console.log("중복인가 아닌가 1 이면 중복 0은 아님"+data)
			
			if(data>0){
				swal("Warning","사용 불가능한 아이디 입니다.","error")
				
			}else if(data==0){
				if(user_id == ""){
					swal("Info","아이디를 입력해 주세요.","info")
					
				}
				else{
					swal("YES", "사용가능한 아이디 입니다!", "success")
				}
			
			}
			
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


<div id="imgs">
		<img  id="title" alt="~~~" src="resources/img/littleT.png" >
	</div>
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
            <input type="text" class="form-control" id = "phone" name = "phone" value = "${user.phone }"placeholder = "010-0000-0000">
         </td>
         <td>

         </td>
      </tr>
      <tr>
         <td>
            주소:
         </td>
         <td colspan = "2">
            <input type="text" class="form-control" id = "address" name = "address" value = "${user.address }" placeholder = "주소">
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